require! {
    \./providers/waves.ls
    \./providers/eth.ls
    \./providers/insight.ls
    \./providers/xem.ls
    \./providers/erc20.ls
    \mobx : { toJS }
    \prelude-ls : { pairs-to-obj, obj-to-pairs }
}
providers = { eth, waves, insight , xem, erc20 }
action = (func)-> (config, cb)->
    #console.log { config }
    return cb "token is not defined" if not config?token?
    provider = providers[config.token] ? insight 
    func provider, config, cb
export calc-fee = action (provider, config, cb)->
    provider.calc-fee config, cb
export get-keys = action (provider, config, cb)->
    provider.get-keys config, cb
export get-balance = action (provider, config, cb)->
    provider.get-balance config, cb
export get-transactions = action (provider, config, cb)->
    #console.log provider, config
    provider.get-transactions config, cb
export create-transaction = action (provider, config, cb)->
    provider.create-transaction config, cb
export push-tx = action (provider, config, cb)->
    provider.push-tx config, cb