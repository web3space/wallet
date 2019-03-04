require! {
    \../web3t/providers/waves.ls
    \../web3t/providers/eth.ls
    \../web3t/providers/insight.ls
    \../web3t/providers/xem.ls
    \../web3t/providers/erc20.ls
    \../web3t/providers/omni.ls
    \../web3t/providers/eos.ls
    \../web3t/providers/stellar.ls
    \../web3t/providers/tron.ls
    \mobx : { toJS }
    \prelude-ls : { pairs-to-obj, obj-to-pairs }
}
providers = { eth, waves, insight , xem, erc20, omni, eos, stellar, tron }
action = (func)-> (config, cb)->
    return cb "provider is not defined" if not config?network?api?provider?
    provider = providers[config.network.api.provider] ? insight 
    func provider, config, cb
export calc-fee = action (provider, config, cb)->
    provider.calc-fee config, cb
export get-keys = action (provider, config, cb)->
    provider.get-keys config, cb
export get-balance = action (provider, config, cb)->
    provider.get-balance config, cb
export get-transactions = action (provider, config, cb)->
    provider.get-transactions config, cb
export create-transaction = action (provider, config, cb)->
    provider.create-transaction config, cb
export push-tx = action (provider, config, cb)->
    provider.push-tx config, cb