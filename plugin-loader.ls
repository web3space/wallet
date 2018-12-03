require! {
    \prelude-ls : { filter }
    \./install-plugin.ls : { get-install-list }
}
common = 
    * require \./plugins/btc-coin.ls
    * require \./plugins/ltc-coin.ls
    * require \./plugins/eth-coin.ls
    * require \./plugins/dash-coin.ls
    * require \./plugins/xem-coin.ls
export get-coins = ->
    base =
        common
            |> filter (.type is \coin)
            |> filter (.enabled)
    installed =
        get-install-list! |> filter (.type is \coin)
    base ++ installed