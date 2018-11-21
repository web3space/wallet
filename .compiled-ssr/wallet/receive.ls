require! {
    \react
    \qrcode.react : QRCode
    \./navigate.ls
}
# .receive-1708377641
#     text-align: center
#     .receive-body
#         padding: 50px 20px
#         background: white
#     .bottom
#         color: gray
#         cursor: pointer
#         padding: 10px
module.exports = ({ store })->
    { send } = store.current
    { wallet } = send.coin
    back = ->
        navigate store, \send
    react.create-element 'div', { className: 'receive receive-1708377641' }, children = 
        react.create-element 'div', { className: 'receive-body' }, children = 
            react.create-element QRCode, { value: "#{wallet.address}", size: "256" }
        react.create-element 'div', { className: 'bottom' }, children = 
            react.create-element 'a', { on-click: back }, ' Back'