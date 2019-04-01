require! {
    \react
    \qrcode.react : QRCode
    \./navigate.ls
}
# .receive-1401936116
#     text-align: center
#     .receive-body
#         padding: 50px 20px
#         background: white
#         canvas
#             width: 60%
#             height: auto
#     .bottom
#         color: white
#         cursor: pointer
#         padding: 10px
qrcode = (wallet)->
    return null if not wallet?address?
    react.create-element QRCode, { value: "#{wallet.address}", size: "256" }
module.exports = ({ store })->
    { send } = store.current
    { wallet } = send.coin
    back = ->
        navigate store, \send
    react.create-element 'div', { className: 'receive receive-1401936116' }, children = 
        react.create-element 'div', { className: 'receive-body' }, children = 
            qrcode wallet
        react.create-element 'div', { className: 'bottom' }, children = 
            react.create-element 'a', { on-click: back }, ' Back'