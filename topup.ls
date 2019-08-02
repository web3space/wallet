require! {
    \./topup-loader.ls : { get-topup-address }
}
module.exports = (store)-> (e)->
    store.current.send-menu-open = no
    { send } = store.current
    { token } = send?coin ? {}
    { network } = store.current
    { address } = send?wallet ? {}
    address = get-topup-address store, { token, network, address }
    if address?
        window.open address
    else if wallet.network.topup
        window.open wallet.network.topup
    else
        alert "Topup Service is not installed"