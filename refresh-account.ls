require! {
    \./new-account.ls
    \./refresh-wallet.ls
}
module.exports = (web3, store, cb)->
    err, account <- new-account store, store.current.seed
    return cb err if err?
    store.current.account = account
    refresh-wallet web3, store, cb