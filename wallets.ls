require! {
    \react
    \./wallet.ls
    \prelude-ls : { map, take, drop }
    \./menu.ls
    \./seed.ls : { get }
    \./web3.ls
    \./navigate.ls
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
        width: $width - $cards-pad * 2
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
    padding-top: 40px
    padding-bottom: 40px
    background: rgba(white, 0.5)
    >.wallet-container
        overflow: hidden
        border-radius: $radius
        height: $cards-height
        width: 100%
arrow = \https://res.cloudinary.com/dfbhd7liw/image/upload/v1543595868/wallet/arrow.png
wallets = ({ store })->
    return null if not store.current.account?
    .pug
        menu { store }
        .wallets.pug
            .arrow.arrow-t.pug
                img.pug(src="#{arrow}")
            .wallet-container.pug
                store.current.account.wallets |> drop 0 |> take 4 |> map wallet store
            .arrow.arrow-d.pug
                img.pug(src="#{arrow}")
wallets.init = (store, cb)->
    return cb null if store.current.account?
    store.current.seed = get!
    err <- web3(store).refresh
    cb err
module.exports = wallets