require! {
    \web3 : \Web3
    \./config.json : { ethNet, guest-account }
    \./blockchain/config.json : networks
}
{ ownerAddress, web3Provider } = networks[ethNet]
init-custom = (ownerAddress)->
    web3 = new Web3(new Web3.providers.HttpProvider(web3Provider))
    web3.eth.default-account = ownerAddress
    web3
module.exports = init-custom(ownerAddress)