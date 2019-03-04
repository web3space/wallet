require! {
    \web3 : \Web3
    #\ethereumjs-tx : \Tx
    #\ethereumjs-util : \eth-util
    #\bignumber.js : BN
}
#numToHex = (inputBn) ->
#    ethUtil.addHexPrefix(new BN(inputBn ? 0).toString(16))
export create-web3 = ({ network })->
    web3 = new Web3!
    #address = \0x + eth-util.private-to-address(private-key).to-string \hex
    web3.set-provider(new web3.providers.HttpProvider(web3-provider))
    #web3.eth.default-account = address
    web3.eth.send-transaction = ({ to, value, data }, cb)->
        cb "Not Implemented"
        #send-transaction { private-key, to, value, data }, cb
    web3
#get-address = (web3, tx-hash, cb) ->
#  err, tx <- web3.eth.get-transaction tx-hash
#  return cb err if err?
#  return cb "Tx is not mined yet." if not tx.blockNumber?
#  err, tx-receipt <- web3.eth.get-transaction-receipt tx-hash
#  return cb err if err?
#  return cb "tx-receipt is not available" if not tx-receipt?
#  contract-address = txReceipt.contract-address
#  contract-url = "#{etherscanBaseUrl}/address/#{contractAddress}"
#  cb null, { contract-address, contract-url }
#export try-get-address = (web3, tx-hash, cb) ->
#  err, data <- get-address web3, tx-hash
#  return cb null, data if not err?
#  return cb err if err? and err isnt "Tx is not mined yet."
#  <- set-timeout _, 1000
#  err, data <- try-get-address web3, tx-hash
#  cb err, data
#export send-transaction = ({ private-key, to, value, data }, cb)->
#  return cb "Private Key is required" if not private-key?
#  web3 = create-web3 private-key
#  err, gas-estimate <-! web3.eth.estimate-gas { data }
#  return cb err if err?
#  gas-estimate = /*gas-estimate ?*/ new BN(\6000000)
#  err, gas-price <-! web3.eth.get-gas-price
#  return cb err if err?
#  err, nonce <-! web3.eth.get-transaction-count web3.eth.default-account, \pending
#  return cb err if err?
#  #console.log "Estimated nonce:", nonce
#  
#  raw-tx =
#    to: to
#    nonce: numToHex nonce
#    gas: numToHex gas-estimate
#    gas-price: numToHex gas-price
#    value: numToHex value
#    from: web3.eth.default-account
#    data: data
#  private-key-strip = if private-key.length is 66 
#                      then private-key.replace('0x', '') 
#                      else private-key
#  ownerPrivateKeyHex = new Buffer(private-key-strip, \hex)
#  tx = new Tx raw-tx
#  # подписываем тразаацию
#  tx.sign ownerPrivateKeyHex
#  
#  serialized-tx = tx.serialize!
#  hex = serialized-tx.to-string \hex
#  
#  # отправляем транзакцию 
#  err, tx-hash <- web3.eth.send-raw-transaction "0x#{hex}"
#  return cb err if err?
#  tx-url = "#{etherscanBaseUrl}/tx/#{txHash}"
#  err, res <- try-get-address web3, tx-hash
#  return cb err if err?
#  
#  { contract-address, contract-url } = res
#  cb null, { tx-hash, tx-url, contract-address, contract-url }