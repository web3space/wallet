require! {
    \prelude-ls : { map, take, drop, filter }
    \./load-registry.ls
    \./plugin-loader.ls : { get-coins }
}
wallets = (store)->
    { list } = store.current
    max = 4
    can-up = store.current.list > 0
    can-down = store.current.list < store.current.account.wallets.length / max
    go-up = ->
        return if not can-up
        store.current.list -= max
        store.current.wallet-index = 0
    go-down = ->
        return if not can-down
        store.current.list += max
        store.current.wallet-index = 0
    wallets = 
        store.current.account.wallets
            |> drop list 
            |> take max
    add-coin = (e)->
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
    { wallets, go-down, go-up, can-down, can-up, add-coin }
module.exports = wallets