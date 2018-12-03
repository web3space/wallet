require! {
    \./plugin-loader.ls : { get-coins }
    \prelude-ls : { obj-to-pairs, pairs-to-obj, map }
    \mobx : { toJS }
    \./api.ls : { get-keys }
}
module.exports = (store, mnemonic="", cb)->
    #master = import-master mnemonic 
    #return null if not rates['USDT-ETH']?
    #final-rates =
    #    rates
    #        |> toJS
    #        |> obj-to-pairs 
    #        |> map -> [it.0.replace(/-ETH/, '').to-lower-case!, it.1]
    #        |> -> it ++ [[\eth, 1]]
    #        |> pairs-to-obj
    #round5 = (value)->
    #   [head, dec] = value.split(\.)
    #    "#{head}.#{dec.substr 0, 5}"
    #in-usd = ({token})->
    #    rate =  1 `div ` final-rates[token] `times` final-rates[\usdt]
    #    round5 rate
    generate-coin-wallet = (coin, cb)->
        network = coin[store.current.network]
        index = 1
        err, wallet <- get-keys { index, network, mnemonic, coin.token }
        return cb err if err?
        balance = \...
        balance-usd = \...
        usd-rate = \...
        wallet <<< { coin, network, balance, balance-usd, usd-rate, mnemonic }
        cb null, wallet
    generate-coin-wallets = ([coin, ...rest], cb)->
        return cb null, [] if not coin?
        err, wallet <- generate-coin-wallet coin
        return cb err if err?
        err, wallets <- generate-coin-wallets rest
        return cb err if err?
        all = [wallet] ++ wallets
        cb null, all
    coins = get-coins!
    err, wallets <- generate-coin-wallets coins
    cb err, { mnemonic, wallets }