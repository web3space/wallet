require! {
    \react
    \../menu-funcs.ls 
    \./naming.ls
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
    position: absolute
    width: 100%
    top: 0
    z-index: 999
    height: 100%
    padding-top: 5%
    box-sizing: border-box
    padding: 10px
    background: rgba(black, 0.3)
    >.account-body
        overflow-y: scroll
        animation-duration: 0.5s
        animation-name: bounceIn
        background: white
        width: 100%
        height: 95%
        margin-top: 5%
        border-radius: 10px
        >.title
            color: gray
            font-size: 22px
            padding: 10px
            position: relative
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
            .title
                color: $primary
                font-size: 12px
                a
                    color: #ee8791
            input
                border-radius: 25px
            textarea
                border-radius: 7px
            input, textarea
                outline: none
                margin-bottom: 3px
                border: 1px solid #dedcdc
                padding: 3px 10px
                box-sizing: border-box
            button
                background-color: $primary
                border: 1px solid $primary
                border-radius: 50px
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
                    border-radius: 16px
                    margin: 0 5px
                    cursor: pointer
                    &:hover
                        background: gray
        .bold
            color: #f0c16b
        .section
            border-bottom: 1px solid #f0eded
            padding: 10px 0
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
    .pug.switch-account
        span.pug Account Index:
        span.pug.button(on-click=account-left) <
        span.pug.bold
            input.pug.change-index(value="#{store.current.account-index}" on-change=change-account-index)
        span.pug.button(on-click=account-right) >
manage-account = (store)->
    { current, generate, enter-pin, cancel-try, edit-seed, save-seed, change-seed, export-private-key } = menu-funcs store
    .pug
        .pug.section
            .pug.title Secret Phrase
            .pug.description You are responsible for keeping this phrase safe. In case of loss of this phrase, we will not be able to help you restore it.
            .pug.content
                switch
                    case current.try-edit-seed is yes
                        .pug.box
                            .pug
                                input.pug(on-change=enter-pin value="#{current.pin}" placeholder="Enter PIN")
                            .pug    
                                button.pug(on-click=cancel-try) Cancel
                    case current.saved-seed is no
                        .pug.box
                            .pug.title 
                                span.pug Secret Text
                                a.pug.generate(on-click=generate) (generate)
                            textarea.pug(on-change=change-seed value="#{current.seed}" placeholder="Secret words")
                            .pug
                                button.pug(on-click=save-seed) Save
                    case current.saved-seed is yes
                        .pug
                            button.pug(on-click=edit-seed) Edit Secret
        .pug.section
            .pug.title Your Nickname
            .pug.description You are able to attach nickname, email or phone number to your account and share it with friends. They will use your nick to resolve your crypto-address
            .pug.content
                naming { store }
        .pug.section
            .pug.title Switch Account Index
            .pug.description 
                span.pug.bold For advanced users only.
                span.pug You could have a lot of unique addresses by switching account index. By default, you are given an index of 1, but you can change it in range 0 - 2,147,483,647
            .pug.content
                switch-account store
        .pug.section
            .pug.title Export PRIVATE KEY
            .pug.description
                span.pug.bold For advanced users only.
                span.pug Please never do it in case when you do not understand exact reason of this action and do not accept risks.
            .pug.content
                button.pug(on-click=export-private-key) Show Secret
module.exports = ({ store } )->
    return null if store.current.manage-account isnt yes
    { close-account } = menu-funcs store
    .pug.manage-account
        .account-body.pug
            .pug.title 
                .pug Manage Account
                .pug.close(on-click=close-account) ×
            .pug.settings
                manage-account store