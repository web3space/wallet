require! {
    \react
    \mobx : { toJS }
    \./math.ls : { times, minus }
    \./api.ls : { create-transaction, push-tx }
    \./change-amount.ls
    \./send-form.ls : { notify-form-result }
    \./get-name-mask.ls
    \./resolve-address.ls
    \./ethnamed.ls
    \./browser/window.ls
    \./navigate.ls
    \./close.ls
}
# .content1469325038
#     @import scheme
#     $border-radius: 20px
#     $label-padding: 12px
#     $label-font: 12px
#     >*
#         display: inline-block
#         margin: 10px 0 0 0
#         text-align: center
#         width: 94%
#         box-sizing: border-box
#         border-radius: 5px
#     >.more-buttons
#         border: 1px solid #e6e4e4
#         background: rgba(255, 255, 255, 0.24)
#         color: white
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
#                 background: white
#                 color: $primary
#     >.content-body
#         >.padded-content
#             padding: 13px
#         @import scheme
#         background: white
#         color: gray
#         .control-label
#             padding-top: 5px
#             padding-left: $label-padding
#             font-size: $label-font
#         table
#             background: rgba(243, 243, 243, 0.3)
#             border-radius: 3px
#             width: 100%
#             border-spacing: 0
#             td
#                 padding: 5px $label-padding
#                 font-size: 14px
#                 &:last-child
#                     text-align: right
#         h2 
#             margin: 0
#             padding: 10px
#         a
#             color: gray
#         form
#             max-width: 400px
#             text-align: left
#             .form-group
#                 margin-top: 4px
#             .address
#                 padding: 5px 10px
#                 overflow: hidden
#                 text-overflow: ellipsis
#                 background: #dcdada
#                 border-radius: $border-radius
#                 font-size: 13px
#                 overflow: hidden
#                 text-overflow: ellipsis
#                 background: #E6F0FF
#                 color: #677897
#             input
#                 outline: none
#                 width: 100%
#                 box-sizing: border-box
#                 border: 0
#                 height: 30px
#                 border-radius: $border-radius
#                 padding: 0px 10px
#                 font-size: 12px
#                 margin: 1px
#                 border: 1px solid gray
#         .font-light
#             text-align: left
#             padding: 0
#             >.head
#                 width: 50%
#                 line-height: 70px
#                 vertical-align: middle
#                 line-height: 29px
#                 display: inline-block
#                 >.title
#                     color: #4469b1
#                 >.from
#                     font-size: $label-font
#                     color: gray
#                     font-weight: 100
#                     padding-left: $label-padding
#                 &.right
#                     text-align: right
#             img
#                 width: 34px
#         .usd
#             font-size: 11px
#             padding-left: $label-padding
#         .topup
#             display: inline-block
#             margin-left: 5px
#             color: orange
#             vertical-align: top
#             padding: 0 5px
#             border-radius: 3px
#             line-height: 12px
#             font-size: 12px
#         .not-enough
#             color: red
#             min-height: 30px
#         .gray
#             color: #CCC
#         .orange
#             color: #cf952c
#         .escrow
#             padding: 5px 11px
#             min-height: 20px
#             color: #cc625a
#             font-size: 14px
#         .green
#             color: #23b723
#         .bold
#             font-weight: bold
#         .buttons
#             margin-top: 10px
#             text-align: left
#             border-radius: 0px 0px 5px 5px
#             overflow: hidden
#             border: 1px solid white
#             border-top: 1px solid $primary
#             .btn
#                 width: 187px
#                 height: 40px
#                 line-height: 40px
#                 text-align: center
#                 font-size: 16px
#                 color: $primary
#                 display: inline-block
#                 cursor: pointer
#                 box-sizing: border-box
#                 &.btn-primary
#                     background: $primary
#                     color: white
#                     width: 161px
send = ({ store })->
    return null if not store?
    { send-to } = ethnamed store
    { send } = store.current
    { wallet } = send.coin
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
    send-money = (event)->
        return if send.sending is yes
        send.sending = yes
        err, data <- perform-send-safe
        send.sending = no
        return send.error = err.message ? err if err?
        notify-form-result send.id, null, data
        store.current.last-tx-url = "#{send.network.api.url}/transfer/#{data}"
        navigate store, \sent
    send-escrow = (event)->
        name = send.to
        amount-ethers = send.amount-send
        err <- send-to { name, amount-ethers }
    cancel = (event)->
        navigate store, \wallets
        notify-form-result send.id, "Cancelled by user"
    recepient-change = (event)->
        send.to = event.target.value ? ""
    amount-change = (event)->
        value = event.target.value.match(/^[0-9]+([.]([0-9]+)?)?$/)?0
        value2 = 
            | value?0 is \0 and value?1? and value?1 isnt \. => value.substr(1, value.length)
            | _ => value
        change-amount store, value2
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
        store.current.filter = [\IN, \OUT, wallet.coin.token]
        navigate store, \history
    topup = ->
        alert "Topup Service is not installed"
    network = 
        | store.current.network is \testnet => " (TESTNET) "
        | _ => ""
    receive = ->
        navigate store, \receive
    token = send.coin.token.to-upper-case!
    is-data = (send.data ? "").length > 0
    react.create-element 'div', { className: 'content content1469325038' }, children = 
        react.create-element 'div', { className: 'content-body' }, children = 
            react.create-element 'div', { className: 'padded-content' }, children = 
                react.create-element 'div', {}, children = 
                    react.create-element 'h2', { className: 'font-light m-b-xs' }, children = 
                        react.create-element 'span', { className: 'head' }, children = 
                            react.create-element 'div', { className: 'title' }, ' ' + token + network + ' WALLET'
                        react.create-element 'span', { className: 'head right' }, children = 
                            react.create-element 'img', { src: "#{wallet.coin.image}" }
                react.create-element 'div', {}, children = 
                    react.create-element 'form', { method: 'get' }, children = 
                        react.create-element 'div', { className: 'form-group' }, children = 
                            react.create-element 'label', { className: 'control-label' }, ' Send From'
                            react.create-element 'div', { className: 'address' }, children = 
                                react.create-element 'a', { href: "#{link}" }, ' ' + wallet.address
                        react.create-element 'div', { className: 'form-group' }, children = 
                            react.create-element 'label', { className: 'control-label' }, ' Recepient'
                            react.create-element 'div', {}, children = 
                                react.create-element 'input', { type: 'text', on-change: recepient-change, value: "#{send.to}", placeholder: "#{store.current.send-to-mask}" }
                        react.create-element 'div', { className: 'form-group' }, children = 
                            react.create-element 'label', { className: 'control-label' }, children = 
                                react.create-element 'span', {}, ' Amount'
                            react.create-element 'div', {}, children = 
                                react.create-element 'div', {}, children = 
                                    react.create-element 'input', { type: 'text', on-change: amount-change, placeholder: "0", value: "#{send.amount-send}", className: 'amount' }
                                    if wallet.network.topup
                                        react.create-element 'a', { href: "#{wallet.network.topup}", target: "_blank", className: 'topup' }, ' Top up?'
                                react.create-element 'div', { className: 'usd' }, ' Balance ' + wallet.balance
                                react.create-element 'div', { className: 'control-label not-enough text-left' }, ' ' + send.error
                        if is-data
                            react.create-element 'div', { className: 'form-group' }, children = 
                                react.create-element 'label', { className: 'control-label' }, children = 
                                    react.create-element 'span', {}, ' Data'
                                    react.create-element 'span', { className: 'gray' }
                                react.create-element 'div', {}, children = 
                                    react.create-element 'input', { read-only: "readonly", value: "#{show-data!}" }
                                    react.create-element 'button', { type: "button", on-click: encode-decode }, ' Show ' + show-label!
                        react.create-element 'div', {}, children = 
                            react.create-element 'table', { className: 'table table-striped' }, children = 
                                react.create-element 'tbody', {}, children = 
                                    react.create-element 'tr', {}, children = 
                                        react.create-element 'td', {}, ' You Send '
                                        react.create-element 'td', {}, children = 
                                            react.create-element 'div', {}, ' ' + when-empty(send.amount-send, 0) + '  ' + token
                                            react.create-element 'div', { className: 'usd' }, ' $ ' + send.amount-send-usd
                                    react.create-element 'tr', { className: 'green' }, children = 
                                        react.create-element 'td', {}, ' Recepient obtains'
                                        react.create-element 'td', {}, children = 
                                            react.create-element 'div', { className: 'bold' }, ' ' + send.amount-obtain + '  ' + token
                                            react.create-element 'div', { className: 'usd' }, ' $ ' + send.amount-obtain-usd
                                    react.create-element 'tr', { className: 'orange' }, children = 
                                        react.create-element 'td', {}, ' Transaction Fee '
                                        react.create-element 'td', {}, children = 
                                            react.create-element 'div', {}, ' ' + send.amount-send-fee + '  ' + token
                                            react.create-element 'div', { className: 'usd' }, ' $ ' + send.amount-send-fee-usd
                        react.create-element 'div', { className: 'escrow' }, children = 
                            if send.propose-escrow
                                react.create-element 'div', {}, ' You can send this funds to the Ethnamed smart-contract. Once the owner register the name he will obtain funds automatically'
            react.create-element 'div', { className: 'buttons' }, children = 
                react.create-element 'div', {}, children = 
                    if send.propose-escrow
                        react.create-element 'a', { on-click: send-escrow, className: 'btn btn-primary' }, children = 
                            react.create-element 'span', {}, ' Send (Escrow)'
                            if send.sending
                                react.create-element 'span', {}, ' ...'
                    else
                        react.create-element 'a', { on-click: send-money, className: 'btn btn-primary' }, children = 
                            react.create-element 'span', {}, ' Send'
                            if send.sending
                                react.create-element 'span', {}, ' ...'
                    react.create-element 'a', { on-click: cancel, className: 'btn btn-default' }, ' Cancel'
        if not is-data
            react.create-element 'div', { className: 'more-buttons' }, children = 
                react.create-element 'a', { on-click: receive, className: 'more receive' }, ' Receive'
                react.create-element 'a', { on-click: history, className: 'more history' }, ' History'
                react.create-element 'a', { on-click: topup, className: 'more history' }, ' Topup'
module.exports = send