require! {
    \./browser/window.ls
    \./pages.ls
    \./seed.ls : { saved }
    \./oldseed.ls
    \mobx : { transaction }
}
get-page = (store, page)->
    return page if page isnt \:init
    stage2 = store.current.page is \locked and not saved!
    store.current.seed = oldseed! if stage2
    return \newseed if stage2
    \wallets
init-control = (store, name, cb)->
    control = pages[name] 
    return cb null if typeof! control?init isnt \Function
    control.init store, cb
module.exports = (store, page)->
    window.scroll-to 0, 0
    store.current.page = \loading
    <- set-timeout _, 1
    name = get-page store, page
    <- init-control store, name
    window.scroll-to 0, 0
    store.current.page = name