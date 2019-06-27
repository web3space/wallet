require! {
    \prelude-ls : { filter }
    \./install-plugin.ls : { get-install-list }
    \./browser/window.ls
}
gobyte = require \../web3t/plugins/gobyte-coin.ls
stt = require \../web3t/plugins/stt-coin.json
#qiwi = require \../web3t/plugins/qiwi-coin.ls
#ym = require \../web3t/plugins/ym-coin.ls
qiwi_rs = require \../web3t/plugins/qiwi-rs.ls
ym_rs = require \../web3t/plugins/ym-rs.ls
usd_ac_rs = require \../web3t/plugins/usd-ac-rs.ls
query-related = (token, coin)->
    #console.log token, window.location.search.index-of("plugin=#{token}"), coin
    if window.location.search.index-of("plugin=#{token}") > -1 then coin
common =
    * query-related \gbx         , gobyte
    * query-related \stt         , stt
    #* query-related \qiwi       , qiwi
    * query-related \qiwi_rs     , qiwi_rs
    * query-related \ym_rs       , ym_rs
    * query-related \usd_ac_rs   , usd_ac_rs
    * require \../web3t/plugins/usdt-coin.ls
    * require \../web3t/plugins/btc-coin.ls
    * require \../web3t/plugins/eth-coin.ls
    * require \../web3t/plugins/dash-coin.ls
    * require \../web3t/plugins/ltc-coin.ls
    * require \../web3t/plugins/etc-coin.ls
    #* require \../web3t/plugins/eos-coin.ls
export get-coins = ->
    base =
        common
            |> filter (?)
            |> filter (.type is \coin)
            |> filter (.enabled)
    installed =
        get-install-list! |> filter (.type is \coin)
    installed ++ base