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
    $cards-pad: 15px
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
wallets = ({ store, web3t })->
    return null if not store.current.account?
    { wallets, go-up, can-up, go-down, can-down } = wallets-funcs store, web3t
    style = get-primary-info store
    border-style =
        border: "1px solid #{style.app.border}"
        background: "#{style.app.input}99"
    .pug(key="wallets")
        menu { store, web3t }
        manage-account { store, web3t }
        add-coin-page { store, web3t }
        .wallets.pug(key="wallets-body")
            .wallet-container.pug(key="wallets-viewport" style=border-style)
                wallets |> map wallet store, web3t, wallets
wallets.init = ({ store, web3t }, cb)->
    #console.log \wallets, { store, web3t }
    delete store.current.send?wallet
    store.current.send?tx-type = \regular
    return cb null if store.current.account?
    store.current.seed = get!
    err <- web3t.init
    #console.log err
    cb null
wallets.focus = ({ store, web3t }, cb)->
    <- set-timeout _, 100
    err <- web3t.refresh
    cb err
module.exports = wallets