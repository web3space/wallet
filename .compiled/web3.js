// Generated by LiveScript 1.5.0
(function(){
  var networks, ref$, objToPairs, map, pairsToObj, guid, waitFormResult, changeAmount, div, plus, web3, buildSendTransaction, buildNetworkSpecific, buildApi, toString$ = {}.toString;
  networks = require('./networks.ls');
  ref$ = require('prelude-ls'), objToPairs = ref$.objToPairs, map = ref$.map, pairsToObj = ref$.pairsToObj;
  guid = require('./guid.ls');
  waitFormResult = require('./send-form.ls').waitFormResult;
  changeAmount = require('./change-amount.ls');
  ref$ = require('./math.ls'), div = ref$.div, plus = ref$.plus;
  networks = require('./networks.ls');
  web3 = require('../eth.ls');
  buildSendTransaction = function(store, network){
    return function(tx, cb){
      var to, data, decodedData, value, gas, ref$, id, current, send, amountObtain, amountObtainUsd, amountSendUsd, amountSendFee, amountSendFeeUsd, amountSend;
      if (toString$.call(tx).slice(8, -1) !== 'Object') {
        return cb("Transaction is required");
      }
      to = tx.to, data = tx.data, decodedData = tx.decodedData, value = tx.value, gas = tx.gas;
      if (toString$.call(tx.to).slice(8, -1) !== 'String') {
        return cb("Recepient (to) is required");
      }
      if ((ref$ = toString$.call(value).slice(8, -1)) !== 'String' && ref$ !== 'Number') {
        return cb("Value is required");
      }
      id = guid();
      current = store.current;
      send = current.send;
      amountObtain = '0';
      amountObtainUsd = '0';
      amountSendUsd = '0';
      amountSendFee = '0';
      amountSendFeeUsd = '0';
      amountSend = div(value, Math.pow(10, network.decimals));
      importAll$(send, {
        to: to,
        data: data,
        decodedData: decodedData,
        network: network,
        value: value,
        gas: gas,
        id: id,
        amountSend: amountSend,
        amountObtain: amountObtain,
        amountObtainUsd: amountObtainUsd,
        amountSendUsd: amountSendUsd,
        amountSendFee: amountSendFee,
        amountSendFeeUsd: amountSendFeeUsd
      });
      changeAmount(store, amountSend);
      current.page = 'send';
      return waitFormResult(id, function(err, data){
        if (err != null) {
          return cb(err);
        }
        return cb(null, data);
      });
    };
  };
  buildNetworkSpecific = function(network){
    switch (false) {
    case network.token !== 'eth':
      return web3.eth;
    default:
      return {};
    }
  };
  buildApi = function(store, it){
    var sendTransaction;
    sendTransaction = buildSendTransaction(store, it[1]);
    return importAll$(buildNetworkSpecific(it[1]), {
      sendTransaction: sendTransaction
    });
  };
  module.exports = function(store){
    var result;
    result = pairsToObj(
    map(function(it){
      return [it[0], buildApi(store, it)];
    })(
    objToPairs(
    networks)));
    return importAll$(result, {
      utils: web3.utils
    });
  };
  function importAll$(obj, src){
    for (var key in src) obj[key] = src[key];
    return obj;
  }
}).call(this);
