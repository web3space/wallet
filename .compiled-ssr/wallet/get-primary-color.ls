require! {
    \./get-primary-coin.ls
}
module.exports = (store)->
    coin = get-primary-coin store
    coin?color