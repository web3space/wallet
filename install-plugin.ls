require! {
    \localStorage : { set-item, get-item }
    \prelude-ls : { any }
    \./modal.ls : { ask }
}
required-fields = <[ type token enabled ]>
not-in = (arr, arr2)-> 
    arr |> any -> arr2.index-of(it) is -1
verify-plugin = (plugin, cb)->
    return cb "Expected Object" if typeof! plugin isnt \Object
    return cb "Required fields: #{required-fields.join(', ')}" if required-fields `not-in` Object.keys(plugin)
    cb null
get-registry = ->
    registry-string = get-item(\plugin-registry) ? "[]"
    JSON.parse registry-string
save-registry = (registry)->
    resulted-string = JSON.stringify registry
    set-item name, resulted-string
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
    name = build-name plugin.token
    body = JSON.stringify plugin
    set-item name, body
    add-to-registry name
    cb null
uninstall-plugin = (token, cb)->
    return cb "expected string argument" if typeof! name isnt \String
    name = build-name token
    set-item name, ""
    remove-from-registry name
    cb null
ask-user = (cweb3, store, plugin, cb)->
    registry = get-registry!
    return cb "pluing is required" if typeof! plugin isnt \Object
    return cb "callback is required" if typeof! cb isnt \Function
    return ask store, "Would you like to install plugin `#{plugin.token}`", cb if registry.index-of(plugin.token) is -1
    ask store, "would you like to replace the current plugin with new `#{plugin.token}`", cb
export build-install = (cweb3, store)-> (plugin, cb)->
    err <- verify-plugin plugin
    return cb err if err?
    err <- ask-user cweb3, store, plugin
    return cb err if err?
    install-plugin plugin, cb
export build-uninstall = (cweb3, store)-> (name, cb)->
    uninstall-plugin name, cb