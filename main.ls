require! {
    \mobx-react : { observer }
    \mobx : { observable, toJS }
    \react-dom : { render }
    \react
    \./app.ls
    \./data-scheme.ls
    \./browser/window.ls
    \./web3.ls
    \./autodetect-lang.ls
}
store = observable data-scheme
export web3t = web3 store
Main = observer ({store})->
    app { store, web3t }
export bootstrap = (root, options)->
    store.root = root
    render do
        Main.pug( store=store)
        root
    autodetect-lang store if options?auto-lang isnt no
    web3t.set-preference options if typeof! options is \Object
window <<<< out$