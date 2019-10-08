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
        min-width: 250px
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
            height: 150px
            resize: no
            border-radius: 5px
            outline: none
terms = ({ store, web3t })->
    lang = get-lang store
    info = get-primary-info store
    style=
        background: info.app.background
        color: info.app.text
    accept = ->
        navigate store, web3t, \:init
        <- web3t.refresh
    .pug.terms(style=style)
        .pug.terms-body
            .pug.header Terms of Use
            textarea.pug(value="#{store.terms}" style=style)
            .pug.buttons
                .pug #{lang.terms ? 'Please accept terms of use'}
                button.pug(on-click=accept) #{lang.accept ? 'Accept'}
terms.init = ({ store }, cb)->
    err, res <- get \https://raw.githubusercontent.com/web3space/wallet/master/TERMS.md .end
    return cb err if err?
    store.terms = res.text
    cb null
module.exports = terms