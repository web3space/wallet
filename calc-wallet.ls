require! {
    \./api.ls : { get-balance }
    \./math.ls : { times, plus }
    \prelude-ls : { find, map, pairs-to-obj }
    \./plugin-loader.ls : { get-coins }
    \./workflow.ls : { run, task }
}
round5 = (value)->
    return \... if not value?
    [head, dec] = value.to-string!.split(\.)
    return head if not dec?
    "#{head}.#{dec.substr 0, 5}"
calc-wallet = (store, cb)->
    return cb "Store is required" if not store?
    { wallets } = store.current.account
    { rates } = store
    state =
        balance-usd: 0
    coins = get-coins!
    build-loader = (wallet)-> task (cb)->
        { token } = wallet.coin
        wallet.balance = \...
        wallet.balance-usd = 0
        err, balance <- get-balance { wallet.address, wallet.network, token }
        return cb err if err?
        wallet.balance = balance
        token = wallet.coin.token.to-lower-case!
        usd-rate = rates[token]
        wallet.balance-usd = balance `times` usd-rate
        state.balance-usd = state.balance-usd `plus` wallet.balance-usd
        store.current.balance-usd = round5 state.balance-usd
        wallet.usd-rate = round5 usd-rate
        coin = 
            coins |> find (.token is wallet.coin.token)
        return cb "Coin Not Found" if not coin?
        coin.wallet = wallet
        cb!
    loaders =
        wallets |> map build-loader
    tasks =
        loaders 
            |> map -> [loaders.index-of(it).to-string!, it]
            |> pairs-to-obj
    <- run [tasks] .then
    return cb err if err?
    store.current.balance-usd = round5 state.balance-usd
    cb null
module.exports = calc-wallet