require! {
    \react
    \qrcode.react : QRCode
    \../navigate.ls
    \../get-primary-info.ls
}
.receive
    text-align: center
    .receive-body
        padding: 20px 20px
        canvas
            width: 60%
            height: auto
qrcode = (store)->
    { send } = store.current
    { wallet } = send.coin
    info = get-primary-info store
    return null if not wallet?address?
    QRCode.pug(value="#{wallet.address}" size="256" bgColor="#{info.color}" fgColor='#afc1fa')
module.exports = ({ store })->
    .pug.receive
        .receive-body.pug
            qrcode store