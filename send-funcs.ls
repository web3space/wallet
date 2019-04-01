require! {
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
    \./web3.ls
}
module.exports = (store)->
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
    check-enough = (cb)->
        amount = wallet.balance `minus` send.amount-send `minus` (wallet.pending-sent ? 0) `minus` send.amount-send-fee
        return cb "Not Enough funds" if +amount < 0
        cb null
    send-money = ->
        return if wallet.balance is \...
        return if send.sending is yes
        err <- check-enough
        return send.error = "#{err.message ? err}" if err?
        send.sending = yes
        err, data <- perform-send-safe
        send.sending = no
        return send.error = "#{err.message ? err}" if err?
        notify-form-result send.id, null, data
        store.current.last-tx-url = "#{send.network.api.url}/tx/#{data}"
        navigate store, \sent
        <- web3(store).refresh
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
    #change-amount-proxy = (store, value)->
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
    debug = (cb)->
        { token } = send.coin
        { address } = wallet
        tx = "fake tx"
        amount-send = 1
        amount-send-fee = 0.01
        err <- create-pending-tx { store, token, send.network, tx, amount-send, amount-send-fee }
        <- web3(store).refresh
        console.log \fake, { network, err }
        cb null
    history = ->
        #<- debug
        store.current.filter = [\IN, \OUT, send.coin.token]
        navigate store, \history
    topup = ->
        { token } = send.coin
        { network } = store.current
        { address } = wallet
        address = get-topup-address store, { token, network, address }
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
    choose-cheap = ->
        send.fee-type = \cheap
        change-amount store, send.amount-send
    chosen-cheap =  if send.fee-type is \cheap then \chosen else ""
    chosen-auto  =  if send.fee-type is \auto then \chosen else ""
    send-options = send.coin.tx-types ? []
    pending = wallet.pending-sent + ' ' + token
    use-max-amount = ->
        amount = wallet.balance `minus` (wallet.pending-sent ? 0) `minus` send.amount-send-fee
        return alert "You have no enough funds to send any tx" if +amount <= 0
        send.amount-send = amount
        change-amount store, send.amount-send
    { token, network, send, wallet, pending, fee-token, primary-button-style, recipient-change, amount-change, amount-usd-change, use-max-amount, show-data, show-label, topup, history, receive, cancel, send-anyway, choose-auto, choose-cheap, chosen-auto, chosen-cheap, get-address-link, get-address-title, default-button-style, round5edit, round5, send-options, send-title, is-data, encode-decode, change-amount }