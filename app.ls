require! {
    \mobx-react : { observer }
    \mobx : { observable }
    \react
    \./pages.ls
    \whitebox
    \./description.ls
    \./browser/window.ls
    \./copy-message.ls
}
.app
    background: white
    min-height: 100vh
    position: relative
    color: white
    overflow-y: auto
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
            copy-message store
            current-page { store }