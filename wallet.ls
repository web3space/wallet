require! {
    \react
    \./tools.ls : { cut, money }
    \prelude-ls : { each }
    \./web3.ls
}
.wallet
    padding: 10px
    margin: 0 10px 3px 10px
    text-align: left
    background: white
    color: black
    >.wallet-header
        img
            max-width: 32px
        .btn
            border: 1px solid #75cee1
            line-height: 14px
            font-size: 14px
            color: #75cee1
            &.default
                background: #75cee1
                color: white
            cursor: pointer
            border-radius: 5px
            width: 90px
            height: 17px
            display: inline-block
            text-align: center
            margin-bottom: 2px
        .part
            display: inline-block
            vertical-align: top
            text-align: left
            &.center
                text-align: center
            &.right
                text-align: right
            width: 33%
            >.cell
                display: inline-block
                margin-right: 5px
            .gray
                color: gray
                font-size: 12px
    >.wallet-body
        .center
            text-align: center
        .address
            margin-top: 5px
            background: black
            border-radius: 10px
            width: 100%
            box-sizing: border-box
            display: inline-block
            text-align: center
            padding: 5px
            background: #eae7e7
            a
                text-decoration: none
                color: #4c4a4a
                font-size: 14px
    >.wallet-footer
        height: 43px
module.exports = (store, wallet)-->
    return null if not store? or not wallet?
    lweb3 = web3(store)
    send = (wallet, event)-->
        { send-transaction } = lweb3[wallet.network.token]
        to = ""
        value = 0
        err <- send-transaction { to, value }
        console.log err
    history = (wallet, event)-->
        store.current.filter = [\IN, \OUT, wallet.network.token]
        store.current.page = \history
    .wallet.pug(key="#{wallet.network.token}")
        .pug.wallet-header
            .pug.part.left
                .pug.cell
                    img.pug(src="#{wallet.network.image}")
                .pug.cell
                    .pug #{ wallet.network.token.to-upper-case! }
                    .pug.gray $#{ money(wallet.usd-rate)}
            .pug.part.center
                .pug #{ cut(wallet.balance) } 
                .pug.gray $#{ money(wallet.balance-usd)}
            .pug.part.right
                .pug
                    a.pug.btn.default(on-click=send(wallet)) Send
                .pug
                    a.pug.btn(on-click=history(wallet)) history
        .pug.wallet-body
            .pug.group.center
                span.pug.address
                    a.pug(target="_blank" href="#{wallet.network.api.url}/address/#{wallet.address}") #{wallet.address}