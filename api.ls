require! {
    \./providers/waves.ls
    \./providers/eth.ls
    \./providers/insight.ls
    \mobx : { toJS }
    \prelude-ls : { pairs-to-obj, obj-to-pairs }
}
providers = { eth, waves }
action = (func)-> (config, cb)->
    return cb "network.token is not defined" if not config.network?token?
    provider = providers[config.network.token] ? insight 
    func provider, config, cb
export get-balance = action (provider, config, cb)->
    provider.get-balance config, cb
export get-transactions = action (provider, config, cb)->
    provider.get-transactions config, cb
export create-transaction = action (provider, config, cb)->
    provider.create-transaction config, cb
export push-tx = action (provider, config, cb)->
    provider.push-tx config, cb