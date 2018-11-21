require! {
    \react
    \qrcode.react : QRCode
    \./navigate.ls
}
.receive
    text-align: center
    .receive-body
        padding: 50px 20px
        background: white
    .bottom
        color: gray
        cursor: pointer
        padding: 10px
module.exports = ({ store })->
    { send } = store.current
    { wallet } = send.coin
    back = ->
        navigate store, \send
    .pug.receive
        .receive-body.pug
            QRCode.pug(value="#{wallet.address}" size="256")
        .pug.bottom
            a.pug(on-click=back) Back