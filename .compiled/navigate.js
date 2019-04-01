// Generated by LiveScript 1.6.0
(function(){
  var window, pages, saved, oldseed, transaction, scrollTop, getPage, initControl, focusControl, toString$ = {}.toString;
  window = require('./browser/window.ls');
  pages = require('./pages.ls');
  saved = require('./seed.ls').saved;
  oldseed = require('./oldseed.ls');
  transaction = require('mobx').transaction;
  scrollTop = require('./scroll-top.ls');
  getPage = function(store, page){
    var stage2;
    if (page !== ':init') {
      return page;
    }
    stage2 = store.current.page === 'locked' || !saved();
    if (stage2) {
      store.current.seed = oldseed();
    }
    if (stage2) {
      return 'newseed';
    }
    return 'wallets';
  };
  initControl = function(store, name, cb){
    var control;
    control = pages[name];
    if (toString$.call(control != null ? control.init : void 8).slice(8, -1) !== 'Function') {
      return cb(null);
    }
    return control.init(store, cb);
  };
  focusControl = function(store, name, cb){
    var control;
    scrollTop();
    control = pages[name];
    if (toString$.call(control != null ? control.focus : void 8).slice(8, -1) !== 'Function') {
      return cb(null);
    }
    return control.focus(store, cb);
  };
  module.exports = function(store, page){
    var name;
    scrollTop();
    store.current.page = 'loading';
    name = getPage(store, page);
    return initControl(store, name, function(){
      store.current.page = name;
      return focusControl(store, name, function(){});
    });
  };
}).call(this);
