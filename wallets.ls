require! {
    \react
    \./wallet.ls
    \prelude-ls : { map }
    \./menu.ls
}
.wallets
    box-sizing: border-box
module.exports = ({ store })->
    .pug
        menu { store }
        .wallets.pug
            store.current.account.wallets |> map wallet store