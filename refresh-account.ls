require! {
    \./new-account.ls
    \./refresh-wallet.ls
    \mobx : { toJS }
}
export refresh-account = (web3, store, cb)-->
    err, account <- new-account store, store.current.seed
    return cb err if err?
    store.current.account = account
    refresh-wallet web3, store, cb
export background-refresh-account = (web3, store, cb)->
    store.current.refreshing = yes
    bg-store = toJS store
    err <- refresh-account web3, bg-store
    store.current.refreshing = no
    return cb err if err?
    store.rates = bg-store.rates
    store.current.account = bg-store.current.account
    store.current.balance-usd = bg-store.current.balance-usd
    cb null