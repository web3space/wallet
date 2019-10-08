require! {
    \react
    \../invoice-funcs.ls
    \prelude-ls : { map }
    \./receive.ls
    \react-google-recaptcha : { default: ReCAPTCHA }
    \../get-primary-info.ls
    \../get-lang.ls
}
.content
    position: relative
    @import scheme
    $border-radius: 5px
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
        left: 11px
    >.content-body
        top: 15px
        padding: 12px 12px 0px 12px
        height: 330px
        @import scheme
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
                    border-radius: $border-radius
                    font-size: 13px
                    overflow: hidden
                    text-overflow: ellipsis
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
                    box-shadow: none
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
                font-size: 20px
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
                border-radius: 5px
                width: 68%
                display: inline-block
                overflow: hidden
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
form-group = (title, icon-style, content)->
    .pug.form-group
        label.pug.control-label(style=icon-style) #{title}
        content!
recaptchaRef = react.createRef!
cancel-button = (store, web3t)->
    return null if store.preference.disableInvoice isnt yes
    lang = get-lang store
    { invoice, token, wallet, primary-button-style, recipient-change, description-change, amount-change, amount-usd-change, cancel, send-anyway, get-address-link, get-address-title, default-button-style, round5edit } = invoice-funcs store, web3t
    .pug.button-container
        .pug.buttons
            a.pug.btn.btn-default(on-click=cancel style=default-button-style) #{lang.cancel}
send-by-email = (store, web3t)->
    return null if store.preference.disableInvoice is yes
    { invoice, token, wallet, primary-button-style, recipient-change, description-change, amount-change, amount-usd-change, cancel, send-anyway, get-address-link, get-address-title, default-button-style, round5edit } = invoice-funcs store, web3t
    change = (response)->
        send-anyway response
    send = ->
        recaptchaRef.current.execute!
    style = get-primary-info store
    input-style=
        background: style.app.input
        color: style.app.text
        border: "1px solid #{style.app.border}"
        text: style.app.text
    icon-style =
        color: style.app.icon
    href-style=
        border: "1px solid #{style.app.border}"
    lang = get-lang store
    .pug.content-body
        .pug.header
            span.pug.head #{lang.invoice-header ? 'SEND INVOICE BY EMAIL'}
            span.head.pug.right
                img.pug(src="https://cdn3.iconfinder.com/data/icons/message-and-communication-sets/50/Icon_Email_Message-256.png")
        form.pug
            form-group lang.funding-address, icon-style, ->
                .address.pug(style=href-style)
                    a.pug(href="#{get-address-link wallet}") #{get-address-title wallet}
            form-group lang.recipient-email, icon-style, ->
                .pug
                    .pug.amount-field
                        .input-wrapper.pug
                            .label.crypto.pug @
                            input.pug.amount(type='text' style=input-style on-change=recipient-change value="#{invoice.to}" placeholder="email@address.com")
                        .input-wrapper.pug
                            .label.lusd.pug 
                            input.pug.amount-usd(type='text' style=input-style on-change=description-change value="#{invoice.data}" placeholder="Description")
                    ReCAPTCHA.pug(ref=recaptchaRef size="invisible" sitekey="6LeZ66AUAAAAAPqgD720Met5Prsq5B3AXl05G0vJ" on-change=change)
            form-group lang.amount, icon-style, ->
                .pug
                    .pug.amount-field
                        .input-wrapper.pug
                            .label.crypto.pug #{token}
                            input.pug.amount(type='text' style=input-style on-change=amount-change placeholder="0" title="#{invoice.amount-send}" value="#{round5edit invoice.amount-send}")
                        .input-wrapper.pug
                            .label.lusd.pug $
                            input.pug.amount-usd(type='text' style=input-style on-change=amount-usd-change placeholder="0" title="#{invoice.amount-send-usd}" value="#{round5edit invoice.amount-send-usd}")
        .pug.escrow
        .pug.button-container
            .pug.buttons
                a.pug.btn.btn-primary(on-click=send style=primary-button-style)
                    span.pug #{lang.send ? 'Send Email'}
                    if send.sending
                        span.pug ...
                a.pug.btn.btn-default(on-click=cancel style=default-button-style) #{lang.cancel}
send = ({ store, web3t })->
    { wallet } = invoice-funcs store, web3t
    .pug.content
        receive store, wallet
        send-by-email store, web3t
        cancel-button store, web3t
module.exports = send