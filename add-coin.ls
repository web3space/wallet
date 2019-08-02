require! {
    \prelude-ls : { map, take, drop, filter }
    \./load-registry.ls
    \./plugin-loader.ls : { get-coins }
}
module.exports = (store, e)-->
    cb = alert
    e.stop-propagation!
    e.native-event.stop-immediate-propagation!
    store.current.add-coin = yes
    err, registry <- load-registry 
    return cb err if err?
    installed-tokens = 
        get-coins! |> map (.token)
    store.current.filter-plugins = ""
    store.registry = 
        registry |> filter (.token not in installed-tokens)