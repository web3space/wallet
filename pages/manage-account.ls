require! {
    \react
    \../menu-funcs.ls 
    \./naming.ls
    \../get-primary-info.ls
    \../get-lang.ls
}
.manage-account
    @import scheme
    @keyframes bounceIn
        from
            opacity: 0
            transform: scale3d(0.8, 0.8, 0.8)
        to
            opacity: 1
            transform: scale3d(1, 1, 1)
    position: fixed
    width: 100%
    top: 0
    z-index: 999
    height: 100%
    min-height: 100vh
    padding-top: 5%
    box-sizing: border-box
    padding: 10px
    background: rgba(black, 0.8)
    >.account-body
        max-width: 600px
        display: inline-block
        overflow: hidden
        animation-duration: 0.5s
        animation-name: bounceIn
        background: white
        width: 100%
        margin-top: 5vh
        margin-bottom: 25vh
        padding-bottom: 50px
        border-radius: 5px
        position: relative
        max-height: 65vh
        box-sizing: border-box
        >.title
            position: absolute
            z-index: 999
            box-sizing: border-box
            top: 0
            width: 100%
            color: gray
            font-size: 22px
            padding: 10px
            height: 60px
            background: black
            >.close
                position: absolute
                padding: 5px 10px
                font-size: 30px
                right: 0
                top: 0
                cursor: pointer
                &:hover
                    color: #CCC
        >.settings
            padding-top: 60px
            overflow-y: auto
            height: calc(65vh - 60px)
            .title
                color: $primary
                font-size: 12px
                a
                    color: #ee8791
            input
                border-radius: 5px
            textarea
                border-radius: 5px
            input, textarea
                outline: none
                margin-bottom: 3px
                border: 0px
                padding: 3px 10px
                box-sizing: border-box
            button
                background-color: $primary
                border: 1px solid $primary
                border-radius: 5px
                color: white
                padding: 5px 24px
                cursor: pointer
                outline: none
                &:hover
                    background: transparent
                    color: $primary
            textarea
                width: 244px
                height: 37px
                resize: none
                font-size: 12px
            .switch-account
                color: #8e8e93
                font-size: 12px
                margin-top: 5px
                .bold
                    font-weight: bold
                .button
                    background: #8e8e93
                    width: 16px
                    height: 16px
                    display: inline-block
                    color: white
                    border-radius: 5px
                    margin: 0 5px
                    cursor: pointer
                    &:hover
                        background: gray
        .bold
            color: #f0c16b
        .section
            border-bottom: 1px solid rgba(240, 237, 237, 0.16)
            &.last
                border-bottom: 0
            padding: 10px
            .title
                padding: 2px
            .description
                padding: 7px
                font-size: 12px
                color: #b0aeae
            .content
        .change-index
            width: 80px
            padding: 1px
            text-align: center
switch-account = (store)->
    {  account-left, account-right, change-account-index } = menu-funcs store
    style = get-primary-info store
    input-style =
        background: style.app.input
        color: style.app.text
        border: "1px solid #{style.app.border}"
    .pug.switch-account
        span.pug Account Index:
        span.pug.button(on-click=account-left) <
        span.pug.bold
            input.pug.change-index(value="#{store.current.account-index}" style=input-style on-change=change-account-index)
        span.pug.button(on-click=account-right) >
manage-account = (store)->
    { current, generate, enter-pin, cancel-try, edit-seed, save-seed, change-seed, export-private-key } = menu-funcs store
    style = get-primary-info store
    lang = get-lang store
    input-style =
        background: style.app.input
        color: style.app.text
    .pug
        .pug.section
            .pug.title #{lang.secret-phrase ? 'Secret Phrase'}
            .pug.description #{lang.secret-phrase-warning ? 'You are responsible for keeping this phrase safe. In case of loss of this phrase, we will not be able to help you restore it.'}
            .pug.content
                switch
                    case current.try-edit-seed is yes
                        .pug.box
                            .pug
                                input.pug(on-change=enter-pin value="#{current.pin}" style=input-style placeholder="#{lang.enter-pin ? 'Enter PIN'}")
                            .pug    
                                button.pug(on-click=cancel-try) #{lang.cancel}
                    case current.saved-seed is no
                        .pug.box
                            .pug.title 
                                span.pug #{lang.secret-phrase ? 'Secret Phrase'}
                                a.pug.generate(on-click=generate) (generate)
                            textarea.pug(on-change=change-seed value="#{current.seed}" placeholder="#{lang.secret-phrase ? 'Secret Phrase'}")
                            .pug
                                button.pug(on-click=save-seed) #{lang.save}
                    case current.saved-seed is yes
                        .pug
                            button.pug(on-click=edit-seed) #{lang.edit-secret ? 'Edit Secret'}
        .pug.section
            .pug.title #{lang.your-nickname ? 'Your Nickname'}
            .pug.description #{lang.your-nickname-info ? 'You are able to attach nickname, email or phone number to your account and share it with friends. They will use your nick to resolve your crypto-address'}
            .pug.content
                naming { store }
        .pug.section
            .pug.title #{lang.switch-account-index ? 'Switch Account Index'}
            .pug.description 
                span.pug.bold #{lang.for-advanced-users ? 'For advanced users only'}.
                span.pug #{lang.switch-account-info ? 'You could have a lot of unique addresses by switching account index. By default, you are given an index of 1, but you can change it in range 0 - 2,147,483,647'}
            .pug.content
                switch-account store
        .pug.section.last
            .pug.title #{lang.export-private-key ? 'Export PRIVATE KEY'}
            .pug.description
                span.pug.bold #{lang.for-advanced-users ? 'For advanced users only'}
                span.pug #{lang.export-private-key-warning ? 'Please never do it in case when you do not understand exact reason of this action and do not accept risks'}.
            .pug.content
                button.pug(on-click=export-private-key) #{lang.show-secret ? 'Show Secret'}
module.exports = ({ store } )->
    return null if store.current.manage-account isnt yes
    { close-account } = menu-funcs store
    style = get-primary-info store
    account-body-style = 
        background: style.app.background
        border-bottom: "1px solid #{style.app.border}"
    lang = get-lang store
    .pug.manage-account
        .account-body.pug(style=account-body-style)
            .pug.title(style=account-body-style)
                .pug Manage Account
                .pug.close(on-click=close-account) ×
            .pug.settings
                manage-account store