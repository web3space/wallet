require! {
    \react
    \./tools.ls : { cut, money }
    \prelude-ls : { each }
    \./web3.ls
    \react-copy-to-clipboard : { CopyToClipboard }
    \./copied-inform.ls
    \./copy.ls
    \./round5.ls
    \./get-primary-info.ls
    \./address-link.ls : { get-address-link, get-address-title }
}
#
# .wallet183800567
#     $cards-height: 324px
#     $pad: 20px
#     $radius: 15px 
#     position: relative
#     cursor: pointer
#     $card-height: 80px
#     height: $card-height
#     background: #fff
#     $mt: 20px
#     box-sizing: border-box
#     border-radius: $radius
#     margin-top: -$mt
#     overflow: hidden
#     transition: height .5s
#     box-shadow: 0 -10px 24px 0 rgba(0,0,0,0.05)
#     &:first-child
#         margin-top: 0
#         box-shadow: none
#     .pending
#         color: orange
#     &.over
#         background: #CCC
#     &.big
#         height: 135px
#     &.active
#         background: #fff
#         >.wallet-middle
#             display: inline-block
#     >.wallet-top
#         $card-top-height: 50px
#         width: 100%
#         color: #677897
#         font-size: 14px
#         text-align: center
#         >*
#             display: inline-block
#             box-sizing: border-box
#             vertical-align: top
#             padding-top: 10px
#             height: $card-top-height
#         >.top-left
#             width: 35%
#             @media screen and (max-width: 390px)
#                 width: 20%
#             text-align: right
#             >*
#                 display: inline-block
#             >.img
#                 line-height: $card-top-height
#                 >img
#                     vertical-align: top
#                     max-width: 50px
#                     $s: 35px
#                     border-radius: $s
#                     width: $s
#                     height: $s
#             >.info
#                 text-align: left
#                 margin-left: $pad / 2
#                 @media screen and (max-width: 390px)
#                     display: none
#                 >.name
#                 >.price
#                     font-weight: bold
#                     width: 82px
#                     overflow: hidden
#                     text-overflow: ellipsis
#         >.top-middle
#             width: 30%
#             @media screen and (max-width: 390px)
#                 width: 45%
#             text-align: center
#             >.balance
#                 &:last-child
#                     font-weight: bold
#                     font-size: 13px
#                 &.title
#                     @media screen and (max-width: 220px)
#                         display: none
#         >.top-right
#             width: 35%
#             text-align: right
#             padding-right: 21px
#             @media screen and (max-width: 390px)
#                 padding-right: 10px
#             >button
#                 outline: none
#                 margin-top: 5px
#                 cursor: pointer
#                 border: 0
#                 border-radius: 20px
#                 width: 75px
#                 height: 30px
#                 color: #6CA7ED
#                 text-transform: uppercase
#                 font-weight: bold
#                 background: #FFFFFF
#                 box-shadow: 0 2px 9px 0 rgba(184,184,184,0.50)
#                 transition: all .5s
#                 &:hover
#                     background: #7aa7f3
#                     color: white
#     >.wallet-middle
#         $card-top-height: 50px
#         width: 100%
#         color: #677897
#         font-size: 14px
#         margin-top: 10px
#         text-align: center
#         position: relative
#         >img
#             position: absolute
#             right: 20px
#             margin: 12px
#         >a
#             width: 90%
#             position: relative
#             border-radius: 20px
#             border: 0
#             background: #E6F0FF
#             box-sizing: border-box
#             vertical-align: top
#             text-align: center
#             padding-left: 20px
#             padding-right: 25px
#             height: $card-top-height - 14px
#             color: #677897
#             font-size: 14px
#             line-height: $card-top-height - 14px
#             display: inline-block
#             text-overflow: ellipsis
#             overflow: hidden
module.exports = (store, wallets, wallet)-->
    index = wallets.index-of wallet
    type = 
        | index is 0 => \top
        | index + 1 is wallets.length => \bottom
        | _ => \middle
    return null if not store? or not wallet?
    lweb3 = web3(store)
    send = (wallet, event)-->
        return alert "Not yet loaded" if not wallet?
        { send-transaction } = lweb3[wallet.coin.token]
        to = ""
        value = 0
        err <- send-transaction { to, value }
        console.log err if err?
    usd-rate = wallet?usd-rate ? 0
    expand = ->
        store.current.wallet-index = index
    active = if index is store.current.wallet-index then \active else ''
    big = 
        | index is store.current.wallet-index => \big
        | wallets.length < 3 => \big
        | _ => ""
    balance = round5(wallet.balance) + ' ' + wallet.coin.token.to-upper-case!
    pending = round5(wallet.pending-sent) + ' ' + wallet.coin.token.to-upper-case!
    button-style=
        color: get-primary-info(store).color
    react.create-element 'div', { on-click: expand, key: "#{wallet.coin.token}", className: "#{active + ' ' + big} wallet wallet183800567" }, children = 
        react.create-element 'div', { className: 'wallet-top' }, children = 
            react.create-element 'div', { className: 'top-left' }, children = 
                react.create-element 'div', { className: 'img' }, children = 
                    react.create-element 'img', { src: "#{wallet.coin.image}" }
                react.create-element 'div', { className: 'info' }, children = 
                    react.create-element 'div', { className: 'name' }, ' PRICE'
                    react.create-element 'div', { className: 'price' }, ' $' +  money(usd-rate)
            react.create-element 'div', { className: 'top-middle' }, children = 
                if +wallet.pending-sent is 0
                    react.create-element 'div', { className: 'balance title' }, ' Balance'
                react.create-element 'div', { className: 'balance' }, children = 
                    react.create-element 'div', {}, ' ' +  balance 
                    if +wallet.pending-sent >0
                        react.create-element 'div', { className: 'pending' }, children = 
                            react.create-element 'span', {}, ' -' + pending + ' pending'
            react.create-element 'div', { className: 'top-right' }, children = 
                react.create-element 'button', { on-click: send(wallet), style: button-style }, ' Open'
        react.create-element 'div', { className: 'wallet-middle' }, children = 
            react.create-element 'a', { target: "_blank", href: "#{get-address-link wallet}" }, ' ' + get-address-title wallet
            react.create-element CopyToClipboard, { text: "#{get-address-title wallet}", on-copy: copied-inform(store) }, children = 
                copy store