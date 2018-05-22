require! {
    \mobx : { observable, toJS }
    \prelude-ls : { each }
    \./api.ls : { get-transactions }
}
export transactions = observable []
same = (x, y)->
    x?toUpperCase?! is y?toUpperCase?!
load-transactions = ([head, ...tail], cb)->
    return cb null if not head?
    { address, network } = head
    err, data <- get-transactions { address, network }
    extend = (tx)->
        tx.type = 
            | tx.to `same` address => \IN
            | _ => \OUT
    if not err?
        data |> each extend |> each transactions~push
    load-transactions tail, cb
export load-all-transactions = (store, cb)->
    transactions.length = 0
    { wallets } = store.current.account
    load-transactions wallets, cb