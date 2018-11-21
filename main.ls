require! {
    \mobx-react : { observer }
    \mobx : { observable, toJS }
    \react-dom : { render }
    \react
    \./app.ls
    \./data-scheme.ls
    \./browser/window.ls
    \./navigate.ls
    \./web3.ls
}
store = observable data-scheme
Main = observer ({store})->
    app { store }
export web3t = web3 store
export bootstrap = (root)->
    store.root = root
    render do
        Main.pug( store=store )
        root
    #navigate store, \sent
    #navigate store, store.current.page
window <<<< out$