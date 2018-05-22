require! {
    \mobx-react : { observer }
    \mobx : { observable }
    \react-dom : { render }
    \react
    \./index.ls
}
input = ({store})->
    handle-enter-click = (event) ->
        return if event.key-code isnt 13
        store.todos.push text: event.target.value
        event.target.value = ''
    input.pug(on-key-down=handle-enter-click)
Main = observer ({store})->
    index!

window.onload = ->
    store = observable do
        todos:
            * text: 'Do dishes'
            ...
    render do
        Main.pug(store=store )
        document.body.append-child document.create-element \app