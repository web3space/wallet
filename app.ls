require! {
    \mobx-react : { observer }
    \mobx : { observable }
    \react
    \./pages.ls
    \whitebox
    \./description.ls
    \./browser/window.ls
    \./copy-message.ls
    \./modal.ls : { modal-control }
    \./get-primary-info.ls
}
.app
    overflow-y: auto
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
{ get-container } = whitebox
module.exports = ({ store, reload })->
    return null if not store?
    window <<<< { store }
    current-page =
        pages[store.current.page]
    style =
        background-color: get-primary-info(store).color
    .pug
        description store
        .app.pug(key="content" style=style)
            modal-control store
            copy-message store
            current-page { store }