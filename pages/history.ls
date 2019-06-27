require! {
    \react
    \prelude-ls : { sort-by, reverse, filter, map, find }
    \../history-funcs.ls
}
.history
    width: 100%
    color: black
    position: relative
    padding-bottom: 20px
    display: inline-block
    .nothin-to-show
        color: rgba(white, 0.5)
        padding-top: 50px
        text-align: center
    .header
        height: 50px
        box-sizing: border-box
        text-align: left
        padding: 10px
        position: fixed
        background: rgba(white, 0.95)
        left: 0
        top: 0
        width: 100%
        max-width: 400px
        .separator
            min-width: 2px
            display: inline-block
        button 
            outline: none
            cursor: pointer
            border: 0
            background: transparent
            display: inline-block
            vertical-align: top
            margin: 3px
            padding: 0
            border: 1px solid #eae9e9
            border-radius: 3px
            &.active
                border-color: #75cee1
                background: rgba(#75cee1, 0.3)
                background: white
            line-height: 12px
            height: 25px
            width: 25px
            font-size: 10px
            text-align: center
            >*
                vertical-align: middle
                display: inline-block
    .bold
        color: #b2951bad
        font-style: italic
        &.delete
            cursor: pointer
    .fee
        display: inline-block
        margin-right: 5px
    .balance
        display: inline-block
        >*
            display: inline-block
        .color
            color: black
        .rest
            color: #CCC
    .table
        margin-top: 60px
        width: 100%
        .head, .record
            &.record
                border-radius: 3px
                margin: 10px
                background: white
                margin-bottom: 1px
            .cell
                padding: 2px 5px
                display: inline-block
                vertical-align: top
                box-sizing: border-box
                text-align: left
                &.network
                    width: 15%
                &.txhash
                    width: 50%
                    a
                        color: black
                &.amount
                    width: 35%
                    text-align: right
            .gray
                color: #CCC
                font-size: 12px
            .type
                text-align: center
            .direction
                font-size: 12px
            &.OUT
                .direction
                    color: red
                .txhash a
                    color: #c79b9b
            &.IN
                .direction
                    color: green
                .txhash a
                    color: #80ad80
    .panel-footer
        padding: 10px
    img
        height: 15px
module.exports = ({ store })->
    { go-back, switch-type-in, switch-type-out, coins, is-active, switch-filter, applied-transactions, cut-tx, arrow, delete-pending-tx, amount-beautify, ago } = history-funcs store
    .pug.normalheader.history
        .header.pug
            button.pug(on-click=go-back) <
            span.pug.separator
            button.pug(class="#{is-active('IN')}" on-click=switch-type-in) IN
            button.pug(class="#{is-active('OUT')}" on-click=switch-type-out) OUT
            span.pug.separator
            for coin in coins
                button.pug(key="#{coin.token}" class="#{is-active(coin.token)}" on-click=switch-filter(coin.token))
                    img.pug(src="#{coin.image}")
        .pug
            .pug.table
                for tran in applied-transactions
                    { token, tx, amount, fee, time, url, type, pending } = tran
                    coin = 
                        coins |> find (.token is token)
                    .record.pug(class="#{type}" key="#{tx + type}")
                        .cell.pug.text-center.network
                            .pug
                                img.pug(src="#{coin.image}")
                            .pug.direction #{arrow(type)}
                        .cell.pug.txhash
                            a.pug(href="#{url}" target="_blank") #{cut-tx tx}
                            .pug.gray 
                                span.pug #{ago time}
                                if pending is yes
                                    span.pug
                                        span.pug.bold (pending)
                                        span.pug.bold.delete(on-click=delete-pending-tx(tran)) x
                        .cell.pug.amount
                            .pug(title="#{amount}") 
                                amount-beautify amount, 8
                            .pug.gray
                                span.pug.fee Fee 
                                amount-beautify fee, 10
            if applied-transactions.length is 0
                .pug.nothin-to-show Nothing to show