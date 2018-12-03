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
}
.app
    height: 600px
    position: relative
    color: white
    text-align: center
    max-width: 400px
{ get-container } = whitebox
module.exports = ({ store, reload })->
    return null if not store?
    window <<<< { store }
    current-page =
        pages[store.current.page]
    .pug
        description store
        .app.pug
            modal-control store
            copy-message store
            current-page { store }