require! {
    \./plugin-loader.ls : { coins }
    \prelude-ls : { obj-to-pairs, map, pairs-to-obj }
    \./guid.ls
    \./send-form.ls : { wait-form-result }
    \./change-amount.ls
    \./math.ls : { div, plus }
    \../eth.ls : web3
    \protect
    \./navigate.ls
    \./use-network.ls
    \./api.ls : { get-balance }
    \./build-install.ls
}
state =
    time: null
titles = <[ name@email.com name.ethnamed.io domain.com ]>
show-cases = (store, [title, ...titles], cb)->
    return cb null if not title?
    store.current.send-to-mask = title
    <- set-timeout _, 1000
    <- show-cases store, titles
    return cb null
build-get-balance = (store, coin)-> (cb)->
    network = coin[store.current.network]
    { wallet } = coin
    get-balance { coin.token, network, wallet.address }, cb
build-send-transaction = (store, coin)-> (tx, cb)->
    network = coin[store.current.network]
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
    propose-escrow = no
    amount-send = value `div` (10 ^ network.decimals)
    send <<<< { 
        to, data, decoded-data, network, coin, value, gas, id, amount-send,
        amount-obtain, amount-obtain-usd, amount-send-usd,
        amount-send-fee, amount-send-fee-usd, propose-escrow
    }
    change-amount store, amount-send
    #current.page = \send
    #window.scroll-to 0, 0
    navigate store, \send
    helps = titles ++ [network.mask]
    show-cases store, helps, ->
    err, data <- wait-form-result id
    return cb err if err?
    cb null, data
build-network-specific = (coin)->
    | coin.token is \eth => web3.eth
    | _ => {}
build-api = (store, it)->
    send-transaction = build-send-transaction store, it
    get-balance = build-get-balance store, it
    build-network-specific(it) <<<< { send-transaction, get-balance } 
build-use = (web3, store)->  (network)->
    <- use-network web3, store, network
module.exports = (store)->
    cweb3 = do
        result =
            coins
                |> map -> [it.token, build-api(store, it)]
                |> pairs-to-obj
        use = build-use web3, store
        result <<<< { web3.utils, use }
        protect result
    cweb3.use = build-use cweb3, store
    cweb3.install = build-install cweb3, store
    cweb3