require! {
    \mobx-react : { observer }
    \mobx : { observable, toJS }
    \react-dom : { render }
    \react
    \./app.ls
    \./data-scheme.ls
    \./fake.ls
    \./refresh-wallet.ls
}
store = observable data-scheme
fake store
refresh-wallet store, ->
Main = observer ({store})->
    app { store }
window.onload = ->
    render do
        Main.pug( store=store )
        document.body.append-child document.create-element \app