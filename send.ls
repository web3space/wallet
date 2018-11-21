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
    background: white
    color: gray
    margin: 10px
    text-align: center
    .control-label
        padding-top: 5px
    table
        border-spacing: 0
        margin-top: 20px
        td
            padding: 5px
    h2 
        margin: 0
        padding: 10px
    a
        color: gray
    .more-buttons
        border-top: 1px solid #e6e4e4
        margin-top: 13px
        .more
            color: #737171
            padding: 5px
            border: 1px solid #b9b6b6
            display: inline-block
            margin: 3px
            border-radius: 8px
            margin-top: 22px
            width: 147px
            text-align: center
            height: 14px
            line-height: 14px
            background: #efeeee
            cursor: pointer
            &:hover
                background: #efeeee - 10
    .address
        background: #dcdada
        border: 1px solid gray
        padding: 5px
        border-radius: 5px
        font-size: 13px
        overflow: hidden
        text-overflow: ellipsis
    form
        max-width: 400px
        text-align: left
        .form-group
            margin-top: 10px
        input
            width: 100%
            box-sizing: border-box
            border: 0
            height: 30px
            border-radius: 4px
            padding: 0px 10px
            font-size: 12px
            margin: 1px
            border: 1px solid gray
            &.amount
                width: 100px
                height: 50px
                font-size: 32px
    padding: 13px
    .font-light
        text-align: left
        padding: 7px 0
        .head
            line-height: 70px
            vertical-align: middle
            line-height: 35px
            display: inline-block
            >*
                padding-left: 10px
            >.title
            >.from
                font-size: 16px
                color: gray
        img
            width: 53px
    .usd
        font-size: 11px
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
    .gray
        color: #CCC
    .orange
        color: #ab8540
    .escrow
        padding: 5px 4px
        color: #adb551
    .green
        color: #095409
    .bold
        font-weight: bold
    .buttons
        margin-top: 10px
        text-align: left
        .btn
            text-align: center
            font-size: 16px
            width: 156px
            border-radius: 7px
            height: 25px
            margin: 3px
            color: gray
            display: inline-block
            line-height: 27px
            cursor: pointer
            box-sizing: border-box
            &.btn-primary
                background: #75cee1
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
    .pug.content
        .pug
            h2.pug.font-light.m-b-xs
                img.pug.head(src="#{wallet.coin.image}")
                span.pug.head 
                    .pug.title #{send.coin.token.to-upper-case! + network} WALLET
                    .pug.from Send from
            .address.pug 
                a.pug(href="#{link}") #{wallet.address}
        .pug
            form.pug(method='get')
                .pug.form-group
                    label.pug.control-label Recepient
                    .pug
                        input.pug(type='text' on-change=recepient-change value="#{send.to}" placeholder="#{store.current.send-to-mask}")
                .pug.hr-line-dashed
                .pug.form-group
                    label.pug.control-label
                        span.pug Amount
                    .pug
                        .pug
                            input.pug.amount(type='text' on-change=amount-change placeholder="0" value="#{send.amount-send}")
                            if wallet.network.topup
                                a.pug.topup(href="#{wallet.network.topup}" target="_blank") Top up?
                        .pug.usd Balance #{wallet.balance}
                        .pug.control-label.not-enough.text-left #{send.error}
                if (send.data ? "").length > 0
                    .pug.form-group
                        label.pug.control-label 
                            span.pug Data
                            span.pug.gray
                        .pug
                            input.pug(read-only="readonly" value="#{show-data!}")
                            button.pug(type="button" on-click=encode-decode) Show #{show-label!}
                .pug
                    table.table.table-striped.pug
                        tbody.pug
                            tr.pug
                                td.pug You Send 
                                td.pug
                                    .pug #{when-empty send.amount-send, 0}
                                    .pug.usd #{send.amount-send-usd} USD
                            tr.pug.green
                                td.pug Recepient obtains
                                td.pug
                                    .pug.bold #{send.amount-obtain + '  ' + send.coin.token}
                                    .pug.usd #{send.amount-obtain-usd} USD
                            tr.pug.orange
                                td.pug Transaction Fee 
                                td.pug
                                    .pug #{send.amount-send-fee + '  ' + send.coin.token}
                                    .pug.usd #{send.amount-send-fee-usd} USD
                .pug.buttons
                    .pug
                        if send.propose-escrow
                            .pug
                            a.pug.btn.btn-primary(on-click=send-escrow)
                                span.pug Send (Escrow)
                                if send.sending
                                    span.pug ...
                        else
                            a.pug.btn.btn-primary(on-click=send-money)
                                span.pug Send
                                if send.sending
                                    span.pug ...
                        a.pug.btn.btn-default(on-click=cancel) Cancel
                    if send.propose-escrow
                        .pug.escrow You can send this funds to the Ethnamed smart-contract. Once the owner register the name he will obtain funds automatically
                    .pug.more-buttons
                        a.pug.more.receive(on-click=receive) Receive
                        a.pug.more.history(on-click=history) History
module.exports = send