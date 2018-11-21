require! {
    \react
    \whitebox
    \./transactions.ls : { transactions }
    \prelude-ls : { sort-by, reverse, filter, map, find }
    \moment
    \./plugin-loader.ls : { coins }
    \./navigate.ls
    \mobx : { toJS }
}
# .history-632060576
#     width: 100%
#     color: black
#     position: relative
#     padding-bottom: 20px
#     .header
#         height: 50px
#         box-sizing: border-box
#         text-align: left
#         padding: 10px
#         position: fixed
#         background: rgba(white, 0.95)
#         left: 0
#         top: 0
#         width: 100%
#         max-width: 400px
#         .separator
#             min-width: 14px
#             display: inline-block
#         button 
#             outline: none
#             cursor: pointer
#             border: 0
#             background: transparent
#             display: inline-block
#             vertical-align: top
#             margin: 3px
#             padding: 0
#             border: 1px solid #eae9e9
#             border-radius: 3px
#             &.active
#                 border-color: #75cee1
#                 background: rgba(#75cee1, 0.3)
#                 background: white
#             line-height: 12px
#             height: 25px
#             width: 33px
#             text-align: center
#             >*
#                 vertical-align: middle
#                 display: inline-block
#     .fee
#         display: inline-block
#         margin-right: 5px
#     .balance
#         display: inline-block
#         >*
#             display: inline-block
#         .color
#             color: black
#         .rest
#             color: #CCC
#     .table
#         margin-top: 60px
#         width: 100%
#         .head, .record
#             &.record
#                 border: 1px solid #CCC
#                 border-radius: 3px
#                 margin: 10px
#                 background: white
#                 margin-bottom: 1px
#             .cell
#                 padding: 2px 5px
#                 display: inline-block
#                 vertical-align: top
#                 box-sizing: border-box
#                 text-align: left
#                 &.network
#                     width: 15%
#                 &.txhash
#                     width: 45%
#                     a
#                         color: black
#                 &.amount
#                     width: 40%
#                     text-align: right
#             .gray
#                 color: #CCC
#                 font-size: 12px
#             .type
#                 text-align: center
#             .direction
#                 font-size: 12px
#             &.OUT
#                 .direction
#                     color: red
#                 .txhash a
#                     color: #c79b9b
#             &.IN
#                 .direction
#                     color: green
#                 .txhash a
#                     color: #80ad80
#     .panel-footer
#         padding: 10px
#     img
#         height: 15px
module.exports = ({ store })->
    cut-tx = (tx)->
        return \none if not tx?
        t = tx.to-string!
        r = t.substr(0, 4) + \.. + t.substr(tx.length - 25, 10) + \.. + t.substr(t.length - 4, 4)
        r.to-upper-case!
    ago = (time)->
        moment(time * 1000).from-now!
    date = (time)->
        moment(time * 1000).format!
    filt = store.current.filter
    filter-txs = (tx)->
        { type, token } = tx
        #console.log type, token, tx
        type in filt and token in filt
    applied-transactions =
        transactions 
            |> filter filter-txs 
            |> sort-by (.time) 
            |> reverse
    arrow = (type)->
        | type is \IN => "INC"
        | _ => "OUT"
    go-back = ->
        navigate store, \wallets
    extended = (str)->
        | str.index-of('.') > -1 => "#{str}0"
        | _ => "#{str}.0"
    cut-amount = (amount, max)->
        str = (amount ? "")to-string!
        res =
            | str.length is max => str
            | str.length >= max => str.substr(0, max - 1) + ".."
            | _ => cut-amount extended(str), max
        res
    amount-beautify = (amount, max)->
        str = cut-amount amount, max
        data = str.match(/(.+[^0])(0+)$/)
        if not data?
            return
                react.create-element 'div', { className: 'balance' }, children = 
                    react.create-element 'span', { className: 'color' }, ' ' + str
        [_, first, last] = data
        react.create-element 'span', { className: 'balance' }, children = 
            react.create-element 'span', { className: 'color' }, ' ' + first
            react.create-element 'span', { className: 'rest' }, ' ' + last
    is-active = (value)->
        if value in filt then \active else ''
    switch-filter  = (value, event)-->
        if value not in filt
            filt.push value
        else 
            filt.splice(filt.index-of(value), 1)
    switch-type-in = switch-filter \IN
    switch-type-out = switch-filter \OUT
    react.create-element 'div', { className: 'normalheader history history-632060576' }, children = 
        react.create-element 'div', { className: 'header' }, children = 
            react.create-element 'button', { on-click: go-back }, ' < '
            react.create-element 'span', { className: 'separator' }
            react.create-element 'button', { on-click: switch-type-in, className: "#{is-active('IN')}" }, ' IN'
            react.create-element 'button', { on-click: switch-type-out, className: "#{is-active('OUT')}" }, ' OUT'
            react.create-element 'span', { className: 'separator' }
            for coin in coins
                react.create-element 'button', { key: "#{coin.token}", on-click: switch-filter(coin.token), className: "#{is-active(coin.token)}" }, children = 
                    react.create-element 'img', { src: "#{coin.image}" }
        react.create-element 'div', {}, children = 
            react.create-element 'div', { className: 'table' }, children = 
                for { token, tx, amount, fee, time, url, type } in applied-transactions
                    coin = 
                        coins |> find (.token is token)
                    react.create-element 'div', { key: "#{tx}", className: "#{type} record" }, children = 
                        react.create-element 'div', { className: 'cell text-center network' }, children = 
                            react.create-element 'div', {}, children = 
                                react.create-element 'img', { src: "#{coin.image}" }
                            react.create-element 'div', { className: 'direction' }, ' ' + arrow(type)
                        react.create-element 'div', { className: 'cell txhash' }, children = 
                            react.create-element 'a', { href: "#{url}", target: "_blank" }, ' ' + cut-tx tx
                            react.create-element 'div', { className: 'gray' }, ' ' + ago time
                        react.create-element 'div', { className: 'cell amount' }, children = 
                            react.create-element 'div', { title: "#{amount}" }, ' '
                                amount-beautify amount, 8
                            react.create-element 'div', { className: 'gray' }, children = 
                                react.create-element 'span', { className: 'fee' }, ' Fee '
                                amount-beautify fee, 10