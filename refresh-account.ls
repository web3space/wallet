require! {
    \./new-account.ls
    \./refresh-wallet.ls
    \mobx : { toJS }
}
export refresh-account = (web3, store, cb)-->
    err, account <- new-account store, store.current.seed
    return cb err if err?
    store.current.account = account
    err, name <- web3.get-account-name store
    store.current.account.account-name = 
        | not err? => name 
        | _ => "Anonymous"
    account-name = store.current.account.account-name
    store.current.nickname = "" if account-name isnt "Anonymous"
    store.current.nicknamefull = account-name if account-name isnt "Anonymous"
    console.log \nicknamefull, store.current.nicknamefull
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