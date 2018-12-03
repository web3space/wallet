require! {
    \localStorage
    \prelude-ls : { any, map }
    #react controls
    \./modal.ls : { install, replace }
}
required-fields = <[ type token enabled ]>
not-in = (arr, arr2)-> 
    arr |> any -> arr2.index-of(it) is -1
verify-plugin = (plugin, cb)->
    return cb "Expected Object" if typeof! plugin isnt \Object
    return cb "Required fields: #{required-fields.join(', ')}" if required-fields `not-in` Object.keys(plugin)
    cb null
get-registry = ->
    registry-string = local-storage.get-item(\plugin-registry) ? "[]"
    console.log registry-string
    JSON.parse registry-string
get-plugin = (name)->
    item = local-storage.get-item name
    return null if typeof! item isnt \String
    JSON.parse item
export get-install-list = ->
    get-registry! |> map get-plugin
save-registry = (registry)->
    resulted-string = JSON.stringify registry
    local-storage.set-item \plugin-registry, resulted-string
add-to-registry = (name)->
    registry = get-registry!
    return if registry.index-of(name) > -1
    registry.push name
    save-registry registry
remove-from-registry = (name)->
    registry = get-registry!
    index = registry.index-of(name) is -1
    return if index is -1
    registry.splice index, 1
    save-registry registry
build-name = (token)-> "plugin-#{token}"
install-plugin = (plugin, cb)->
    err <- verify-plugin plugin
    return cb err if err?
    plugin.can-uninstall = yes
    name = build-name plugin.token
    body = JSON.stringify plugin
    local-storage.set-item name, body
    add-to-registry name
    cb null
uninstall-plugin = (token, cb)->
    return cb "expected string argument" if typeof! name isnt \String
    name = build-name token
    local-storage.set-item name, ""
    remove-from-registry name
    cb null
ask-user = (cweb3, store, plugin, cb)->
    registry = get-registry!
    return cb "pluing is required" if typeof! plugin isnt \Object
    return cb "callback is required" if typeof! cb isnt \Function
    return install store, plugin, cb if registry.index-of(plugin.token) is -1
    replace store, plugin, cb
export build-install = (cweb3, store)-> (plugin, cb)->
    return cb "Please unlock the wallet" if store.current.page is \locked
    err <- verify-plugin plugin
    return cb err if err?
    err <- ask-user cweb3, store, plugin
    return cb err if err?
    err <- install-plugin plugin
    return cb err if err?
    cweb3.refresh cb
export build-uninstall = (cweb3, store)-> (name, cb)->
    uninstall-plugin name, cb