require! {
    \localStorage : { set-item, get-item }
    \prelude-ls : { any }
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
build-install = (cweb3, store)-> (plugin, cb)->
    err <- verify-plugin plugin
    return cb err if err?
    err <- ask-user cweb3, store, plugin
    return cb err if err?
    name = "plugin-#{plugin.token}"
    body = JSON.stringify plugin
    set-item name, body
module.exports = build-install