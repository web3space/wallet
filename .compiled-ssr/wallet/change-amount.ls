require! {
    \./math.ls : { times, minus, plus, div }
    \mobx : { toJS, transaction }
    \./api.ls : { calc-fee }
}
change-amount = (store, amount-send)->
    { send } = store.current
    { wallet, token } = send.coin
    #return if not send.wallet
    result-amount-send = amount-send ? 0
    err, calced-fee <- calc-fee { token, send.network, amount: result-amount-send }
    return send.error = "Calc Fee Error: #{err.message ? err}" if err?
    tx-fee = calced-fee ? send.network.tx-fee
    usd-rate = wallet?usd-rate ? 0
    <- transaction
    send.amount-send = amount-send ? ""
    send.value = result-amount-send `times` (10 ^ send.network.decimals)
    send-usd = result-amount-send `times` usd-rate
    send.amount-obtain = result-amount-send
    send.amount-obtain-usd = send.amount-obtain `times` usd-rate
    send.amount-send-usd = send-usd
    send.amount-send-fee = tx-fee
    send.amount-charged =  result-amount-send `plus` tx-fee
    send.amount-send-fee-usd = tx-fee `times` usd-rate
    send.error = 
        if parse-float(wallet.balance `minus` result-amount-send) < 0
        then "Not Enough Funds"
        else ""
module.exports = change-amount