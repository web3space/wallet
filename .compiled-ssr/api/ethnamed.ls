require! {
    \./addresses.json : { Ethnamed }
    \./Ethnamed.abi.json : abi
    \superagent : { post, get }
    \solidity-sha3 : { sha3num }
    \./config.json : { url }
    \./get-verify-email-url.ls
    \./json-parse.js
}
to-hex = (o)->
    return o if not o?
    return o if o.to-string!.index-of('0x') is 0
    n = +o
    \0x + n.toString(16)
get-contract-instance = (web3, abi, addr)->
    | typeof! web3.eth.contract is \Function => web3.eth.contract(abi).at(addr)
    | _ => new web3.eth.Contract(abi, addr)
extract-signature = (signature)->
    sig = signature.slice 2
    r = \0x + sig.slice 0, 64
    s = \0x + sig.slice 64, 128
    v = \0x + sig.slice 128, 130
    { v, r, s }
get-domain = (name)->
    | name.index-of(\.) > -1 => name
    | _ => "#{name}.ethnamed.io"
verify-email = (emailkey, cb)->
    url = get-verify-email-url emailkey
    err, data <- get url .end
    return cb data.text if err?
    json-parse data.text, cb
get-access-key = ({ name, record }, cb)->
    return cb "Name is required" if not name?
    return cb "Record is required" if not record?
    domain = get-domain name
    err, data <- post url .set(\name, domain).set(\record, record).end
    return cb data.text if err?
    json-parse data.text, cb
get-paid-transaction = (web3, contract, gas-limit, amount, length, name, record, block-expiry, owner, v, r, s)->
    to-wei = web3.utils?to-wei ? web3.to-wei
    data =
        | contract.methods? => contract.methods.set-or-update-record(length, name, record, block-expiry, owner, v, r, s).encodeABI!
        | _ => contract.set-or-update-record.get-data(length, name, record, block-expiry, owner, v, r, s)
    transaction =
        to: Ethnamed
        gas: to-hex gas-limit
        value: to-wei("#{amount}", \ether).to-string!
        data: data
        decoded-data: "setOrUpdateRecord(\"#{length}\", \"#{name}\", \"#{record}\", \"#{block-expiry}\", \"#{owner}\", \"#{v}\", \"#{r}\", \"#{s}\")"
get-free-transaction = (web3, contract, gas-limit, amount, length, name, record, block-expiry, owner, v, r, s)->
    to-wei = web3.utils?to-wei ? web3.to-wei
    data =
        | contract.methods? => contract.methods.set-or-update-record2(length, name, record, block-expiry, owner, v, r, s).encodeABI!
        | _ => contract.set-or-update-record2.get-data(length, name, record, block-expiry, owner, v, r, s)
    transaction =
        to: Ethnamed
        gas: to-hex gas-limit
        value: 0
        data: data
        decoded-data: "setOrUpdateRecord2(\"#{length}\", \"#{name}\", \"#{record}\", \"#{block-expiry}\", \"#{owner}\", \"#{v}\", \"#{r}\", \"#{s}\")"
builder-setup-record = (web3, contract)-> ({ amount-ethers, name, record, owner }, cb)->
    to-wei = web3.utils?to-wei ? web3.to-wei
    err, access-key <- get-access-key { name, record }
    return cb "Owner address is not defined" if not owner?
    return cb err if err?
    return cb "Access keys not found" if not access-key?
    { signature, record, name, length, block-expiry } = access-key
    { v, r, s } = extract-signature signature
    amount = (amount-ethers ? "0").to-string!
    err, data <- web3.eth.get-block \latest
    gas-limit = +data.gas-limit - 10
    #gas-limit = 21000 + 1000
    get-transaction =
        | amount isnt \0 => get-paid-transaction
        | _ => get-free-transaction
    transaction = 
        get-transaction web3, contract, gas-limit, amount, length, name, record, block-expiry, owner, v, r, s
    web3.eth.send-transaction transaction, cb
builder-whois = (web3, contract)-> (record, cb)->
    hash = sha3num record
    return contract.methods.whois hash .call cb if contract.methods?
    contract.whois hash, cb
builder-verify-record = (web3, contract) -> (name, cb)->
    return cb err if err?
    return contract.methods.resolve(get-domain(name)).call cb if contract.methods?
    contract.resolve get-domain(name), cb
builder-send-to = (web3, contract)-> ({ amount-ethers, name }, cb)->
    return cb "Amount ETH is required" if not amount-ethers?
    return cb "Name is required" if not name?
    to-wei = web3.utils?to-wei ? web3.to-wei
    data = 
        | contract.methods? => contract.methods.send-to(name).encodeABI!
        | _ => contract.methods.send-to.get-data name
    transaction =
        to: Ethnamed
        gas: to-hex 5000000
        value: to-wei("#{amount-ethers}", \ether).to-string!
        data: data
        decoded-data: "sendTo(\"#{name}\")"
    web3.eth.send-transaction transaction, cb
module.exports = (web3)->
    contract = get-contract-instance web3, abi, Ethnamed
    setup-record = builder-setup-record web3, contract
    verify-record = builder-verify-record web3, contract
    whois = builder-whois web3, contract
    send-to = builder-send-to web3, contract
    { ...contract, setup-record, verify-record, whois, verify-email, send-to }