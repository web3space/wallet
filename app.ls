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
    overflow: hidden
    @import scheme
    background: $primary
    height: 100vh
    position: relative
    color: white
    text-align: center
    width: 100vw
    .content
        max-width: 450px
        display: inline-block
        width: 100%
module.exports = ({ store, reload })->
    return null if not store?
    window <<<< { store }
    current-page =
        pages[store.current.page]
    theme = get-primary-info(store)
    console.log theme
    style =
        background-color: theme.app.background
    .pug
        description store
        .app.pug(key="content" style=style)
            modal-control store
            confirmation-control store
            copy-message store
            current-page { store }