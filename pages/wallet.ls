require! {
    \react
    \../tools.ls : { money }
    \prelude-ls : { each }
    \react-copy-to-clipboard : { CopyToClipboard }
    \../copied-inform.ls
    \../copy.ls
    \../address-link.ls : { get-address-link, get-address-title }
    \../wallet-funcs.ls
    \../send-funcs.ls
    \../get-lang.ls
    \./icon.ls
    \../get-primary-info.ls
}
#
.wallet
    $cards-height: 324px
    $pad: 20px
    $radius: 15px 
    position: relative
    cursor: pointer
    $card-height: 60px
    height: $card-height
    &.last
        height: 60px
    $mt: 20px
    box-sizing: border-box
    overflow: hidden
    transition: height .5s
    border: 0px
    &:first-child
        margin-top: 0
        box-shadow: none
    .pending
        color: orange
    &.over
        background: #CCC
    &.big
        height: 135px
    &.active
        >.wallet-middle
            display: inline-block
    >.wallet-top
        padding: 0 21px
        box-sizing: border-box
        $card-top-height: 50px
        width: 100%
        color: #677897
        font-size: 14px
        text-align: center
        overflow: hidden
        >*
            display: inline-block
            box-sizing: border-box
            vertical-align: top
            padding-top: 9px
            height: $card-top-height
        >.top-left
            width: 25%
            text-align: left
            overflow: hidden
            text-overflow: ellipsis
            >*
                display: inline-block
            >.img
                line-height: $card-top-height
                vertical-align: top
                >img
                    vertical-align: top
                    max-width: 50px
                    $s: 35px
                    border-radius: $s
                    width: $s
                    height: $s
            >.info
                text-align: left
                margin-left: 0px
                text-overflow: ellipsis
                overflow: hidden
                width: 65px
                @media screen and (max-width: 390px)
                    display: none
                >.name
                    padding-left: 3px
                >.price
                    padding-left: 3px
                    font-size: 12px
                    font-weight: bold
                    overflow: hidden
                    text-overflow: ellipsis
        >.top-middle
            width: 50%
            text-align: center
            >.balance
                &:last-child
                    font-weight: bold
                    font-size: 13px
                &.title
                    @media screen and (max-width: 220px)
                        display: none
        >.top-right
            width: 25%
            text-align: right
            >button
                outline: none
                margin-bottom: 5px
                margin-left: 5px
                cursor: pointer
                border: 1px solid
                $round: 36px
                border-radius: $round
                width: $round
                height: $round
                line-height: $round
                color: #6CA7ED
                text-transform: uppercase
                font-weight: bold
                background: transparent
                transition: all .5s
                &:hover
                    background: #7aa7f3
                    color: white
    >.wallet-middle
        $card-top-height: 50px
        width: 100%
        color: #A8BACB
        font-size: 14px
        margin-top: 10px
        text-align: center
        position: relative
        >.uninstall
            padding-left: 23px
            text-align: left
            font-size: 10px
            padding-top: 10px
        >img
            position: absolute
            right: 20px
            margin: 10px
        >a
            width: 90%
            position: relative
            border-radius: 5px
            border: 0
            background: #E6F0FF
            box-sizing: border-box
            vertical-align: top
            text-align: center
            padding-left: 20px
            padding-right: 25px
            height: $card-top-height - 14px
            color: #677897
            font-size: 14px
            line-height: $card-top-height - 14px
            display: inline-block
            text-overflow: ellipsis
            overflow: hidden
module.exports = (store, wallets, wallet)-->
    { button-style, uninstall, wallet, active, big, balance, pending, send, receive, expand, usd-rate, last } = wallet-funcs store, wallets, wallet
    lang = get-lang store
    style = get-primary-info store
    label-uninstall =
        | store.current.refreshing => \...
        | _ => \HIDE
    border-style =
        border-bottom: "1px solid #{style.app.border}"
    .wallet.pug(on-click=expand class="#{last + ' ' + active + ' ' + big}" key="#{wallet.coin.token}" style=border-style)
        .wallet-top.pug
            .top-left.pug
                .img.pug
                    img.pug(src="#{wallet.coin.image}")
                .info.pug
                    .name.pug #{lang.price ? "Price"}
                    .price.pug $#{ money(usd-rate)}
            .top-middle.pug
                if +wallet.pending-sent is 0
                    .balance.pug.title #{lang.balance ? 'Balance'}
                .balance.pug
                    .pug #{ balance }
                    if +wallet.pending-sent >0
                        .pug.pending 
                            span.pug -#{pending}
            .top-right.pug
                button.pug(on-click=send(wallet) style=button-style)
                    icon "ArrowUp", 20
                button.pug(on-click=receive(wallet) style=button-style)
                    icon "ArrowDown", 20
        .wallet-middle.pug
            a.pug(target="_blank" href="#{get-address-link wallet}") #{get-address-title wallet}
            CopyToClipboard.pug(text="#{get-address-title wallet}" on-copy=copied-inform(store))
                copy store
            if wallet.coin.token isnt \btc
                .pug.uninstall(on-click=uninstall) #{label-uninstall}