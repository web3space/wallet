require! {
    \react
    \prelude-ls : { filter }
    \whitebox
    \./tools.ls : { cut, money }
    \./new-account.ls
    \./calc-wallet.ls
    \./naming.ls
    \./seed.ls
    \./refresh-wallet.ls
}
{ get-container } = whitebox
.menu
    margin-top: 9px
    .box-container
        margin: 0 10px 3px 10px
        .box
            padding: 10px
            background: white
            width: 100%
            box-sizing: border-box
            display: inline-block
            border-radius: 5px
            color: black
            .balance
                font-weight: bold
                color: black
    textarea, input
        border-radius: 5px
        background: #fbfafa
        color: #4c4a4a
        padding: 3px 10px
        font-size: 15px
    textarea
        width: 260px
        height: 50px
        resize: none
        border: 1px solid #b1afaf
    input
        height: 23px
        width: 150px
        border: 0
        margin: 0px 2px
    button
        outline: none
        margin-top: 5px
        width: 100px
        cursor: pointer
        height: 20px
        border: 0
        background-color: #76CEE1
        &:hover
            background-color: #76CEE1 + 10
        border-radius: 100px
    ul
        list-style: none
        padding: 0
        li 
            display: inline-block
            color: gray
            cursor: pointer
            padding: 0 5px
            &.active
                border: 1px solid gray
                border-radius: 5px
state =
    timeout: null
module.exports = ({ store })->
    return null if not store?
    { current, accounts } = store
    refresh = ->
        refresh-wallet store, ->
    active-page = (page)->
        if current.page is page then \active
    choose-account = (selected, event)-->
        current.account <<< selected
    manage-accounts = (event)->
        current.page = \accounts
    select-page = (name, event)-->
        current.page = name
    pages =
        * \wallets
        * \history
    create-account = ->
        current.account = new-account current.seed
        calc-wallet store
    change-seed = (event)->
        state.timeout = clear-timeout state.timeout
        current.seed = event.target.value
        state.timeout = set-timeout create-account, 2000
    save-seed = ->
        seed.set current.seed
        current.saved-seed = yes
    edit-seed = ->
        current.saved-seed = no
    aside.pug.menu
        .pug.box-container
            switch current.saved-seed
                case no
                    .pug.box
                        .pug.title Secret Text
                        textarea.pug(on-change=change-seed value="#{current.seed}" placeholder="Secret words")
                        .pug
                            button.pug(on-click=save-seed) Save
                case yes
                    .pug.box
                        .pug
                            button.pug(on-click=edit-seed) Edit seed
        naming { store }
        .pug.box-container
            if store.current.refreshing is no
                .pug.box 
                    .pug.title Balance
                    .pug.balance $ #{money current.balance-usd}
                    button.pug 
                        i.zmdi.zmdi-reload.pug(on-click=refresh)
            else
                .pug.box 
                    .pug.title Loading...
                    .pug.balance $ #{money current.balance-usd}