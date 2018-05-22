require! {
    \localStorage
}
export set = (seed)->
    local-storage.set-item \seed, seed
export get = ->
    local-storage.get-item(\seed) ? ""