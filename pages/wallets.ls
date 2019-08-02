require! {
    \react
    \./wallet.ls
    \prelude-ls : { map, take, drop }
    \./menu.ls
    \../seed.ls : { get }
    \../web3.ls
    \../wallets-funcs.ls
    \./manage-account.ls
    \./add-coin.ls : add-coin-page
    \../get-lang.ls
    \../get-primary-info.ls
}
.wallets
    @import scheme
    $real-height: 300px
    $cards-height: 296px
    $pad: 20px
    $radius: 15px    
    height: 395px
    box-sizing: border-box
    position: relative
    left: 0
    bottom: 5px
    $cards-pad: 5px
    right: 0
    margin: 0 $cards-pad
    z-index: 2
    >*
        width: 100%
    >.arrow
        position: absolute
        text-align: center
        cursor: pointer
        &.arrow-t
            top: 0
            margin-top: 10px
        &.arrow-d
            bottom: 0
            margin-bottom: 10px
            transform: rotate(180deg)
        &:not(.true)
            >.arrow-d
                visibility: hidden
        >.arrow-container
            display: inline-block
            width: 100%
            max-width: 450px
            position: relative
    padding-top: 10px
    >.wallet-container
        overflow: hidden
        overflow-y: auto
        border-radius: 5px
        height: 315px
        max-width: 450px
        border-top: 1px solid #213040
        display: inline-block
arrow = \https://res.cloudinary.com/dfbhd7liw/image/upload/v1543595868/wallet/arrow.png
wallets = ({ store })->
    return null if not store.current.account?
    { wallets, go-up, can-up, go-down, can-down } = wallets-funcs store
    style = get-primary-info store
    border-style =
        border: "1px solid #{style.app.border}"
    .pug(key="wallets")
        menu { store }
        manage-account { store }
        add-coin-page { store }
        .wallets.pug(key="wallets-body")
            .wallet-container.pug(key="wallets-viewport" style=border-style)
                wallets |> map wallet store, wallets
wallets.init = (store, cb)->
    delete store.current.send?wallet
    store.current.send?tx-type = \regular
    return cb null if store.current.account?
    store.current.seed = get!
    refresh-timer = 30 * 60 * 1000
    err <- web3(store, { refresh-timer }).refresh
    cb err
module.exports = wallets