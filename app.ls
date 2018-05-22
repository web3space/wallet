require! {
    \mobx-react : { observer }
    \mobx : { observable }
    \react
    \./pages.ls
    \whitebox
}
.app
    @import 'https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css'
    background: #eae7e7
    min-height: 100vh
    position: relative
    color: white
    overflow-y: auto
    text-align: center
    max-width: 400px
{ get-container } = whitebox
module.exports = ({ store, reload })->
    return null if not store?
    select-page = (page, event)-->
        store.current.page = page
    window <<<< { store }
    current-page =
        pages[store.current.page]
    on-confirm = (_, event)-->
        console.log \confirm
    .app.pug
        current-page { store }