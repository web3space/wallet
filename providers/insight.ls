require! {
    \moment
    \prelude-ls : { map, foldl, any, each }
    \superagent : { get, post } 
    \../math.ls : { plus, minus, div }
    \bitcoinjs-lib : BitcoinLib
}
extend = (add, json)--> json <<< add
get-outputs = ({ network, address} , cb)-->
    { url } = network.api
    body <- get "#url/api/addr/#{address}/utxo" .then
    body.text 
        |> JSON.parse
        |> each -> it.value = it.satoshis
        |> map extend { network, address }
        |> -> cb null, it
export create-transaction = ({ network, sender, recepient, amount, amount-fee}, cb)->
    err, outputs <-! get-outputs { network, sender.address}
    return cb err if err?
    return cb 'Not Enough Funds (Unspent Outputs)' if outputs.length is 0
    is-no-value =
        outputs |> p.find (-> !it.value?)
    return cb 'Each output should have a value' if is-no-value
    total = 
        outputs 
            |> p.map (.value)
            |> p.sum
    return cb 'Total is NaN' if isNaN total
    tx = new BitcoinLib.TransactionBuilder network
    rest = total `minus` amount `minus` amount-fee
    tx.add-output recepient, amount
    tx.add-output sender.address, rest
    apply = (output, i)->
        tx.add-input output.txid, output.vout
    sign = (output, i)->
        key = BitcoinLib.ECPair.fromWIF(from.private-key, network)
        tx.sign i, key  
    outputs.for-each apply
    outputs.for-each sign
    rawtx = tx.build!.to-hex!
    cb null, { rawtx }
export push-tx = ({ network, rawtx } , cb)-->
    { url } = network.api
    body <-! post "#url/api/tx/send", { rawtx } .then
    cb body
export get-balance = ({ address, network } , cb)->
    return cb "Url is not defined" if not network?api?url?
    err, data <-! get "#{network.api.url}/api/addr/#{address}/balance" .end
    return cb err if err? or data.text.length is 0
    num = data.text `div` 100000000
    cb null, num
transform-tx = (net, t)-->
    same-value = (out)->
        parse-float(out.value `minus` t.value-out) is 0
    network = net.token 
    tx = t.txid 
    time = t.time 
    amount = t.value-out
    fee = t.fees ? 0
    to = t.vout?filter?(same-value)?map(-> it.script-pub-key?addresses?0)?0
    url = "#{net.api.url}/tx/#{tx}"
    { network, tx, amount, fee, time, url, to }
export get-transactions = ({ network, address}, cb)->
    return cb "Url is not defined" if not network?api?url?
    err, data <-! get "#{network.api.url}/api/txs/?address=#{address}" .end
    return cb err if err?
    txs = 
        JSON.parse(data.text).txs |> map transform-tx network
    cb null, txs