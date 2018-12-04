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
.content
    @import scheme
    $border-radius: 20px
    $label-padding: 12px
    $label-font: 12px
    >*
        display: inline-block
        margin: 10px 0 0 0
        text-align: center
        width: 94%
        box-sizing: border-box
        border-radius: 5px
    >.more-buttons
        border: 1px solid #e6e4e4
        background: rgba(255, 255, 255, 0.24)
        color: white
        >.more
            color: white
            width: 33.333%
            box-sizing: border-box
            display: inline-block
            text-align: center
            height: 32px
            line-height: 32px
            cursor: pointer
            border-left: 1px solid #e6e4e4
            &:first-child
                border-left: 0    
            &:hover
                background: white
                color: $primary
    >.content-body
        padding: 13px
        @import scheme
        background: white
        color: gray
        a
            color: gray
        >form
            >table
                background: rgba(243, 243, 243, 0.3)
                border-radius: 3px
                width: 100%
                border-spacing: 0
                tr
                    &.gray
                        color: #CCC
                    &.orange
                        color: #cf952c
                    &.green
                        color: #23b723
                    td
                        padding: 5px $label-padding
                        font-size: 14px
                        &:last-child
                            text-align: right
            max-width: 400px
            text-align: left
            >.control-label
                padding-top: 5px
                padding-left: $label-padding
                font-size: $label-font
            >.form-group
                margin-top: 4px
                .address
                    padding: 5px 10px
                    overflow: hidden
                    text-overflow: ellipsis
                    background: #dcdada
                    border-radius: $border-radius
                    font-size: 13px
                    overflow: hidden
                    text-overflow: ellipsis
                    background: #E6F0FF
                    color: #677897
                input
                    outline: none
                    width: 100%
                    box-sizing: border-box
                    border: 0
                    height: 30px
                    border-radius: $border-radius
                    padding: 0px 10px
                    font-size: 12px
                    margin: 1px
                    border: 1px solid gray
        >.header
            margin: 0
            padding: 10px
            text-align: left
            padding: 0
            >.head
                width: 50%
                line-height: 70px
                vertical-align: middle
                line-height: 29px
                display: inline-block
                color: #4469b1
                &.right
                    text-align: right
            img
                width: 34px
        .usd
            font-size: 11px
            padding-left: $label-padding
        .topup
            display: inline-block
            margin-left: 5px
            color: orange
            vertical-align: top
            padding: 0 5px
            border-radius: 3px
            line-height: 12px
            font-size: 12px
        .not-enough
            color: red
            min-height: 30px
        .escrow
            padding: 5px 11px
            min-height: 20px
            color: #cc625a
            font-size: 14px
        .bold
            font-weight: bold
        .buttons
            margin-top: 10px
            text-align: left
            border-radius: 0px 0px 5px 5px
            overflow: hidden
            border: 1px solid white
            border-top: 1px solid $primary
            .btn
                width: 187px
                height: 40px
                line-height: 40px
                text-align: center
                font-size: 16px
                color: $primary
                display: inline-block
                cursor: pointer
                box-sizing: border-box
                &.btn-primary
                    background: $primary
                    color: white
                    width: 161px
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
        | send.propose-escrow then 'Send (Escrow)'
        | _ => "Send"
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
    form-group = (title, content)->
        .pug.form-group
            label.pug.control-label #{title}
            content!
    .pug.content
        .pug.content-body
            .pug.header
                span.pug.head #{token + network} WALLET
                span.head.pug.right
                    img.pug(src="#{wallet.coin.image}")
            form.pug
                form-group 'Send From', ->
                    .address.pug 
                        a.pug(href="#{link}") #{wallet.address}
                form-group 'Recepient', ->
                    input.pug(type='text' on-change=recepient-change value="#{send.to}" placeholder="#{store.current.send-to-mask}")
                form-group 'Amount', ->
                    .pug
                        .pug
                            input.pug.amount(type='text' on-change=amount-change placeholder="0" value="#{send.amount-send}")
                            if wallet.network.topup
                                a.pug.topup(href="#{wallet.network.topup}" target="_blank") Top up?
                        .pug.usd Balance #{wallet.balance}
                        .pug.control-label.not-enough.text-left #{send.error}
                if is-data
                    form-group 'Data', ->
                        .pug
                            input.pug(read-only="readonly" value="#{show-data!}")
                            button.pug(type="button" on-click=encode-decode) Show #{show-label!}
                table.pug
                    tbody.pug
                        tr.pug
                            td.pug You Send 
                            td.pug
                                .pug #{when-empty(send.amount-send, 0) + '  ' + token}
                                .pug.usd $ #{send.amount-send-usd}
                        tr.pug.green
                            td.pug Recepient obtains
                            td.pug
                                .pug.bold #{send.amount-obtain + '  ' + token}
                                .pug.usd $ #{send.amount-obtain-usd}
                        tr.pug.orange
                            td.pug Transaction Fee
                            td.pug
                                .pug #{send.amount-send-fee + '  ' + token}
                                .pug.usd $ #{send.amount-send-fee-usd}
                .pug.escrow
                    if send.propose-escrow
                        .pug You can send this funds to the Ethnamed smart-contract. Once the owner register the name he will obtain funds automatically
            .pug.buttons
                a.pug.btn.btn-primary(on-click=send-anyway)
                    span.pug #{send-title}
                    if send.sending
                        span.pug ...
                a.pug.btn.btn-default(on-click=cancel) Cancel
        if not is-data
            .pug.more-buttons
                a.pug.more.receive(on-click=receive) Receive
                a.pug.more.history(on-click=history) History
                a.pug.more.history(on-click=topup) Topup
module.exports = send