require! {
    \mobx : { observable, toJS }
    \prelude-ls : { each, map, pairs-to-obj }
    \./api.ls : { get-transactions }
    \./workflow.ls : { run, task }
}
export transactions = observable []
same = (x, y)->
    x?toUpperCase?! is y?toUpperCase?!
extend = ({ address, coin }, tx)-->
    tx.type = 
        | tx.to `same` address => \IN
        | _ => \OUT
    tx.token = coin.token
build-loader = (wallet)-> task (cb)->
    { address, network, coin } = wallet
    err, data <- get-transactions { address, network, coin.token }
    return cb! if err?
    data 
        |> each extend { address, coin }
        |> each transactions~push
    cb!
export load-all-transactions = (store, cb)->
    transactions.length = 0
    { wallets } = store.current.account
    loaders =
        wallets |> map build-loader
    tasks =
        loaders 
            |> map -> [loaders.index-of(it).to-string!, it]
            |> pairs-to-obj
    run [tasks] .then cb