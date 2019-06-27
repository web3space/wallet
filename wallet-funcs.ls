require! {
    \prelude-ls : { each }
    \./web3.ls
    \./round5.ls
    \./get-primary-info.ls
}
module.exports = (store, wallets, wallet)->
    index = wallets.index-of wallet
    #type = 
    #    | index is 0 => \top
    #    | index + 1 is wallets.length => \bottom
    #    | _ => \middle
    return null if not store? or not wallet?
    lweb3 = web3(store)
    send = (wallet, event)-->
        return alert "Not yet loaded" if not wallet?
        { send-transaction } = lweb3[wallet.coin.token]
        to = ""
        value = 0
        err <- send-transaction { to, value }
        console.log err if err?
    usd-rate = wallet?usd-rate ? 0
    expand = ->
        store.current.wallet-index = index
    active = if index is store.current.wallet-index then \active else ''
    big = 
        | index is store.current.wallet-index => \big
        | wallets.length < 3 => \big
        | _ => ""
    balance = round5(wallet.balance) + ' ' + wallet.coin.token.to-upper-case!
    pending = round5(wallet.pending-sent) + ' ' + wallet.coin.token.to-upper-case!
    button-style=
        color: get-primary-info(store).color
    last = 
        | wallets.length < 4 and index + 1 is wallets.length => \last
        | _ => ""
    { button-style, wallet, active, big, balance, pending, send, expand, usd-rate, last }