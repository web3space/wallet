require! {
    \prelude-ls : { filter }
}
plugins = 
    * require \./plugins/btc-coin.ls
    * require \./plugins/ltc-coin.ls
    * require \./plugins/eth-coin.ls
    #* require \./plugins/xmr-coin.ls
    #* require \./plugins/zec-coin.ls
    #* require \./plugins/waves-coin.ls
    * require \./plugins/dash-coin.ls
    * require \./plugins/xem-coin.ls
    * require \./plugins/sprkl-coin.ls
export coins =
    plugins 
        |> filter (.type is \coin)
        |> filter (.enabled)