require! {
    \react
}
.confirmation
    position: absolute
    background: rgba(black, 0.8)
    height: 100vh
    top: 0
    left: 0
    color: black
    width: 100%
    box-sizing: border-box
    >.confirmation-body
        background: white
        text-align: center
        >.header
            padding: 5px 0
            font-size: 17px
            font-weight: bold
            color: gray
            margin-bottom: 10px
        >.text
            padding: 10px 0
        >.buttons
            text-align: center
            >.button
                display: inline-block
                cursor: pointer
                width: 100px
                border-radius: 10px
                padding: 0
                border: 1px solid #CCC
                margin: 15px 5px
export confirmation-modal = (store)->
    console.log \confirmation-modal, store.current.confirmation
    return null if typeof! store.current.confirmation isnt \String
    confirm = ->
        store.current.confirmation = yes
        state.callback yes if typeof! state.callback is \Function
        state.callback = null
    cancel = ->
        store.current.confirmation = no
        state.callback no if typeof! state.callback is \Function
        state.callback = null
    .pug.confirmation
        .pug.confirmation-body
            .pug.header Confirmation
            .pug.text #{store.current.confirmation}
            .pug.buttons
                .pug.button(on-click=confirm) Confirm
                .pug.button(on-click=cancel) Cancel
state=
    callback: null
export confirm = (store, text, cb)->
    console.log \set-confirmation, text
    store.current.confirmation = text
    state.callback = cb