#web3@0.19.1
require! {
    \./plugin-loader.ls : { get-coins }
    \prelude-ls : { obj-to-pairs, map, pairs-to-obj, each, find }
    \./guid.ls
    \./send-form.ls : { wait-form-result }
    \./calc-amount.ls : { change-amount }
    \./math.ls : { div, plus }
    \protect
    \./navigate.ls
    \./use-network.ls
    \./api.ls : { get-balance }
    \./install-plugin.ls : { build-install, build-uninstall, build-install-by-name }
    \./refresh-account.ls : { background-refresh-account }
    \web3 : \Web3
    \../api/ethnamed.ls
    \./get-record.ls
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
    console.log \tx, tx
    return cb "Recipient (to) is required" if typeof! tx.to isnt \String
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
    wallet = store.current.account.wallets |> find (.coin.token is coin.token)
    send <<<< { 
        to, data, decoded-data, network, coin, wallet, value, gas, id, amount-send,
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
get-contract-instance = (web3, abi, addr)->
    | typeof! web3.eth.contract is \Function => web3.eth.contract(abi).at(addr)
    | _ => new web3.eth.Contract(abi, addr)
build-contract = (store, methods, coin)-> (abi)-> at: (address)->
    { send-transaction } = methods
    network = coin[store.current.network]
    web3 = new Web3!
    web3.set-provider(new web3.providers.HttpProvider(network.api.web3-provider))
    web3.eth.send-transaction = ({ value, data, to }, cb)->
        send-transaction { to, data, value }, cb
    get-contract-instance web3, abi, address
build-network-ethereum = (store, methods, coin)->
    { send-transaction, get-balance } = methods
    contract = build-contract store, methods, coin
    { send-transaction, get-balance, contract } 
build-other-networks = (store, methods, coin)->
    { send-transaction, get-balance } = methods
    contract = ->
        throw "Not Implemented For this network"
    { send-transaction, get-balance, contract } 
build-network-specific = (store, methods, coin)->
    builder =
        | coin.token in <[ eth ]> => build-network-ethereum
        | _ => build-other-networks
    builder store, methods, coin
build-api = (store, coin)->
    send-transaction = build-send-transaction store, coin
    get-balance = build-get-balance store, coin
    methods = { send-transaction, get-balance }
    build-network-specific store, methods, coin
build-use = (web3, store)->  (network)->
    <- use-network web3, store, network
get-apis = (cweb3, store)->
    get-coins!
        |> map -> [it.token, build-api(store, it)]
        |> pairs-to-obj
clear-api = (cweb3, name)-->
    delete cweb3[name]
refresh-apis = (cweb3, store)->
    (refresh-apis.prev ? []) |> each clear-api cweb3
    apis = get-apis cweb3, store
    cweb3 <<<< apis
    refresh-apis.prev = Object.keys apis
setup-refresh-timer = ({ refresh-timer, refresh-balances })->
    return if typeof! refresh-timer isnt \Number
    clear-timeout setup-refresh-timer.timer
    setup-refresh-timer.timer = set-timeout refresh-balances, refresh-timer
build-get-account-name = (cweb3, naming)-> (store, cb)->
    record = get-record store
    err, data <- naming.whois record
    return cb err if err?
    cb null, data
module.exports = (store, config)->
    refresh-timer = config?refresh-timer
    cweb3 = {}
    use = build-use cweb3, store
    install = build-install cweb3, store
    uninstall = build-uninstall cweb3, store
    install-by-name = build-install-by-name cweb3, store
    naming = ethnamed cweb3
    get-account-name = build-get-account-name cweb3, naming
    refresh-balances = (cb)->
        setup-refresh-timer { refresh-timer, refresh-balances }
        err <- background-refresh-account cweb3, store
        cb? null
    setup-refresh-timer { refresh-timer, refresh-balances }
    refresh = (cb)->
        refresh-apis cweb3, store
        refresh-balances cb
    set-theme = (it, cb)->
        return cb "support only dark an light" if it not in <[ dark light ]>
        store.theme = it
        cb null
    set-lang = (it, cb)->
        return cb "support only en, ru" if it not in <[ en ru ua ]>
        store.lang = it
        cb null
    refresh-apis cweb3, store
    web3 = new Web3!
    cweb3 <<<< { web3.utils, use, refresh, install, uninstall, install-by-name, naming, get-account-name, set-theme, set-lang }
    cweb3