export btc =
    id: \bitcoin
    token: \btc
    decimals: 8
    tx-fee: \0.0000004
    mask: '1000000000000000000000000000000000'
    image: \//res.cloudinary.com/nixar-work/image/upload/v1525223912/btc-ethnamed.png
    api: 
        provider: \insight
        url: \https://insight.bitpay.com
        decimal: 8
    message-prefix: '\x18Bitcoin Signed Message:\n'
    bip32:
        public: 0x0488b21e
        private: 0x0488ade4
    pubKeyHash: 0x00
    scriptHash: 0x05
    wif: 0x80
export eth =
    id: \ethereum
    token: \eth
    decimals: 18
    tx-fee: \0.000084
    message-prefix: 'Ethereum'
    mask: \0x0000000000000000000000000000000000000000
    image: \http://res.cloudinary.com/nixar-work/image/upload/v1525224009/eth-ethnamed.png
    api:
        provider: \none
        #url: \https://etherscan.io
        url: \https://ropsten.etherscan.io
export zec =
    id: \zcash
    decimals: 8
    token: \zec
    tx-fee: \0.0001
    mask: 't000000000000000000000000000000000'
    image: \//res.cloudinary.com/nixar-work/image/upload/v1525380044/zcash_icon.png
    api: 
        provider: \insight
        url: \https://zcashnetwork.info
        decimal: 8
    message-prefix: '\x18Zcash Signed Message:\n'
    bip32:
        public: 0x0488b21e
        private: 0x05358394
    pubKeyHash: 0x1CB8
    scriptHash: 0x1CBD
    wif: 0x80
#export xmr =
#    id: \monero
#    token: \xmr
#    message-prefix: 'Monero'
#    api:
#        provider: \none
#export waves =
#    id: \waves
#    decimals: 8
#    token: \waves
#    tx-fee: \0.001
#    mask: '3P000000000000000000000000000000000'
#    image: \//res.cloudinary.com/nixar-work/image/upload/v1525380100/waves-icon.png
#    message-prefix: 'Waves'
#    api:
#        provider: \none
#        url: \https://wavesexplorer.com
#export btc-testnet =
#    id: \btcTestnet
#    token: \btcTestnet
#    tx-fee: 0.0001
#    mask: '1000000000000000000000000000000000'
#    image: \http://res.cloudinary.com/nixar-work/image/upload/v1525223912/btc-ethnamed.png
#    api:
#        provider: \insight
#        url: \https://testnet.blockexplorer.com
#        decimal: 8
#    messagePrefix: '\x18Bitcoin Signed Message:\n'
#    bech32: 'tb'
#    bip32:
#        public: 0x043587cf
#        private: 0x04358394
#    pubKeyHash: 0x6f
#    scriptHash: 0xc4
#    wif: 0xef
export ltc = 
    id: \litecoin
    decimals: 8
    token: \ltc
    tx-fee: \0.0001
    mask: 'L000000000000000000000000000000000'
    image: \//res.cloudinary.com/nixar-work/image/upload/v1525224071/litecoin-ethnamed.png
    api: 
        provider: \insight
        url: \https://insight.litecore.io
        decimal: 8
    message-prefix: '\x19Litecoin Signed Message:\n'
    bip32:
        public: 0x019da462
        private: 0x019d9cfe
    pub-key-hash: 0x30
    script-hash: 0x32
    wif: 0xb0
export dash =
    id: \dash
    decimals: 8
    token: \dash
    tx-fee: \0.0001
    mask: 'X000000000000000000000000000000000'
    image: \//res.cloudinary.com/nixar-work/image/upload/v1525224030/dash-ethnamed.png
    api: 
        provider: \insight
        url: \https://insight.dash.org
        decimal: 8
    message-prefix: '\x19DarkCoin Signed Message:\n'
    bip32:
        public: 0x02fe52f8
        private: 0x02fe52cc
    pub-key-hash: 0x4c
    script-hash: 0x10
    wif: 0xcc
    dust-threshold: 5460
#export doge =
#    id: \doge
#    token: \doge
#    api: 
#        provider: \none
#    messagePrefix: '\x19Dogecoin Signed Message:\n'
#    bip32:
#        public: 0x02facafd
#        private: 0x02fac398
#    pubKeyHash: 0x1e
#    scriptHash: 0x16
#    wif: 0x9e
#    dustThreshold: 0