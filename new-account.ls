require! {
    \whitebox
    \./networks.ls
    \prelude-ls : { obj-to-pairs, pairs-to-obj, map }
    \mobx : { toJS }
}
{ get-fullpair-by-index, generate-wallet, generate-keys } = whitebox
import-master = (mnemonic)->
    keys = generate-keys mnemonic
    { mnemonic, keys.address, keys.private-key }
module.exports = (mnemonic="")->
    master = import-master mnemonic 
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
    generate-coin-wallet = ([name, network])->
        index = 1
        balance = "..."
        balance-usd = "..."
        usd-rate = "..."
        wallet = get-fullpair-by-index master.mnemonic, index, network
        wallet <<< { network, balance, balance-usd, usd-rate, master.mnemonic }
    wallets = 
        networks 
            |> obj-to-pairs 
            |> map generate-coin-wallet
    { master.mnemonic, wallets, master.address, master.private-key }