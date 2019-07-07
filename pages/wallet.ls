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
    border: 1px solid #213040
    border-top: 0px
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
        $card-top-height: 50px
        width: 100%
        color: #677897
        font-size: 14px
        text-align: center
        >*
            display: inline-block
            box-sizing: border-box
            vertical-align: top
            padding-top: 10px
            height: $card-top-height
        >.top-left
            width: 32%
            text-align: left
            @media screen and (max-width: 390px)
                width: 20%
            padding-left: 21px
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
            width: 36%
            @media screen and (max-width: 390px)
                width: 45%
            text-align: center
            >.balance
                &:last-child
                    font-weight: bold
                    font-size: 13px
                &.title
                    @media screen and (max-width: 220px)
                        display: none
        >.top-right
            width: 32%
            text-align: right
            padding-right: 21px
            @media screen and (max-width: 390px)
                padding-right: 10px
            >button
                outline: none
                margin-top: 5px
                cursor: pointer
                border: 1px solid
                border-radius: 5px
                width: 75px
                height: 30px
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
    { button-style, wallet, active, big, balance, pending, send, expand, usd-rate, last } = wallet-funcs store, wallets, wallet
    lang = get-lang store
    .wallet.pug(on-click=expand class="#{last + ' ' + active + ' ' + big}" key="#{wallet.coin.token}")
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
                button.pug(on-click=send(wallet) style=button-style) #{lang.open ? 'Open'}
        .wallet-middle.pug
            a.pug(target="_blank" href="#{get-address-link wallet}") #{get-address-title wallet}
            CopyToClipboard.pug(text="#{get-address-title wallet}" on-copy=copied-inform(store))
                copy store