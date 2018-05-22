require! {
    \qs : { stringify }
    \prelude-ls : { filter, map, foldl, each }
    \../math.ls : { plus, minus, times, div }
    \superagent : { get }
    \web3 : \Web3
    \ethereumjs-tx : \Tx
    \ethereumjs-util : { BN }
}
configs =
    ropsten:
        infura-url: \https://ropsten.infura.io/mOzQovwJN6Kis3TMGltN
        explorer-url: \https://ropsten.etherscan.io
        api-url: \http://api-ropsten.etherscan.io/api
    mainnet:
        infura-url: \https://infura.io/mOzQovwJN6Kis3TMGltN
        explorer-url: \https://etherscan.io
        api-url: \https://api.etherscan.io/api
{ infura-url, explorer-url, api-url } = configs[\ropsten]
dec = 1000000000000000000
web3 = new Web3(new Web3.providers.HttpProvider(infura-url))
to-hex = -> \0x + it.to-string(16)
transform-tx = (t)->
    network = \eth 
    tx = t.hash
    amount = t.value `div` dec
    time = t.time-stamp
    url = "#{explorer-url}/tx/#{tx}"
    fee = t.cumulative-gas-used `times` t.gas-price `div` dec
    { network, tx, amount, fee, time, url, t.from, t.to }
export get-transactions = ({ address }, cb)->
    #http://api.etherscan.io/api?module=account&action=txlist&address=0xddbd2b932c763ba5b1b7ae3b362eac3e8d40121a&startblock=0&endblock=99999999&sort=asc&apikey=YourApiKeyToken
    module = \account
    action = \txlist
    startblock = 0
    endblock = 99999999
    sort = \asc
    apikey = \4TNDAGS373T78YJDYBFH32ADXPVRMXZEIG
    query = stringify { module, action, apikey, address, sort, startblock, endblock }
    err, resp <-! get "#{api-url}?#{query}" .end
    return cb err if err?
    result = JSON.parse resp.text
    txs = 
        result.result |> map transform-tx
    cb null, txs
export create-transaction = ({sender, recepient, amount, amount-fee, data} , cb)-->
    private-key = new Buffer sender.private-key.replace(/^0x/,''), \hex
    err, nonce <-! web3.eth.get-transaction-count sender.address, \pending
    to-wei = -> it `times` dec
    send-amount = amount `minus` amount-fee
    #err, gas-price <-! web3.eth.get-gas-price
    gas-price = 0.000000004
    gas-estimate = amount-fee `div` gas-price
    tx = new Tx do
        nonce: to-hex nonce
        gas-price: to-hex to-wei gas-price
        value: to-hex send-amount
        gas: to-hex to-wei gas-estimate
        to: recepient
        from: sender.address
        data: data
    tx.sign private-key
    rawtx = \0x + tx.serialize!.to-string \hex
    cb null, { rawtx }
export check-decoded-data = (decoded-data, data)->
    return no if not (decoded-data ? "").length is 0
    return no if not (data ? "").length is 0
export push-tx = ({ rawtx } , cb)-->
    console.log rawtx
    err, txid <- web3.eth.send-signed-transaction rawtx
    console.log err, txid
    cb err, txid
export get-balance = ({address} , cb)->
    module = \account
    action = \balance
    tag = \latest
    apikey = \4TNDAGS373T78YJDYBFH32ADXPVRMXZEIG
    query = stringify { module, action, tag, apikey, address }
    err, resp <- get "#{api-url}?#{query}" .end
    result = JSON.parse resp.text
    return cb err if err?
    balance = result.result `div` dec
    cb null, balance