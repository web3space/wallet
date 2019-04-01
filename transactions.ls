require! {
    \mobx : { observable, toJS }
    \prelude-ls : { each, map, pairs-to-obj, filter, map }
    \./api.ls : { get-transactions }
    \./workflow.ls : { run, task }
    \./pending-tx.ls : { get-pending-txs, remove-tx }
}
export transactions = observable []
same = (x, y)->
    x?toUpperCase?! is y?toUpperCase?!
extend = ({ address, coin, pending, network }, tx)-->
    tx.type = 
        | tx.to `same` address => \IN
        | _ => \OUT
    tx.token = coin.token ? tx.token
    tx.pending = pending ? tx.pending
    tx.network = network ? tx.network
transform-ptx = ([tx, amount, fee, time])->
    { tx, amount, to: \pending , url: '#', fee: fee, time }
export rebuild-history = (store, wallet, cb)->
    { address, network, coin } = wallet
    err, data <- get-transactions { address, network, coin.token }
    console.log \get-transactions, { err, data, network }
    return cb err if err?
    ids = 
        data |> map (.tx)
    dummy = (err, data)->
        console.log err, data
    err, ptxs <- get-pending-txs { network, store, coin.token }
    #console.log \ptxs, { err, ptxs, network, coin.token }
    return cb err if err?
    ptxs 
        |> filter -> ids.index-of(it.0) isnt -1
        |> each -> remove-tx { store, coin.token, network, tx: it.0 }, dummy
    err, ptxs <- get-pending-txs { network, store, coin.token }
    #console.log { err, ptxs, network, coin.token }
    return cb err if err?
    txs = transactions
    txs
        |> filter (.token is coin.token)
        |> each -> txs.splice txs.index-of(it), 1
    data 
        |> each extend { address, coin, network }
        |> each txs~push
    ptxs 
        |> map transform-ptx
        |> each extend { address, coin, network, pending: yes }
        |> each txs~push
    cb!
build-loader = (store)-> (wallet)-> task (cb)->
    err <- rebuild-history store, wallet
    return cb! if err? 
    cb null
export load-all-transactions = (store, cb)->
    { wallets } = store.current.account
    loaders =
        wallets |> map build-loader store
    tasks =
        loaders
            |> map -> [loaders.index-of(it).to-string!, it]
            |> pairs-to-obj
    run [tasks] .then cb