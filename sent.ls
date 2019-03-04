require! {
    \react
    \./navigate.ls
    \./history.ls
}
.sent
    @import scheme
    text-align: center
    color: #5bb03e
    padding-top: 100px
    background: white
    width: $width
    .icon
        img
            height: 75px
    .text
    a.button
        display: inline-block
        background-color: #76CEE1
        color: white
        border-radius: 100px
        padding: 3px 10px
        box-sizing: border-box
        margin-top: 20px
        line-height: 21px
        cursor: pointer
        height: 25px
        width: 75px
module.exports = ({ store })->
    go-home = ->
        navigate store, \wallets
    .pug.sent
        .pug.icon
            img.pug(src="./res/sent.png")
        .pug.text 
            span.pug Your 
            a.pug(href="#{store.current.last-tx-url}" target="_blank") transaction
            span.pug  has been sent
        a.button.pug(on-click=go-home) Home
        history { store }