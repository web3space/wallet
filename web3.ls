require! {
    \./networks.ls
    \prelude-ls : { obj-to-pairs, map, pairs-to-obj }
    \./guid.ls
    \./send-form.ls : { wait-form-result }
    \./change-amount.ls
    \./math.ls : { div, plus }
    \./networks.ls
    \../eth.ls : web3
}
build-send-transaction = (store, network)-> (tx, cb)->
    return cb "Transaction is required" if typeof! tx isnt \Object
    { to, data, decoded-data, value, gas } = tx
    return cb "Recepient (to) is required" if typeof! tx.to isnt \String
    return cb "Value is required" if typeof! value not in <[ String Number ]>
    id = guid!
    { current } = store
    { send } = current
    amount-obtain = \0
    amount-obtain-usd = \0
    amount-send-usd = \0
    amount-send-fee = \0
    amount-send-fee-usd = \0
    amount-send = value `div` (10 ^ network.decimals)
    send <<<< { 
        to, data, decoded-data, network, value, gas, id, amount-send,
        amount-obtain, amount-obtain-usd, amount-send-usd,
        amount-send-fee, amount-send-fee-usd
    }
    #console.log { send }
    change-amount store, amount-send
    current.page = \send
    err, data <- wait-form-result id
    return cb err if err?
    cb null, data
build-network-specific = (network)->
    | network.token is \eth => web3.eth
    | _ => {}
build-api = (store, it)->
    send-transaction = build-send-transaction store, it.1
    build-network-specific(it.1) <<<< { send-transaction } 
module.exports = (store)->
    result =
        networks 
            |> obj-to-pairs
            |> map -> [it.0, build-api(store, it)]
            |> pairs-to-obj
    #console.log result
    result <<<< { web3.utils }