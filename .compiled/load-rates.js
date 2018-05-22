// Generated by LiveScript 1.5.0
(function(){
  var get, loadRates;
  get = require('superagent').get;
  loadRates = function(store, cb){
    return get("https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,LTC,ZEC,DASH,WAVES&tsyms=USD").end(function(err, data){
      if (err) {
        return cb(err);
      }
      store.rates = data.body;
      return cb(null);
    });
  };
  module.exports = loadRates;
}).call(this);
