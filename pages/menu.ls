require! {
    \react
    \../tools.ls : { cut, money }
    \./project-links.ls
    \../menu-funcs.ls
    \./your-account.ls
    \../get-primary-info.ls
    \../get-lang.ls
}
.menu
    padding: 5px
    height: 28vh
    line-height: 30vh
    >.menu-body
        display: inline-block
        line-height: normal
        vertical-align: middle
        >.balance
            text-align: center
            >.currency
            >.amount
                font-size: 40px
                >*
                    display: inline-block
module.exports = ({ store })->
    return null if not store?
    { current, wallet-style, info, activate-s1, activate-s2, activate-s3, switch-network, refresh, lock } = menu-funcs store
    style = get-primary-info store
    menu-style=
        color: style.app.text
    lang = get-lang store
    .menu.pug(style=menu-style)
        .menu-body.pug
            .balance.pug
                .currency.pug #{lang.total-balance ? 'Total Balance'}
                .amount.pug
                    .symbol.pug $
                    .number.pug #{money current.balance-usd}
            your-account store
            project-links { store }