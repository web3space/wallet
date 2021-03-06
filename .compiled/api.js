// Generated by LiveScript 1.6.0
(function(){
  var waves, eth, insight, xem, erc20, omni, eos, stellar, tron, toJS, ref$, pairsToObj, objToPairs, providers, action, calcFee, getKeys, getBalance, getTransactions, createTransaction, pushTx, out$ = typeof exports != 'undefined' && exports || this;
  waves = require('../web3t/providers/waves.ls');
  eth = require('../web3t/providers/eth.ls');
  insight = require('../web3t/providers/insight.ls');
  xem = require('../web3t/providers/xem.ls');
  erc20 = require('../web3t/providers/erc20.ls');
  omni = require('../web3t/providers/omni.ls');
  eos = require('../web3t/providers/eos.ls');
  stellar = require('../web3t/providers/stellar.ls');
  tron = require('../web3t/providers/tron.ls');
  toJS = require('mobx').toJS;
  ref$ = require('prelude-ls'), pairsToObj = ref$.pairsToObj, objToPairs = ref$.objToPairs;
  providers = {
    eth: eth,
    waves: waves,
    insight: insight,
    xem: xem,
    erc20: erc20,
    omni: omni,
    eos: eos,
    stellar: stellar,
    tron: tron
  };
  action = function(func){
    return function(config, cb){
      var ref$, ref1$, provider, ref2$;
      if ((config != null ? (ref$ = config.network) != null ? (ref1$ = ref$.api) != null ? ref1$.provider : void 8 : void 8 : void 8) == null) {
        return cb("provider is not defined");
      }
      provider = (ref2$ = providers[config.network.api.provider]) != null ? ref2$ : insight;
      return func(provider, config, cb);
    };
  };
  out$.calcFee = calcFee = action(function(provider, config, cb){
    return provider.calcFee(config, cb);
  });
  out$.getKeys = getKeys = action(function(provider, config, cb){
    return provider.getKeys(config, cb);
  });
  out$.getBalance = getBalance = action(function(provider, config, cb){
    return provider.getBalance(config, cb);
  });
  out$.getTransactions = getTransactions = action(function(provider, config, cb){
    return provider.getTransactions(config, cb);
  });
  out$.createTransaction = createTransaction = action(function(provider, config, cb){
    return provider.createTransaction(config, cb);
  });
  out$.pushTx = pushTx = action(function(provider, config, cb){
    return provider.pushTx(config, cb);
  });
}).call(this);
