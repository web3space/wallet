require! {
    \./calc-wallet.ls
    \./transactions.ls : { load-all-transactions }
    \./load-rates.ls
}
refresh-wallet = (store, cb)->
    store.current.refreshing = yes
    calc-wallet store
    <- load-rates store
    <- load-all-transactions store
    calc-wallet store
    store.current.refreshing = no
    cb null
module.exports = refresh-wallet