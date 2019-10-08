require! {
    \mobx-react : { observer }
    \mobx : { observable }
    \react
    \./pages.ls
    \./description.ls
    \./browser/window.ls
    \./copy-message.ls
    \./modal.ls : { modal-control }
    \./get-primary-info.ls
    \./pages/confirmation.ls : { confirmation-control }
}
.app
    *
        user-select: none
    user-select: none
    overflow: hidden
    @import scheme
    background: $primary
    height: 86vh
    min-height: 400px
    position: relative
    color: white
    text-align: center
    width: 100vw
    .content
        max-width: 450px
        display: inline-block
        width: 100%
module.exports = ({ store, web3t })->
    return null if not store?
    current-page =
        pages[store.current.page]
    theme = get-primary-info(store)
    style =
        background-color: theme.app.background
    .pug
        description store
        .app.pug(key="content" style=style)
            modal-control store, web3t
            confirmation-control store, web3t
            copy-message store, web3t
            current-page { store, web3t }