require! {
    \./navigate.ls
    \./seed.ls : { set }
    \bip39 : { generate-mnemonic }
    \./pages/confirmation.ls : { confirm }
}
module.exports = (store)->
    generate-seed = ->
        store.current.seed = generate-mnemonic!
    change-seed = (event)->
        store.current.seed = event.target.value
    save = ->
        return alert "Secret key cannot be empty" if store.current.seed.length is 0
        return alert "Secret key is so weak" if store.current.seed.length < 20
        confirmed <- confirm store, "Please confirm that you stored this phrase in safe place?"
        return if confirmed isnt yes
        store.current.saved-seed = yes
        set store.current.seed
        navigate store, \:init
    { save, change-seed, generate-seed }