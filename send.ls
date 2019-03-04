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
    \./round5edit.ls
    \./topup-loader.ls : { get-topup-address }
    \./get-primary-info.ls
    \./pending-tx.ls : { create-pending-tx }
    \./transactions.ls : { rebuild-history }
    \prelude-ls : { map }
    \./address-link.ls : { get-address-link, get-address-title }
}
.content
    position: relative
    @import scheme
    $border-radius: 20px
    $label-padding: 12px
    $label-font: 12px
    >*
        display: inline-block
        text-align: center
        width: 376px
        box-sizing: border-box
        border-radius: $border-radius
        position: absolute
        left: 11px
    >.more-buttons
        background: rgba(255, 255, 255, 0.24)
        top: 545px
        color: white
        padding: 5px
        border-radius: 20px
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
                color: white - 20
    >.decoration
        top: 8px
        left: 28px
        width: 344px
        background: rgba(255, 255, 255, 0.24)
        height: 23px
        border-radius: 15px
    >.content-body
        top: 15px
        padding: 12px 12px 0px 12px
        height: 520px
        @import scheme
        background: white
        color: gray
        a
            color: gray
        >form
            >table
                background: #e6f0ff
                border-radius: 10px
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
                        padding: 3px 10px
                        font-size: 14px
                        &:last-child
                            text-align: right
            max-width: 400px
            text-align: left
            >.form-group
                >.control-label
                    padding-top: 5px
                    padding-left: $label-padding
                    font-size: $label-font
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
                    height: 30px
                    border-radius: $border-radius
                    padding: 0px 10px
                    font-size: 12px
                    margin: 1px
                    border: 1px solid #5E72E4
                .amount-field
                    >.input-wrapper
                        position: relative
                        width: 50%
                        display: inline-block
                        box-sizing: border-box
                        margin: 0
                        >.label
                            position: absolute
                            top: 5px
                            display: inline
                            &.lusd
                                left: 5px
                            &.crypto
                                right: 5px
                                color: #5E72E4
                        input
                            width: 100%
                            &.amount
                                border-radius: $border-radius 0 0 $border-radius
                                border-right: 0
                            &.amount-usd
                                background: #f1eeee
                                padding-left: 20px
                                border-radius: 0 $border-radius $border-radius 0
        >.header
            margin: 0
            padding: 10px
            text-align: left
            padding: 0
            >.head
                width: 70%
                line-height: 70px
                font-size: 27px
                font-weight: 700
                vertical-align: middle
                line-height: 29px
                display: inline-block
                color: #677897
                &.right
                    text-align: right
                    width: 30%
            img
                width: 34px
                border-radius: 50px
        .usd
            font-size: 11px
            padding-left: $label-padding
            color: gray
        .topup
            display: inline-block
            margin-left: 5px
            color: orange
            vertical-align: top
            padding: 0 5px
            border-radius: 3px
            line-height: 12px
            font-size: 12px
        .balance
            color: #5E72E4
        .not-enough
            color: red
            min-height: 30px
            padding: 0 11px
            font-size: 12px
        .fast-cheap
            text-align: right
            height: 14px
            line-height: 14px
            padding: 3px
            flex-direction: row
            display: flex
            >*
                padding: 0 5px
                font-size: 10px
                border-radius: 4px
                cursor: pointer
                text-align: center
                &.chosen
                    cursor: default
                    background: #3a63e4
                    color: white
                &.space
                    flex: 1
        .escrow
            padding: 5px 11px
            min-height: 20px
            color: #cc625a
            font-size: 14px
        .bold
            font-weight: bold
        .button-container
            text-align: center
            .buttons
                margin-top: 10px
                text-align: left
                border-radius: 100px
                width: 260px
                display: inline-block
                overflow: hidden
                box-shadow: 0px 0px 9px #bbbbbb
                .btn
                    width: 50%
                    height: 40px
                    line-height: 40px
                    text-align: center
                    font-size: 16px
                    color: $primary
                    display: inline-block
                    cursor: pointer
                    box-sizing: border-box
                    transaction: all .5s
                    &.btn-primary
                        background: #6CA7ED
                        color: white
                    &:hover
                        background: rgba(#6CA7ED, 0.2)
                        color: #6CA7ED
build-send-option = (store, option)-->
    { send } = store.current
    chosen =
        | option is send.tx-type => \chosen
        | _ => ""
    select-option = ->
        send.tx-type = option
        change-amount store, send.amount-send
    .pug.switch(class="#{chosen}" on-click=select-option) #{option.to-upper-case!}
send = ({ store })->
    return null if not store?
    { send-to } = ethnamed store
    { send } = store.current
    { wallet } = send
    return null if not wallet?
    color = get-primary-info(store).color
    primary-button-style = 
        background: color
    default-button-style = { color }
    send-tx = ({ to, wallet, network, amount-send, amount-send-fee, data, coin, tx-type }, cb)->
        { token } = send.coin
        tx =
            account: { wallet.address, wallet.private-key } 
            recipient: to
            network: network
            token: token
            coin: coin
            amount: amount-send
            amount-fee: amount-send-fee
            data: data
        #console.log 'before create tx'
        err, data <- create-transaction tx
        #console.log 'after create tx', err
        return cb err if err?
        agree = confirm "Are you sure to send #{tx.amount} #{send.coin.token} to #{send.to}"
        #console.log 'after confirm', agree
        return cb "You are not agree" if not agree
        err, tx <- push-tx { token, tx-type, network, ...data }
        return cb err if err?
        err <- create-pending-tx { store, token, network, tx, amount-send, amount-send-fee }
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
        return if wallet.balance is \...
        return if send.sending is yes
        send.sending = yes
        err, data <- perform-send-safe
        send.sending = no
        return send.error = "#{err.message ? err}" if err?
        notify-form-result send.id, null, data
        store.current.last-tx-url = "#{send.network.api.url}/tx/#{data}"
        navigate store, \sent
        <- rebuild-history store, wallet
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
    recipient-change = (event)->
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
        { token } = send.coin
        { network } = store.current
        { address } = wallet
        address = get-topup-address { token, network, address }
        if address?
            window.open address
        else if wallet.network.topup
            window.open wallet.network.topup
        else
            alert "Topup Service is not installed"
    network = 
        | store.current.network is \testnet => " (TESTNET) "
        | _ => ""
    receive = ->
        navigate store, \receive
    token = send.coin.token.to-upper-case!
    fee-token = (wallet.network.tx-fee-in ? send.coin.token).to-upper-case!
    is-data = (send.data ? "").length > 0
    choose-auto = ->
        send.fee-type = \auto
        change-amount store, send.amount-send
    choose-fast = ->
        send.fee-type = \fast
        change-amount store, send.amount-send
    choose-cheap = ->
        send.fee-type = \cheap
        change-amount store, send.amount-send
    chosen-fast  =  if send.fee-type is \fast then \chosen else ""
    chosen-cheap =  if send.fee-type is \cheap then \chosen else ""
    chosen-auto  =  if send.fee-type is \auto then \chosen else ""
    console.log send.network
    send-options = send.coin.tx-types ? []
    form-group = (title, content)->
        .pug.form-group
            label.pug.control-label #{title}
            content!
    .pug.content
        .pug.decoration
        .pug.content-body
            .pug.header
                span.pug.head #{token + network} WALLET
                span.head.pug.right
                    img.pug(src="#{send.coin.image}")
            form.pug
                form-group 'Send From', ->
                    .address.pug
                        a.pug(href="#{get-address-link wallet}") #{get-address-title wallet}
                form-group 'Recipient', ->
                    input.pug(type='text' on-change=recipient-change value="#{send.to}" placeholder="#{store.current.send-to-mask}")
                form-group 'Amount', ->
                    .pug
                        .pug.amount-field
                            .input-wrapper.pug
                                .label.crypto.pug #{token}
                                input.pug.amount(type='text' on-change=amount-change placeholder="0" value="#{round5edit send.amount-send}")
                            .input-wrapper.pug
                                .label.lusd.pug $
                                input.pug.amount-usd(type='text' on-change=amount-usd-change placeholder="0" value="#{round5edit send.amount-send-usd}")
                        .pug.usd
                            span.pug Balance
                            span.pug.balance #{wallet.balance + ' ' + token} 
                        .pug.control-label.not-enough.text-left #{send.error}
                if is-data
                    form-group 'Data', ->
                        .pug
                            input.pug(read-only="readonly" value="#{show-data!}")
                            button.pug(type="button" on-click=encode-decode) Show #{show-label!}
                table.pug
                    tbody.pug
                        tr.pug
                            td.pug You Spend 
                            td.pug
                                .pug #{round5(send.amount-charged) + '  ' + token}
                                .pug.usd $ #{round5 send.amount-charged-usd}
                        tr.pug.green
                            td.pug Recipient Obtains
                            td.pug
                                .pug.bold #{round5(send.amount-obtain) + '  ' + token}
                                .pug.usd $ #{round5 send.amount-obtain-usd}
                        tr.pug.orange
                            td.pug Transaction Fee
                            td.pug
                                .pug #{round5(send.amount-send-fee) + '  ' + fee-token}
                                .pug.usd $ #{round5(send.amount-send-fee-usd)}
                .pug.fast-cheap
                    send-options |> map build-send-option store
                    .pug.space
                    .pug.switch(on-click=choose-auto class="#{chosen-auto}") AUTO
                    .pug.switch(on-click=choose-fast class="#{chosen-fast}") FAST
                    .pug.switch(on-click=choose-cheap  class="#{chosen-cheap}") CHEAP
                .pug.escrow
                    if send.propose-escrow
                        .pug You can send this funds to the Ethnamed smart-contract. Once the owner register the name he will obtain funds automatically
            .pug.button-container
                .pug.buttons
                    a.pug.btn.btn-primary(on-click=send-anyway style=primary-button-style)
                        span.pug #{send-title}
                        if send.sending
                            span.pug ...
                    a.pug.btn.btn-default(on-click=cancel style=default-button-style) CANCEL
        if not is-data
            .pug.more-buttons
                a.pug.more.receive(on-click=receive) RECEIVE
                a.pug.more.history(on-click=history) HISTORY
                a.pug.more.history(on-click=topup) TOPUP
module.exports = send