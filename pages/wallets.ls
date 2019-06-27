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
}
.wallets
    @import scheme
    $real-height: 300px
    $cards-height: 296px
    $pad: 20px
    $radius: 15px    
    height: 373px
    padding: 0 5px
    box-sizing: border-box
    position: absolute
    left: 0
    bottom: 5px
    $cards-pad: 5px
    right: 0
    margin: 0 $cards-pad
    z-index: 2
    border-radius: $radius
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
    padding-top: 40px
    padding-bottom: 40px
    background: rgba(white, 0.5)
    .add-coin
        position: absolute
        left: 21px
        font-size: 29px
        display: inline-block
        line-height: 22px
    >.wallet-container
        overflow: hidden
        border-radius: $radius
        height: $cards-height
        width: 100%
arrow = \https://res.cloudinary.com/dfbhd7liw/image/upload/v1543595868/wallet/arrow.png
wallets = ({ store })->
    return null if not store.current.account?
    { wallets, go-up, can-up, go-down, can-down, add-coin } = wallets-funcs store
    .pug(key="wallets")
        menu { store }
        manage-account { store }
        add-coin-page { store }
        .wallets.pug(key="wallets-body")
            .arrow.arrow-t.pug(on-click=go-up class="#{can-up}" key="arrow-up")
                img.pug(src="#{arrow}")
            .wallet-container.pug(key="wallets-viewport")
                wallets |> map wallet store, wallets
            .arrow.arrow-d.pug(on-click=go-down class="#{can-down}" key="arrow-down")
                img.pug(src="#{arrow}")
                span.pug.add-coin(on-click=add-coin) +
wallets.init = (store, cb)->
    delete store.current.send?wallet
    store.current.send?tx-type = \regular
    return cb null if store.current.account?
    store.current.seed = get!
    refresh-timer = 30 * 60 * 1000
    err <- web3(store, { refresh-timer }).refresh
    cb err
module.exports = wallets