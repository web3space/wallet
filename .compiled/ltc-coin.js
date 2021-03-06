// Generated by LiveScript 1.6.0
(function(){
  var mainnet, testnet, color, type, enabled, token, image, usdInfo, out$ = typeof exports != 'undefined' && exports || this;
  out$.mainnet = mainnet = {
    decimals: 8,
    txFee: '0.0001',
    txFeeOptions: {
      auto: '0.0001',
      cheap: '0.000014'
    },
    mask: 'L000000000000000000000000000000000',
    api: {
      provider: 'insight',
      url: 'https://insight.litecore.io',
      decimal: 8
    },
    messagePrefix: '\x19Litecoin Signed Message:\n',
    bip32: {
      'public': 0x019da462,
      'private': 0x019d9cfe
    },
    pubKeyHash: 0x30,
    scriptHash: 0x32,
    wif: 0xb0
  };
  out$.testnet = testnet = {
    decimals: 8,
    txFee: '0.0001',
    txFeeOptions: {
      auto: '0.0001',
      cheap: '0.000014'
    },
    topup: 'https://litecoin-faucet.com/',
    mask: 'n000000000000000000000000000000000',
    api: {
      provider: 'insight',
      url: 'https://testnet.litecore.io',
      decimal: 8
    },
    messagePrefix: '\x19Litecoin Signed Message:\n',
    bip32: {
      'public': 0x0436ef7d,
      'private': 0x0436f6e1
    },
    pubKeyHash: 0x6f,
    scriptHash: 0xc4,
    wif: 0xef
  };
  out$.color = color = '#a04b55';
  out$.type = type = 'coin';
  out$.enabled = enabled = true;
  out$.token = token = 'ltc';
  out$.image = image = './res/litecoin-ethnamed.png';
  out$.usdInfo = usdInfo = "url(https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,LTC,DASH,XEM,USDT&tsyms=USD).LTC.USD";
}).call(this);
