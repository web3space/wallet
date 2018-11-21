require! {
    \react
}
export control = (store)->
    .pug Control
current =
    timer: null
export cancel-ask = (store)->
    current.timer = clear-timeout current.timer
    store.ask.callback 'Cancelled' if typeof! store.ask.callback is \Function
    store.ask.callback = null
    store.ask.enabled = no
    store.ask.text = ""
reduce-or-cancel = (store, timer-sec) -> (_)->
    current.timer = clear-timeout current.timer
    return cancel-ask store if timer-sec <= 0
    current.timer = set-timeout reduce-or-cancel(store, timer-sec - 1), 1000
export ask = (store, text, cb)->
    return cb "store is required" if typeof! store isnt \Object
    return cb "text is required" if typeof! text isnt \String
    return cb "Cannot ask because ask modal is busy with another task" if store.ask.enabled is yes
    store.ask.enabled = yes
    store.ask.text = text
    store.ask.callback = cb
    reduce-or-cancel(store, 11)!