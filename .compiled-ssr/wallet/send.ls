require! {
    \react
    \mobx : { toJS }
    \./math.ls : { times, minus }
    \./api.ls : { create-transaction, push-tx }
    \./calc-amount.ls : { change-amount, calc-crypto }
    \./send-form.ls : { notify-form-result }
    \./get-name-mask.ls
    \./resolve-address.ls
    \./ethnamed.ls
    \./browser/window.ls
    \./navigate.ls
    \./close.ls
    \./round.ls
    \./round5.ls
}
# .content-1690134222
#     position: relative
#     @import scheme
#     $border-radius: 20px
#     $label-padding: 12px
#     $label-font: 12px
#     >*
#         display: inline-block
#         text-align: center
#         width: 376px
#         box-sizing: border-box
#         border-radius: $border-radius
#         position: absolute
#         left: 11px
#     >.more-buttons
#         background: rgba(255, 255, 255, 0.24)
#         top: 545px
#         color: white
#         padding: 5px
#         border-radius: 20px
#         >.more
#             color: white
#             width: 33.333%
#             box-sizing: border-box
#             display: inline-block
#             text-align: center
#             height: 32px
#             line-height: 32px
#             cursor: pointer
#             border-left: 1px solid #e6e4e4
#             &:first-child
#                 border-left: 0    
#             &:hover
#                 color: white - 20
#     >.decoration
#         top: 8px
#         left: 28px
#         width: 344px
#         background: rgba(255, 255, 255, 0.24)
#         height: 23px
#         border-radius: 15px
#     >.content-body
#         top: 15px
#         padding: 12px 12px 0px 12px
#         height: 520px
#         @import scheme
#         background: white
#         color: gray
#         a
#             color: gray
#         >form
#             >table
#                 background: #e6f0ff
#                 border-radius: 10px
#                 width: 100%
#                 border-spacing: 0
#                 tr
#                     &.gray
#                         color: #CCC
#                     &.orange
#                         color: #cf952c
#                     &.green
#                         color: #23b723
#                     td
#                         padding: 3px 10px
#                         font-size: 14px
#                         &:last-child
#                             text-align: right
#             max-width: 400px
#             text-align: left
#             >.form-group
#                 >.control-label
#                     padding-top: 5px
#                     padding-left: $label-padding
#                     font-size: $label-font
#                 margin-top: 4px
#                 .address
#                     padding: 5px 10px
#                     overflow: hidden
#                     text-overflow: ellipsis
#                     background: #dcdada
#                     border-radius: $border-radius
#                     font-size: 13px
#                     overflow: hidden
#                     text-overflow: ellipsis
#                     background: #E6F0FF
#                     color: #677897
#                 input
#                     outline: none
#                     width: 100%
#                     box-sizing: border-box
#                     height: 30px
#                     border-radius: $border-radius
#                     padding: 0px 10px
#                     font-size: 12px
#                     margin: 1px
#                     border: 1px solid #5E72E4
#                 .amount-field
#                     position: relative
#                     >.label
#                         position: absolute
#                         top: 5px
#                         display: inline
#                         &.lusd
#                             left: 184px
#                         &.crypto
#                             left: 138px
#                             color: #5E72E4
#                     input
#                         width: 50%
#                         display: inline-block
#                         box-sizing: border-box
#                         margin: 0
#                         &.amount
#                             border-radius: $border-radius 0 0 $border-radius
#                             border-right: 0
#                         &.amount-usd
#                             background: #f1eeee
#                             padding-left: 20px
#                             border-radius: 0 $border-radius $border-radius 0
#         >.header
#             margin: 0
#             padding: 10px
#             text-align: left
#             padding: 0
#             >.head
#                 width: 70%
#                 line-height: 70px
#                 font-size: 27px
#                 font-weight: 700
#                 vertical-align: middle
#                 line-height: 29px
#                 display: inline-block
#                 color: #677897
#                 &.right
#                     text-align: right
#                     width: 30%
#             img
#                 width: 34px
#                 border-radius: 50px
#         .usd
#             font-size: 11px
#             padding-left: $label-padding
#             color: gray
#         .topup
#             display: inline-block
#             margin-left: 5px
#             color: orange
#             vertical-align: top
#             padding: 0 5px
#             border-radius: 3px
#             line-height: 12px
#             font-size: 12px
#         .balance
#             color: #5E72E4
#         .not-enough
#             color: red
#             min-height: 30px
#             padding: 0 11px
#             font-size: 12px
#         .escrow
#             padding: 5px 11px
#             min-height: 20px
#             color: #cc625a
#             font-size: 14px
#         .bold
#             font-weight: bold
#         .button-container
#             text-align: center
#             .buttons
#                 margin-top: 10px
#                 text-align: left
#                 border-radius: 100px
#                 width: 260px
#                 display: inline-block
#                 overflow: hidden
#                 box-shadow: 0px 0px 9px #bbbbbb
#                 .btn
#                     width: 50%
#                     height: 40px
#                     line-height: 40px
#                     text-align: center
#                     font-size: 16px
#                     color: $primary
#                     display: inline-block
#                     cursor: pointer
#                     box-sizing: border-box
#                     &.btn-primary
#                         background: #5E72E4
#                         color: white
send = ({ store })->
    return null if not store?
    { send-to } = ethnamed store
    { send } = store.current
    { wallet } = send
    link = "#{send.network.api.url}/address/#{send.address}"
    send-tx = ({ to, wallet, network, amount-send, amount-send-fee, data, coin }, cb)->
        { token } = send.coin
        tx =
            sender: { wallet.address, wallet.private-key } 
            recepient: to
            network: network
            token: token
            coin: coin
            amount: amount-send
            amount-fee: amount-send-fee
            data: data
        err, data <- create-transaction tx
        return cb err if err?
        agree = confirm "Are you sure to send #{tx.amount} #{send.coin.token} to #{send.to}"
        return cb "You are not agree" if not agree
        err, tx <- push-tx { token, network, ...data }
        cb err, tx
    perform-send-safe = (cb)->
        err, to <- resolve-address send.to, send.coin, send.network
        send.propose-escrow = err is "Address not found" and send.coin.token is \eth
        return cb err if err?
        send.to = to
        send.error = err.message ? err if err?
        return cb err if err?
        send-tx { wallet, ...send }, cb
    perform-send-unsafe = (cb)->
        send-tx { wallet, ...send }, cb
    send-money = ->
        return if send.sending is yes
        send.sending = yes
        err, data <- perform-send-safe
        send.sending = no
        return send.error = err.message ? err if err?
        notify-form-result send.id, null, data
        store.current.last-tx-url = "#{send.network.api.url}/transfer/#{data}"
        navigate store, \sent
    send-escrow = ->
        name = send.to
        amount-ethers = send.amount-send
        err <- send-to { name, amount-ethers }
    send-anyway = ->
        return send-escrow! if send.propose-escrow
        send-money!
    send-title = 
        | send.propose-escrow then 'SEND (Escrow)'
        | _ => "Send"
    cancel = (event)->
        navigate store, \wallets
        notify-form-result send.id, "Cancelled by user"
    recepient-change = (event)->
        send.to = event.target.value ? ""
    get-value = (event)->
        value = event.target.value.match(/^[0-9]+([.]([0-9]+)?)?$/)?0
        value2 = 
            | value?0 is \0 and value?1? and value?1 isnt \. => value.substr(1, value.length)
            | _ => value
        value2
    amount-change = (event)->
        value = get-value event
        change-amount store, value
    amount-usd-change = (event)->
        value = get-value event
        to-send = calc-crypto store, value
        change-amount store, to-send
    encode-decode = ->
        send.show-data-mode =
            | send.show-data-mode is \decoded => \encoded 
            | _ => \decoded
    show-data = ->
        | send.show-data-mode is \decoded => send.decoded-data
        | _ => send.data
    show-label = ->
        if send.show-data-mode is \decoded then \encoded else \decoded
    when-empty = (str, def)->
        if (str ? "").length is 0 then def else str
    history = ->
        store.current.filter = [\IN, \OUT, send.coin.token]
        navigate store, \history
    topup = ->
        if wallet.network.topup
            window.open wallet.network.topup
        else
            alert "Topup Service is not installed"
    network = 
        | store.current.network is \testnet => " (TESTNET) "
        | _ => ""
    receive = ->
        navigate store, \receive
    token = send.coin.token.to-upper-case!
    is-data = (send.data ? "").length > 0
    form-group = (title, content)->
        react.create-element 'div', { className: 'form-group' }, children = 
            react.create-element 'label', { className: 'control-label' }, ' ' + title
            content!
    react.create-element 'div', { className: 'content content-1690134222' }, children = 
        react.create-element 'div', { className: 'decoration' }
        react.create-element 'div', { className: 'content-body' }, children = 
            react.create-element 'div', { className: 'header' }, children = 
                react.create-element 'span', { className: 'head' }, ' ' + token + network + ' WALLET'
                react.create-element 'span', { className: 'head right' }, children = 
                    react.create-element 'img', { src: "#{send.coin.image}" }
            react.create-element 'form', {}, children = 
                form-group 'Send From', ->
                    react.create-element 'div', { className: 'address' }, children = 
                        react.create-element 'a', { href: "#{link}" }, ' ' + wallet.address
                form-group 'Recepient', ->
                    react.create-element 'input', { type: 'text', on-change: recepient-change, value: "#{send.to}", placeholder: "#{store.current.send-to-mask}" }
                form-group 'Amount', ->
                    react.create-element 'div', {}, children = 
                        react.create-element 'div', { className: 'amount-field' }, children = 
                            react.create-element 'div', { className: 'label lusd' }, ' $'
                            react.create-element 'div', { className: 'label crypto' }, ' ' + token
                            react.create-element 'input', { type: 'text', on-change: amount-change, placeholder: "0", value: "#{round5 send.amount-send}", className: 'amount' }
                            react.create-element 'input', { type: 'text', on-change: amount-usd-change, placeholder: "0", value: "#{round5 send.amount-send-usd}", className: 'amount-usd' }
                        react.create-element 'div', { className: 'usd' }, children = 
                            react.create-element 'span', {}, ' Balance'
                            react.create-element 'span', { className: 'balance' }, ' ' + wallet.balance + ' ' + token + ' '
                        react.create-element 'div', { className: 'control-label not-enough text-left' }, ' ' + send.error
                if is-data
                    form-group 'Data', ->
                        react.create-element 'div', {}, children = 
                            react.create-element 'input', { read-only: "readonly", value: "#{show-data!}" }
                            react.create-element 'button', { type: "button", on-click: encode-decode }, ' Show ' + show-label!
                react.create-element 'table', {}, children = 
                    react.create-element 'tbody', {}, children = 
                        react.create-element 'tr', {}, children = 
                            react.create-element 'td', {}, ' You Send '
                            react.create-element 'td', {}, children = 
                                react.create-element 'div', {}, ' ' + round5(send.amount-charged) + '  ' + token
                                react.create-element 'div', { className: 'usd' }, ' $ ' + round5 send.amount-charged-usd
                        react.create-element 'tr', { className: 'green' }, children = 
                            react.create-element 'td', {}, ' Recepient obtains'
                            react.create-element 'td', {}, children = 
                                react.create-element 'div', { className: 'bold' }, ' ' + round5(send.amount-obtain) + '  ' + token
                                react.create-element 'div', { className: 'usd' }, ' $ ' + round5 send.amount-obtain-usd
                        react.create-element 'tr', { className: 'orange' }, children = 
                            react.create-element 'td', {}, ' Transaction Fee'
                            react.create-element 'td', {}, children = 
                                react.create-element 'div', {}, ' ' + round5(send.amount-send-fee) + '  ' + token
                                react.create-element 'div', { className: 'usd' }, ' $ ' + round5(send.amount-send-fee-usd)
                react.create-element 'div', { className: 'escrow' }, children = 
                    if send.propose-escrow
                        react.create-element 'div', {}, ' You can send this funds to the Ethnamed smart-contract. Once the owner register the name he will obtain funds automatically'
            react.create-element 'div', { className: 'button-container' }, children = 
                react.create-element 'div', { className: 'buttons' }, children = 
                    react.create-element 'a', { on-click: send-anyway, className: 'btn btn-primary' }, children = 
                        react.create-element 'span', {}, ' ' + send-title
                        if send.sending
                            react.create-element 'span', {}, ' ...'
                    react.create-element 'a', { on-click: cancel, className: 'btn btn-default' }, ' CANCEL'
        if not is-data
            react.create-element 'div', { className: 'more-buttons' }, children = 
                react.create-element 'a', { on-click: receive, className: 'more receive' }, ' RECEIVE'
                react.create-element 'a', { on-click: history, className: 'more history' }, ' HISTORY'
                react.create-element 'a', { on-click: topup, className: 'more history' }, ' TOPUP'
module.exports = send