require! {
    \react
    \superagent : { get }
    \../navigate.ls
    \../get-primary-info.ls
    \../web3.ls
    \../get-lang.ls
}
.terms
    text-align: center
    .terms-body
        >.header
            font-size: 19px
            padding: 10px
        display: inline-block
        max-width: 250px
        >.buttons
            color: inherit
            text-align: center
            button
                margin-top: 10px
                border-radius: 5px
                border: 1px solid #CCC
                display: inline-block
                background: transparent
                color: inherit
                font-size: 15px
                padding: 5px 20px
                cursor: pointer
        textarea
            padding: 10px
            width: 100%
            box-sizing: border-bx
            height: 300px
            resize: no
            border-radius: 5px
            outline: none
terms = ({ store })->
    lang = get-lang store
    info = get-primary-info store
    style=
        background: info.app.background
        color: info.app.text
    accept = ->
        navigate store, \:init
        <- web3(store).refresh
    .pug.terms(style=style)
        .pug.terms-body
            .pug.header Terms of Use
            textarea.pug(value="#{store.terms}" style=style)
            .pug.buttons
                span.pug #{lang.terms ? 'Please accept terms of use'}
                button.pug(on-click=accept) #{lang.accept ? 'Accept'}
terms.init = (store, cb)->
    err, res <- get \https://raw.githubusercontent.com/web3space/wallet/master/TERMS.md .end
    return cb err if err?
    store.terms = res.text
    cb null
module.exports = terms