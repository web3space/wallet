require! {
    \./browser/window.ls
    \./pages.ls
    \./seed.ls : { saved }
    \./oldseed.ls
    \mobx : { transaction }
    \./scroll-top.ls
}
get-page = (store, page)->
    return page if page isnt \:init
    stage2 = store.current.page is \locked or not saved!
    store.current.seed = oldseed! if stage2
    return \newseed if stage2
    \wallets
init-control = (store, name, cb)->
    <- set-timeout _, 1
    control = pages[name] 
    return cb null if typeof! control?init isnt \Function
    control.init store, cb
focus-control = (store, name, cb)->
    scroll-top!
    control = pages[name] 
    return cb null if typeof! control?focus isnt \Function
    control.focus store, cb
module.exports = (store, page)->
    scroll-top!
    store.current.page = \loading
    name = get-page store, page
    console.log { next: name }
    <- init-control store, name
    store.current.page = name
    <- focus-control store, name