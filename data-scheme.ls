require! {
    \./new-account.ls
    \./seed.ls
    \./networks.ls
    \prelude-ls : { map, pairs-to-obj }
}
saved-seed = seed.get(\seed).length > 0
seed-str = if saved-seed then seed.get(\seed) else "Hello World"
module.exports =
    current:
        refreshing: no
        page: \wallets
        status: \main
        nickname: ""
        nicknamefull: \nickname.domain.com
        message: ""
        custom-domain: no
        can-buy: no
        checking-name: no
        seed: seed-str
        saved-seed: saved-seed
        account: new-account seed-str
        balance-usd: \...
        filter: <[ IN OUT ]>
        send: 
            id: ""
            to: ""
            address: ''
            value: \0
            amount-send: \0
            amount-send-usd: \0
            amount-send-fee: \0
            amount-send-fee-usd: \0
            amount-obtain: \0
            data: ""
            decoded-data: ""
            show-data-mode: 'encoded'
    rates: networks |> Object.keys |> map (-> [it.to-upper-case!, USD: 0]) |> pairs-to-obj