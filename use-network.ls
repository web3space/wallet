require! {
    \./refresh-account.ls
}
#
#
#
module.exports = (web3, store, network, cb)->
    return cb "Accept only mainnet and testnet" if network not in <[ mainnet testnet ]>
    return cb "Already on that network" if network is store.current.network
    store.current.network = network
    err <- refresh-account web3, store
    return cb err if err?
    cb null