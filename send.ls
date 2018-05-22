require! {
    \react
    \mobx : { toJS }
    \./math.ls : { times, minus }
    \./api.ls : { create-transaction, push-tx }
    \./change-amount.ls
    \./send-form.ls : { notify-form-result }
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
    .address
        background: #dcdada
        border: 1px solid gray
        padding: 5px
        border-radius: 5px
        font-size: 13px
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
            margin: 1px
            border: 1px solid gray
            &.amount
                width: 100px
                height: 50px
                font-size: 32px
    padding: 25px
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
    .not-enough
        color: red
    .gray
        color: #CCC
    .orange
        color: #ab8540
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
            width: 100px
            border-radius: 7px
            height: 25px
            margin: 3px
            color: gray
            display: inline-block
            line-height: 27px
            cursor: pointer
            &.btn-primary
                background: #75cee1
                color: white
                width: 150px
send = ({ store })->
    return null if not store?
    { send } = store.current
    { wallet } = send.network
    link = "#{send.network.api.url}/address/#{send.address}"
    perform-send = (cb)->
        tx =
            sender: { wallet.address, wallet.private-key } 
            recepient: send.to
            network: send.network
            amount: send.amount-send
            amount-fee: send.amount-send-fee
            data: send.data
        #console.log tx
        err, data <- create-transaction tx
        return cb err if err?
        agree = confirm "Are you sure to send #{tx.amount} #{send.network.token} to #{send.to}"
        return cb "You are not agree" if not agree
        err, tx <- push-tx { send.network, ...data }
        cb err, tx
    send-money = (event)->
        return if send.sending is yes
        send.sending = yes
        err, data <- perform-send
        send.sending = no
        return send.error = err.message ? err if err?
        notify-form-result send.id, null, data
    cancel = (event)->
        store.current.page = \wallets
        notify-form-result send.id, "Cancelled by user"
    recepient-change = (event)->
        send.to = event.target.value ? ""
    amount-change = (event)->
        amount-send = event.target.value.match(/^[0-9]+$/)?0
        change-amount store, amount-send
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
    .pug.content
        .pug
            h2.pug.font-light.m-b-xs
                img.pug.head(src="#{wallet.network.image}")
                span.pug.head 
                    .pug.title #{send.network.token.to-upper-case!} WALLET
                    .pug.from Send from
            .address.pug 
                a.pug(href="#{link}") #{wallet.address}
        .pug
            form.pug(method='get')
                .pug.form-group
                    label.pug.control-label Recepient
                    .pug
                        input.pug(type='text' on-change=recepient-change value="#{send.to}" placeholder="#{send.network.mask}")
                .pug.hr-line-dashed
                .pug.form-group
                    label.pug.control-label
                        span.pug Amount
                    .pug
                        input.pug.amount(type='text' on-change=amount-change placeholder="0" value="#{send.amount-send}")
                        .pug.usd Balance #{wallet.balance}
                    if send.error
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
                                    .pug.bold #{send.amount-obtain + '  ' + send.network.token}
                                    .pug.usd #{send.amount-obtain-usd} USD
                            tr.pug.orange
                                td.pug Transaction Fee 
                                td.pug
                                    .pug #{send.amount-send-fee + '  ' + send.network.token}
                                    .pug.usd #{send.amount-send-fee-usd} USD
                .pug.buttons
                    .pug
                        a.pug.btn.btn-primary(on-click=send-money)
                            span.pug Send
                            if send.sending
                                span.pug ...
                        a.pug.btn.btn-default(on-click=cancel) Cancel
module.exports = send