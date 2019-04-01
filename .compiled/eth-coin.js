// Generated by LiveScript 1.6.0
(function(){
  var mainnet, ethnamed, ropsten, color, testnet, type, enabled, token, image, usdInfo, out$ = typeof exports != 'undefined' && exports || this;
  out$.mainnet = mainnet = {
    decimals: 18,
    txFee: '0.0014',
    txFeeOptions: {
      auto: '0.0014',
      cheap: '0.00014'
    },
    messagePrefix: 'Ethereum',
    mask: '0x0000000000000000000000000000000000000000',
    api: {
      provider: 'eth',
      web3Provider: 'https://mainnet.infura.io/UoCkF4efTrbEGU8Qpcs0',
      url: 'https://etherscan.io',
      apiUrl: 'https://api.etherscan.io/api'
    }
  };
  out$.ethnamed = ethnamed = {
    decimals: 18,
    txFee: '0.0014',
    txFeeOptions: {
      auto: '0.0014',
      cheap: '0.00014'
    },
    messagePrefix: 'Ethereum',
    mask: '0x0000000000000000000000000000000000000000',
    api: {
      provider: 'eth',
      web3Provider: 'http://web3.space:9000',
      url: 'http://web3.space:8000',
      apiUrl: 'http://web3.space:8000/api'
    }
  };
  out$.ropsten = ropsten = {
    decimals: 18,
    txFee: '0.0014',
    txFeeOptions: {
      auto: '0.0014',
      cheap: '0.00014'
    },
    messagePrefix: 'Ethereum',
    mask: '0x0000000000000000000000000000000000000000',
    api: {
      provider: 'eth',
      web3Provider: 'https://ropsten.infura.io/UoCkF4efTrbEGU8Qpcs0',
      url: 'https://ropsten.etherscan.io',
      apiUrl: 'https://api-ropsten.etherscan.io/api'
    }
  };
  out$.color = color = '#5838B8';
  out$.testnet = testnet = ropsten;
  out$.type = type = 'coin';
  out$.enabled = enabled = true;
  out$.token = token = 'eth';
  out$.image = image = './res/eth-ethnamed.png';
  out$.usdInfo = usdInfo = "url(https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,LTC,DASH,XEM,USDT&tsyms=USD).ETH.USD";
}).call(this);
