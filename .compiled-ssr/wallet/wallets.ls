require! {
    \react
    \./wallet.ls
    \prelude-ls : { map, take, drop }
    \./menu.ls
    \./seed.ls : { get }
    \./web3.ls
    \./navigate.ls
}
# .wallets-1312736338
#     @import scheme
#     $real-height: 300px
#     $cards-height: 296px
#     $pad: 20px
#     $radius: 15px    
#     height: 373px
#     padding: 0 5px
#     box-sizing: border-box
#     position: absolute
#     left: 0
#     bottom: 5px
#     $cards-pad: 5px
#     right: 0
#     margin: 0 $cards-pad
#     z-index: 2
#     border-radius: $radius
#     >*
#         width: $width - $cards-pad * 2
#     >.arrow
#         position: absolute
#         text-align: center
#         cursor: pointer
#         &.arrow-t
#             top: 0
#             margin-top: 10px
#         &.arrow-d
#             bottom: 0
#             margin-bottom: 10px
#             transform: rotate(180deg)
#         &:not(.true)
#             visibility: hidden
#     padding-top: 40px
#     padding-bottom: 40px
#     background: rgba(white, 0.5)
#     >.wallet-container
#         overflow: hidden
#         border-radius: $radius
#         height: $cards-height
#         width: 100%
arrow = \https://res.cloudinary.com/dfbhd7liw/image/upload/v1543595868/wallet/arrow.png
wallets = ({ store })->
    return null if not store.current.account?
    { list } = store.current
    max = 4
    can-up = store.current.list > 0
    can-down = store.current.list < store.current.account.wallets.length / max
    go-up = ->
        return if not can-up
        store.current.list -= max
        store.current.wallet-index = 0
    go-down = ->
        return if not can-down
        store.current.list += max
        store.current.wallet-index = 0
    wallets = 
        store.current.account.wallets 
            |> drop list 
            |> take max
    react.create-element 'div', { key: "wallets" }, children = 
        menu { store }
        react.create-element 'div', { key: "wallets-body", className: 'wallets wallets-1312736338' }, children = 
            react.create-element 'div', { on-click: go-up, key: "arrow-up", className: "#{can-up} arrow arrow-t" }, children = 
                react.create-element 'img', { src: "#{arrow}" }
            react.create-element 'div', { key: "wallets-viewport", className: 'wallet-container' }, children = 
                wallets |> map wallet store, wallets
            react.create-element 'div', { on-click: go-down, key: "arrow-down", className: "#{can-down} arrow arrow-d" }, children = 
                react.create-element 'img', { src: "#{arrow}" }
wallets.init = (store, cb)->
    return cb null if store.current.account?
    store.current.seed = get!
    err <- web3(store).refresh
    cb err
module.exports = wallets