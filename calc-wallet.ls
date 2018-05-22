require! {
    \./api.ls : { get-balance }
    \./math.ls : { times, plus }
    \./networks.ls
}
round5 = (value)->
    return \... if not value?
    [head, dec] = value.to-string!.split(\.)
    return head if not dec?
    "#{head}.#{dec.substr 0, 5}"
calc-wallet = (store)->
    return null if not store?
    { wallets } = store.current.account
    { rates } = store
    state = 
        balance-usd: 0
    add-balance = (wallet, cb)->
        err, balance <- get-balance { wallet.address, wallet.network }
        return wallet.balance = \... if err?
        wallet.balance = balance
        token = wallet.network.token.replace(\Testnet, '').to-upper-case!
        usd-rate = rates[token].USD
        wallet.balance-usd = balance `times` usd-rate
        state.balance-usd = state.balance-usd `plus` wallet.balance-usd
        store.current.balance-usd = round5 state.balance-usd
        wallet.usd-rate = round5 usd-rate
        networks[wallet.network.token].wallet = wallet
        cb!
    process-wallets = ([head, ...tail], cb)->
        return cb! if not head?
        <- add-balance head
        <- process-wallets tail
        cb!
    <- process-wallets wallets
    store.current.balance-usd = round5 state.balance-usd
module.exports = calc-wallet