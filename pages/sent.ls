require! {
    \react
    \../navigate.ls
    \./history.ls
    \../get-primary-info.ls
    \../get-lang.ls
}
.sent
    @import scheme
    text-align: center
    color: #5bb03e
    padding-top: 100px
    width: $width
    display: inline-block
    .icon
        text-align: center
        fill: white
        >svg
            margin: 20px 0
            display: inline-block
            width: 52px
            height: 52px
            zoom: 2
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
success-icon = (store)->
    style = get-primary-info store
    icon-style = 
        fill: style.app.icon
    svg.pug(version='1.1' xmlns='http://www.w3.org/2000/svg' x='0px' y='0px' viewbox='0 0 52 52' style=icon-style)
        g.pug
            path.pug(d='M26,0C11.664,0,0,11.663,0,26s11.664,26,26,26s26-11.663,26-26S40.336,0,26,0z M26,50C12.767,50,2,39.233,2,26S12.767,2,26,2s24,10.767,24,24S39.233,50,26,50z')
            path.pug(d='M38.252,15.336l-15.369,17.29l-9.259-7.407c-0.43-0.345-1.061-0.274-1.405,0.156c-0.345,0.432-0.275,1.061,0.156,1.406l10,8C22.559,34.928,22.78,35,23,35c0.276,0,0.551-0.114,0.748-0.336l16-18c0.367-0.412,0.33-1.045-0.083-1.411C39.251,14.885,38.62,14.922,38.252,15.336z')
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
        g.pug
module.exports = ({ store, web3t })->
    style = get-primary-info store
    text-style=
        color: style.app.icon
    button-style=
        background: style.app.icon
    go-home = ->
        navigate store, web3t, \wallets
    lang = get-lang store
    .pug.sent
        .pug.icon
            success-icon store
        .pug.text(style=text-style)
            span.pug Your 
            a.pug(href="#{store.current.last-tx-url}" target="_blank") #{lang.transaction ? 'transaction'}
            span.pug  #{lang.has-been-sent ? 'has been sent'}
        a.button.pug(on-click=go-home style=button-style) #{lang.home ? 'Home'}
        history { store, web3t }