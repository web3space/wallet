require! {
    \./api.ls : { get-balance }
    \./math.ls : { times, plus }
    \prelude-ls : { find, map, pairs-to-obj }
    \./plugin-loader.ls : { get-coins }
    \./workflow.ls : { run, task }
    \./round5.ls
}
calc-wallet = (store, cb)->
    return cb "Store is required" if not store?
    { wallets } = store.current.account
    { rates } = store
    state =
        balance-usd: 0
    coins = get-coins!
    build-loader = (wallet)-> task (cb)->
        { token } = wallet.coin
        #wallet.balance = \...
        #wallet.balance-usd = 0
        token = wallet.coin.token.to-lower-case!
        usd-rate = rates[token] ? \..
        wallet.usd-rate =
            | usd-rate is \.. => \..
            | _ => round5 usd-rate
        coin =
            coins |> find (.token is wallet.coin.token)
        return cb "Coin Not Found" if not coin?
        coin.wallet = wallet
        err, balance <- get-balance { wallet.address, wallet.network, token }
        return cb err if err?
        wallet.balance = balance
        wallet.balance-usd =
            | usd-rate is \.. => \..
            | _ => balance `times` usd-rate
        state.balance-usd =
            | usd-rate is \.. => \..
            | _ => state.balance-usd `plus` wallet.balance-usd
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