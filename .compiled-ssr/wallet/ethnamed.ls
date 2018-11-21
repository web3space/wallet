require! {
    \../api/ethnamed.ls
    \./web3.ls
}
module.exports = (store)-> 
    #console.log typeof! web3, web3
    ethnamed web3(store)