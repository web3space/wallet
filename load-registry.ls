require! {
    \superagent : { get, post }
    \atob
}
root = \https://api.github.com/repos/web3space/plugin-registry/contents
load-item = (item, cb)->
    err, data <- get "#{root}/#{item.path}"
    return cb err if err?
    content = JSON.parse atob data.body.content
    cb null, content
load-items = ([item, ...items], cb)->
    return cb null, [] if not item?
    err, data <- load-item item
    return cb err if err?
    err, rest <- load-items items
    return cb err if err?
    all = [data] ++ rest
    cb null, all
module.exports = (cb)->
    err, data <- get "#{root}/plugins" .end
    load-items data.body, cb