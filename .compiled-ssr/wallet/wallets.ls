require! {
    \react
    \./wallet.ls
    \prelude-ls : { map, take, drop }
    \./menu.ls
    \./seed.ls : { get }
    \./web3.ls
    \./navigate.ls
}
# .wallets621879901
#     $width: 400px
#     $height: 470px
#     $real-height: 300px
#     $cards-height: 296px
#     $pad: 20px
#     $radius: 15px    
#     height: $height
#     width: $width
#     >*
#         position: absolute
#         left: 0
#     >.wallets-container
#         $cards-pad: 5px
#         bottom: 5px
#         height: 296px
#         right: 0
#         margin: 0 $cards-pad
#         z-index: 2
#         border-radius: $radius
#         >*
#             width: $width - $cards-pad * 2
#         >.arrow
#             position: absolute
#             text-align: center
#             cursor: pointer
#             &.arrow-t
#                 top: 0
#                 margin-top: 10px
#             &.arrow-d
#                 bottom: 0
#                 margin-bottom: 10px
#                 transform: rotate(180deg)
#         padding-top: 40px
#         padding-bottom: 40px
#         background: rgba(white, 0.5)
#         >.wallets
#             overflow: hidden
#             border-radius: $radius $radius 0 0
#             height: $cards-height
arrow = \https://res.cloudinary.com/dfbhd7liw/image/upload/v1543595868/wallet/arrow.png
wallets = ({ store })->
    return null if not store.current.account?
    react.create-element 'div', {}, children = 
        menu { store }
        react.create-element 'div', { className: 'wallets wallets621879901' }, children = 
            react.create-element 'div', { className: 'wallets-container' }, children = 
                react.create-element 'div', { className: 'arrow arrow-t' }, children = 
                    react.create-element 'img', { src: "#{arrow}" }
                react.create-element 'div', { className: 'wallets wallets621879901' }, children = 
                    store.current.account.wallets |> drop 0 |> take 4 |> map wallet store
                react.create-element 'div', { className: 'arrow arrow-d' }, children = 
                    react.create-element 'img', { src: "#{arrow}" }
wallets.init = (store, cb)->
    return cb null if store.current.account?
    store.current.seed = get!
    err <- web3(store).refresh
    cb err
module.exports = wallets