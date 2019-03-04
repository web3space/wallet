require! {
    \prelude-ls : { filter }
    \./install-plugin.ls : { get-install-list }
}
common =
    * require \../web3t/plugins/btc-coin.ls
    * require \../web3t/plugins/ltc-coin.ls
    * require \../web3t/plugins/eth-coin.ls
    * require \../web3t/plugins/dash-coin.ls
    * require \../web3t/plugins/usdt-coin.ls
    * require \../web3t/plugins/gobyte-coin.ls
    * require \../web3t/plugins/eos-coin.ls
export get-coins = ->
    base =
        common
            |> filter (.type is \coin)
            |> filter (.enabled)
    installed =
        get-install-list! |> filter (.type is \coin)
    installed ++ base