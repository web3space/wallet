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
# .content670999182
#     @import scheme
#     background: white
#     color: gray
#     margin: 10px
#     text-align: center
#     .control-label
#         padding-top: 5px
#     table
#         border-spacing: 0
#         margin-top: 20px
#         td
#             padding: 5px
#     h2 
#         margin: 0
#         padding: 10px
#     a
#         color: gray
#     .more-buttons
#         border-top: 1px solid #e6e4e4
#         margin-top: 13px
#         .more
#             color: #737171
#             padding: 5px
#             border: 1px solid #b9b6b6
#             display: inline-block
#             margin: 3px
#             border-radius: 8px
#             margin-top: 22px
#             width: 147px
#             text-align: center
#             height: 14px
#             line-height: 14px
#             background: #efeeee
#             cursor: pointer
#             &:hover
#                 background: #efeeee - 10
#     .address
#         background: #dcdada
#         border: 1px solid gray
#         padding: 5px
#         border-radius: 5px
#         font-size: 13px
#         overflow: hidden
#         text-overflow: ellipsis
#     form
#         max-width: 400px
#         text-align: left
#         .form-group
#             margin-top: 10px
#         input
#             width: 100%
#             box-sizing: border-box
#             border: 0
#             height: 30px
#             border-radius: 4px
#             padding: 0px 10px
#             font-size: 12px
#             margin: 1px
#             border: 1px solid gray
#             &.amount
#                 width: 100px
#                 height: 50px
#                 font-size: 32px
#     padding: 13px
#     .font-light
#         text-align: left
#         padding: 7px 0
#         .head
#             line-height: 70px
#             vertical-align: middle
#             line-height: 35px
#             display: inline-block
#             >*
#                 padding-left: 10px
#             >.title
#             >.from
#                 font-size: 16px
#                 color: gray
#         img
#             width: 53px
#     .usd
#         font-size: 11px
#     .topup
#         display: inline-block
#         margin-left: 5px
#         color: orange
#         vertical-align: top
#         padding: 0 5px
#         border-radius: 3px
#         line-height: 12px
#         font-size: 12px
#     .not-enough
#         color: red
#     .gray
#         color: #CCC
#     .orange
#         color: #ab8540
#     .escrow
#         padding: 5px 4px
#         color: #adb551
#     .green
#         color: #095409
#     .bold
#         font-weight: bold
#     .buttons
#         margin-top: 10px
#         text-align: left
#         .btn
#             text-align: center
#             font-size: 16px
#             width: 156px
#             border-radius: 7px
#             height: 25px
#             margin: 3px
#             color: gray
#             display: inline-block
#             line-height: 27px
#             cursor: pointer
#             box-sizing: border-box
#             &.btn-primary
#                 background: $primary
#                 color: white
#                 width: 161px
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
        #console.log event.target.value
        value = event.target.value.match(/^[0-9]+([.]([0-9]+)?)?$/)?0
        value2 = 
            | value?0 is \0 and value?1? and value?1 isnt \. => value.substr(1, value.length)
            | _ => value
        #console.log { value }
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
    network = 
        | store.current.network is \testnet => " (TESTNET) "
        | _ => ""
    receive = ->
        navigate store, \receive
    react.create-element 'div', { className: 'content content670999182' }, children = 
        react.create-element 'div', {}, children = 
            react.create-element 'h2', { className: 'font-light m-b-xs' }, children = 
                react.create-element 'img', { src: "#{wallet.coin.image}", className: 'head' }
                react.create-element 'span', { className: 'head' }, children = 
                    react.create-element 'div', { className: 'title' }, ' ' + send.coin.token.to-upper-case! + network + ' WALLET'
                    react.create-element 'div', { className: 'from' }, ' Send from'
            react.create-element 'div', { className: 'address' }, children = 
                react.create-element 'a', { href: "#{link}" }, ' ' + wallet.address
        react.create-element 'div', {}, children = 
            react.create-element 'form', { method: 'get' }, children = 
                react.create-element 'div', { className: 'form-group' }, children = 
                    react.create-element 'label', { className: 'control-label' }, ' Recepient'
                    react.create-element 'div', {}, children = 
                        react.create-element 'input', { type: 'text', on-change: recepient-change, value: "#{send.to}", placeholder: "#{store.current.send-to-mask}" }
                react.create-element 'div', { className: 'hr-line-dashed' }
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
                if (send.data ? "").length > 0
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
                                    react.create-element 'div', {}, ' ' + when-empty send.amount-send, 0
                                    react.create-element 'div', { className: 'usd' }, ' ' + send.amount-send-usd + ' USD'
                            react.create-element 'tr', { className: 'green' }, children = 
                                react.create-element 'td', {}, ' Recepient obtains'
                                react.create-element 'td', {}, children = 
                                    react.create-element 'div', { className: 'bold' }, ' ' + send.amount-obtain + '  ' + send.coin.token
                                    react.create-element 'div', { className: 'usd' }, ' ' + send.amount-obtain-usd + ' USD'
                            react.create-element 'tr', { className: 'orange' }, children = 
                                react.create-element 'td', {}, ' Transaction Fee '
                                react.create-element 'td', {}, children = 
                                    react.create-element 'div', {}, ' ' + send.amount-send-fee + '  ' + send.coin.token
                                    react.create-element 'div', { className: 'usd' }, ' ' + send.amount-send-fee-usd + ' USD'
                react.create-element 'div', { className: 'buttons' }, children = 
                    react.create-element 'div', {}, children = 
                        if send.propose-escrow
                            react.create-element 'div', {}
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
                    if send.propose-escrow
                        react.create-element 'div', { className: 'escrow' }, ' You can send this funds to the Ethnamed smart-contract. Once the owner register the name he will obtain funds automatically'
                    react.create-element 'div', { className: 'more-buttons' }, children = 
                        react.create-element 'a', { on-click: receive, className: 'more receive' }, ' Receive'
                        react.create-element 'a', { on-click: history, className: 'more history' }, ' History'
module.exports = send