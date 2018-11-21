require! {
    \react
    \./tools.ls : { cut, money }
    \prelude-ls : { each }
    \./web3.ls
    \react-copy-to-clipboard : { CopyToClipboard }
    \./copied-inform.ls
    \./copy.ls
}
.wallet
    padding: 10px
    margin: 0 10px 3px 10px
    text-align: left
    background: white
    color: black
    border: 1px solid #dcd9d9
    border-radius: 5px
    >.wallet-header
        img
            max-width: 32px
        .btn
            border: 1px solid #75cee1
            line-height: 17px
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
                .account
            width: 33.3333%
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
            overflow: hidden
            margin-top: 5px
            background: black
            border-radius: 5px
            width: 100%
            box-sizing: border-box
            display: inline-block
            text-align: center
            background: #eae7e7
            a
                text-decoration: none
                color: #4c4a4a
                font-size: 14px
            >*
                display: inline-block
                vertical-align: top
                box-sizing: border-box
            .address-area
                width: 90%
                overflow: hidden
                text-overflow: ellipsis
                padding: 3px
            .copy-area
                width: 10%
                background: rgb(234, 231, 231)
                background: linear-gradient(to bottom, #eeeeee 1%,#cccccc 51%,#cccccc 100%)
                &:hover
                    background: #cccccc
                border-left: 1px solid #CCC
                text-align: center
                padding: 5px
                line-height: 15px
                >*
                    display: inline-block
    >.wallet-footer
        height: 43px
module.exports = (store, wallet)-->
    return null if not store? or not wallet?
    lweb3 = web3(store)
    #TODO refactor
    address-label = 
        | wallet.coin.token is \xem => \account
        | _ => \address
    send = (wallet, event)-->
        { send-transaction } = lweb3[wallet.coin.token]
        to = ""
        value = 0
        err <- send-transaction { to, value }
        console.log err
    usd-rate = wallet?usd-rate ? 0
    .wallet.pug(key="#{wallet.coin.token}")
        .pug.wallet-header
            .pug.part.left
                .pug.cell
                    img.pug(src="#{wallet.coin.image}")
                .pug.cell
                    .pug #{ wallet.coin.token.to-upper-case! }
                    .pug.gray $#{ money(usd-rate)}
            .pug.part.center
                .pug #{ cut(wallet.balance) } 
                .pug.gray $#{ money(wallet.balance-usd)}
            .pug.part.right
                .pug
                    a.pug.btn.default(on-click=send(wallet)) Open
        .pug.wallet-body
            .pug.group.center
                span.pug.address
                    span.address-area.pug
                        a.pug(target="_blank" href="#{wallet.network.api.url}/#{address-label}/#{wallet.address}") #{wallet.address}
                    span.pug.copy-area
                        CopyToClipboard.pug(text="#{wallet.address}" on-copy=copied-inform(store))
                            copy store