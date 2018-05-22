require! {
    \superagent : { get }
}
load-rates = (store, cb)->
    err, data <- get "https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,LTC,ZEC,DASH,WAVES&tsyms=USD" .end 
    return cb err if err
    store.rates = data.body 
    cb null
module.exports = load-rates