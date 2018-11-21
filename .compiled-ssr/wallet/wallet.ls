require! {
    \react
    \./tools.ls : { cut, money }
    \prelude-ls : { each }
    \./web3.ls
    \react-copy-to-clipboard : { CopyToClipboard }
    \./copied-inform.ls
    \./copy.ls
}
# .wallet1874067166
#     padding: 10px
#     margin: 0 10px 3px 10px
#     text-align: left
#     background: white
#     color: black
#     border: 1px solid #dcd9d9
#     border-radius: 5px
#     >.wallet-header
#         img
#             max-width: 32px
#         .btn
#             border: 1px solid #75cee1
#             line-height: 17px
#             font-size: 14px
#             color: #75cee1
#             &.default
#                 background: #75cee1
#                 color: white
#             cursor: pointer
#             border-radius: 5px
#             width: 90px
#             height: 17px
#             display: inline-block
#             text-align: center
#             margin-bottom: 2px
#         .part
#             display: inline-block
#             vertical-align: top
#             text-align: left
#             &.center
#                 text-align: center
#             &.right
#                 text-align: right
#                 .account
#             width: 33.3333%
#             >.cell
#                 display: inline-block
#                 margin-right: 5px
#             .gray
#                 color: gray
#                 font-size: 12px
#     >.wallet-body
#         .center
#             text-align: center
#         .address
#             overflow: hidden
#             margin-top: 5px
#             background: black
#             border-radius: 5px
#             width: 100%
#             box-sizing: border-box
#             display: inline-block
#             text-align: center
#             background: #eae7e7
#             a
#                 text-decoration: none
#                 color: #4c4a4a
#                 font-size: 14px
#             >*
#                 display: inline-block
#                 vertical-align: top
#                 box-sizing: border-box
#             .address-area
#                 width: 90%
#                 overflow: hidden
#                 text-overflow: ellipsis
#                 padding: 3px
#             .copy-area
#                 width: 10%
#                 background: rgb(234, 231, 231)
#                 background: linear-gradient(to bottom, #eeeeee 1%,#cccccc 51%,#cccccc 100%)
#                 &:hover
#                     background: #cccccc
#                 border-left: 1px solid #CCC
#                 text-align: center
#                 padding: 5px
#                 line-height: 15px
#                 >*
#                     display: inline-block
#     >.wallet-footer
#         height: 43px
module.exports = (store, wallet)-->
    return null if not store? or not wallet?
    lweb3 = web3(store)
    #TODO refactor
    address-label = 
        | wallet.coin.token is \xem => \account
        | _ => \address
    send = (wallet, event)-->
        { send-transaction } = lweb3[wallet.coin.token]
        to = ""
        value = 0
        err <- send-transaction { to, value }
        console.log err
    usd-rate = wallet?usd-rate ? 0
    react.create-element 'div', { key: "#{wallet.coin.token}", className: 'wallet wallet1874067166' }, children = 
        react.create-element 'div', { className: 'wallet-header' }, children = 
            react.create-element 'div', { className: 'part left' }, children = 
                react.create-element 'div', { className: 'cell' }, children = 
                    react.create-element 'img', { src: "#{wallet.coin.image}" }
                react.create-element 'div', { className: 'cell' }, children = 
                    react.create-element 'div', {}, ' ' +  wallet.coin.token.to-upper-case! 
                    react.create-element 'div', { className: 'gray' }, ' $' +  money(usd-rate)
            react.create-element 'div', { className: 'part center' }, children = 
                react.create-element 'div', {}, ' ' +  cut(wallet.balance)  + ' '
                react.create-element 'div', { className: 'gray' }, ' $' +  money(wallet.balance-usd)
            react.create-element 'div', { className: 'part right' }, children = 
                react.create-element 'div', {}, children = 
                    react.create-element 'a', { on-click: send(wallet), className: 'btn default' }, ' Open'
        react.create-element 'div', { className: 'wallet-body' }, children = 
            react.create-element 'div', { className: 'group center' }, children = 
                react.create-element 'span', { className: 'address' }, children = 
                    react.create-element 'span', { className: 'address-area' }, children = 
                        react.create-element 'a', { target: "_blank", href: "#{wallet.network.api.url}/#{address-label}/#{wallet.address}" }, ' ' + wallet.address
                    react.create-element 'span', { className: 'copy-area' }, children = 
                        react.create-element CopyToClipboard, { text: "#{wallet.address}", on-copy: copied-inform(store) }, children = 
                            copy store