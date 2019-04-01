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
    height: 600px
    position: relative
    color: white
    text-align: center
    max-width: 400px
    min-width: 300px
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