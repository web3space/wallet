require! {
    \react
    \./wallet.ls
    \prelude-ls : { map }
    \./menu.ls
    \./seed.ls : { get }
    \./refresh-account.ls
    \./web3.ls
    \./navigate.ls
}
.wallets
    box-sizing: border-box
    background: #eae7e7
    .lock
        color: gray
        font-size: 11px
        cursor: pointer
        display: inline-block
        border: 1px solid #d7d4d4
        border-radius: 5px
        padding: 3px
        margin-bottom: 20px
        width: 120px
        &:hover
            border-color: gray
wallets = ({ store })->
    return null if not store.current.account?
    lock = ->
        navigate store, \locked
    .pug
        menu { store }
        .wallets.pug
            store.current.account.wallets |> map wallet store
            .pug
                a.lock.pug(on-click=lock) LOCK WALLET
wallets.init = (store, cb)->
    return cb null if store.current.account?
    store.current.seed = get!
    err <- refresh-account web3(store), store
    cb err
module.exports = wallets