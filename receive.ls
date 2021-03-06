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
        canvas
            width: 60%
            height: auto
    .bottom
        color: white
        cursor: pointer
        padding: 10px
qrcode = (wallet)->
    return null if not wallet?address?
    QRCode.pug(value="#{wallet.address}" size="256")
module.exports = ({ store })->
    { send } = store.current
    { wallet } = send.coin
    back = ->
        navigate store, \send
    .pug.receive
        .receive-body.pug
            qrcode wallet
        .pug.bottom
            a.pug(on-click=back) Back