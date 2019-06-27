require! {
    \react
    \../send-funcs.ls
    \prelude-ls : { map }
}
.content
    position: relative
    @import scheme
    $border-radius: 20px
    $label-padding: 12px
    $label-font: 12px
    .pending
        color: orange
    >*
        display: inline-block
        text-align: center
        width: 94%
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
                color: #fff - 20
    >.decoration
        top: 8px
        left: 28px
        width: 86%
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
                        &.small
                            width: 25%
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
                            &.amount-eur
                                background: #f1eeee
                                padding-left: 20px
                                border-radius: 0 $border-radius $border-radius 0
                                border-left: 0
                            &.amount-usd
                                background: #f1eeee
                                padding-left: 20px
                                border-radius: 0
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
            padding-left: 4px
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
        .send-all
            background: #3a63e4
            outline: none
            border: 0
            color: white
            border-radius: 4px
            font-size: 10px
            text-align: center
            padding: 0 5px
            cursor: pointer
        .not-enough
            color: red
            min-height: 33px
            padding: 0 4px
            font-size: 12px
            max-height: 20px
            overflow: hidden
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
            @media screen and (max-width: 290px)
                min-height: 0
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
                width: 68%
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
build-send-option = ({ store, change-amount} , option)-->
    { send } = store.current
    chosen =
        | option is send.tx-type => \chosen
        | _ => ""
    select-option = ->
        send.tx-type = option
        change-amount store, send.amount-send
    .pug.switch(class="#{chosen}" on-click=select-option) #{option.to-upper-case!}
form-group = (title, content)->
    .pug.form-group
        label.pug.control-label #{title}
        content!
send = ({ store })->
    { token, fee-token, network, send, wallet, pending, primary-button-style, recipient-change, amount-change, amount-usd-change, amount-eur-change, use-max-amount, show-data, show-label, topup, history, receive, cancel, send-anyway, choose-auto, choose-cheap, chosen-auto, chosen-cheap, get-address-link, get-address-title, default-button-style, round5edit, round5, send-options, send-title, is-data, encode-decode, change-amount, invoice } = send-funcs store
    round-money = (val)->
        +val |> (-> it * 100) |> Math.round |> (-> it / 100)
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
                                input.pug.amount(type='text' on-change=amount-change placeholder="0" title="#{send.amount-send}" value="#{round5edit send.amount-send}")
                            .input-wrapper.small.pug
                                .label.lusd.pug $
                                input.pug.amount-usd(type='text' on-change=amount-usd-change placeholder="0" title="#{send.amount-send-usd}" value="#{round-money send.amount-send-usd}")
                            .input-wrapper.small.pug
                                .label.lusd.pug €
                                input.pug.amount-eur(type='text' on-change=amount-eur-change placeholder="0" title="#{send.amount-send-eur}" value="#{round-money send.amount-send-eur}")
                        .pug.usd
                            button.pug.send-all(on-click=use-max-amount type="button") USE MAX
                            span.pug Balance
                            span.pug.balance
                                span.pug #{wallet.balance + ' ' + token}
                                if +wallet.pending-sent >0
                                    span.pug.pending - #{pending} pending
                        .pug.control-label.not-enough.text-left(title="#{send.error}") #{send.error}
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
                                .pug(title="#{send.amount-charged}") #{round5(send.amount-charged) + '  ' + token}
                                .pug.usd $ #{round5 send.amount-charged-usd}
                        tr.pug.green
                            td.pug Recipient Obtains
                            td.pug
                                .pug.bold #{round5(send.amount-obtain) + '  ' + token}
                                .pug.usd $ #{round5 send.amount-obtain-usd}
                        tr.pug.orange
                            td.pug Transaction Fee
                            td.pug
                                .pug(title="#{send.amount-send-fee}") #{round5(send.amount-send-fee) + '  ' + fee-token}
                                .pug.usd $ #{round5(send.amount-send-fee-usd)}
                .pug.fast-cheap
                    send-options |> map build-send-option { store, change-amount }
                    .pug.space
                    .pug.switch(on-click=choose-auto class="#{chosen-auto}") AUTO
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
                a.pug.more.receive(on-click=invoice) INVOICE
                a.pug.more.history(on-click=history) HISTORY
                a.pug.more.history(on-click=topup) TOPUP
module.exports = send