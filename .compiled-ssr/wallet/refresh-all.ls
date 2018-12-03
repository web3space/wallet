require! {
    \./refresh-account.ls
    \./web3.ls
}
module.exports = (store, cb)->
    <- refresh-account web3(store), store
    cb null if typeof! cb is \Function