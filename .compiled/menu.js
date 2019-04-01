// Generated by LiveScript 1.6.0
(function(){
  var react, filter, whitebox, ref$, cut, money, naming, seed, useNetwork, web3, check, navigate, getPrimaryInfo, projectLinks, getContainer, generateWallet, state, adjustColor, buildSchema;
  react = require('react');
  filter = require('prelude-ls').filter;
  whitebox = require('whitebox');
  ref$ = require('./tools.ls'), cut = ref$.cut, money = ref$.money;
  naming = require('./naming.ls');
  seed = require('./seed.ls');
  useNetwork = require('./use-network.ls');
  web3 = require('./web3.ls');
  check = require('./pin.ls').check;
  navigate = require('./navigate.ls');
  getPrimaryInfo = require('./get-primary-info.ls');
  projectLinks = require('./project-links.ls');
  getContainer = whitebox.getContainer, generateWallet = whitebox.generateWallet;
  state = {
    timeout: null
  };
  adjustColor = function(col, amt){
    var usePound, num, r, b, g;
    usePound = false;
    if (col[0] === '#') {
      col = col.slice(1);
      usePound = true;
    }
    num = parseInt(col, 16);
    r = (num >> 16) + amt;
    if (r > 255) {
      r = 255;
    } else if (r < 0) {
      r = 0;
    }
    b = (num >> 8 & 255) + amt;
    if (b > 255) {
      b = 255;
    } else if (b < 0) {
      b = 0;
    }
    g = (num & 255) + amt;
    if (g > 255) {
      g = 255;
    } else if (g < 0) {
      g = 0;
    }
    return (usePound ? '#' : '') + (g | b << 8 | r << 16).toString(16);
  };
  buildSchema = function(firstColor){
    var secondColor, thirdColor;
    secondColor = adjustColor(firstColor, 50);
    thirdColor = adjustColor(firstColor, 100);
    return {
      backgroundImage: "linear-gradient(90deg, " + firstColor + " 0%, " + secondColor + " 89%, " + thirdColor + " 100%)"
    };
  };
  module.exports = function(arg$){
    var store, current, accounts, lock, refresh, activePage, chooseAccount, manageAccounts, selectPage, pages, changeSeed, saveSeed, editSeed, cancelTry, enterPin, generate, switchNetwork, activateS, activateS1, activateS2, activateS3, info, primaryColor, walletStyle, children;
    store = arg$.store;
    if (store == null) {
      return null;
    }
    current = store.current, accounts = store.accounts;
    lock = function(){
      return navigate(store, 'locked');
    };
    refresh = function(){
      return web3(store).refresh(function(){});
    };
    activePage = function(page){
      if (current.page === page) {
        return 'active';
      }
    };
    chooseAccount = curry$(function(selected, event){
      return import$(current.account, selected);
    });
    manageAccounts = function(event){
      return current.page = 'accounts';
    };
    selectPage = curry$(function(name, event){
      return current.page = name;
    });
    pages = ['wallets', 'history'];
    changeSeed = function(event){
      state.timeout = clearTimeout(state.timeout);
      current.seed = event.target.value;
      return state.timeout = setTimeout(refresh, 2000);
    };
    saveSeed = function(){
      seed.set(current.seed);
      return current.savedSeed = true;
    };
    editSeed = function(){
      if (!confirm("If you edit this, your old wallet is gone and all your coins are lost")) {
        return;
      }
      store.current.pin = "";
      return current.tryEditSeed = true;
    };
    cancelTry = function(){
      return current.tryEditSeed = false;
    };
    enterPin = function(e){
      store.current.pin = e.target.value;
      if (!check(store.current.pin)) {
        return;
      }
      cancelTry();
      return current.savedSeed = false;
    };
    generate = function(){
      if (!confirm("Are you sure you want to override the current seed?")) {
        return;
      }
      current.seed = generateWallet().mnemonic;
      return createAccount();
    };
    switchNetwork = function(){
      var network;
      network = (function(){
        switch (false) {
        case store.current.network !== 'mainnet':
          return 'testnet';
        default:
          return 'mainnet';
        }
      }());
      return useNetwork(web3(store), store, network, function(){});
    };
    activateS = curry$(function(name, event){
      return store.menu.active = name;
    });
    activateS1 = activateS('s1');
    activateS2 = activateS('s2');
    activateS3 = activateS('s3');
    info = getPrimaryInfo(store);
    primaryColor = info.color;
    walletStyle = (function(){
      switch (false) {
      case primaryColor != null:
        return {};
      default:
        return buildSchema(primaryColor);
      }
    }());
    return react.createElement('div', {
      className: 'menu menu2034493859'
    }, children = react.createElement('div', {
      className: 'viewport'
    }, children = [
      react.createElement('div', {
        className: 'viewport-icons'
      }, children = [
        react.createElement('div', {
          className: 'absolute left'
        }, children = [
          react.createElement('img', {
            src: "https://res.cloudinary.com/dfbhd7liw/image/upload/v1543530765/wallet/reload.png",
            onClick: refresh,
            className: store.current.refreshing + " reload"
          }), react.createElement('span', {
            onClick: switchNetwork,
            className: 'network'
          }, ' ' + store.current.network), react.createElement('span', {
            onClick: switchNetwork,
            className: 'chevron'
          }, ' >')
        ]), react.createElement('span', {
          className: 'center'
        }, children = react.createElement('img', {
          src: info.branding.logo + "",
          className: 'logo'
        })), react.createElement('div', {
          className: 'absolute right'
        }, children = react.createElement('img', {
          src: "https://res.cloudinary.com/dfbhd7liw/image/upload/v1543523582/wallet/Path.png",
          onClick: lock,
          className: 'lock'
        }))
      ]), react.createElement('div', {
        className: store.menu.active + " viewport-header viewport-move"
      }, children = [
        react.createElement('div', {
          onClick: activateS1,
          className: 'text s1'
        }, ' Secret Phrase'), react.createElement('div', {
          onClick: activateS2,
          className: 'text s2'
        }, ' Balance'), react.createElement('div', {
          onClick: activateS3,
          className: 'text s3'
        }, ' Project Links'), react.createElement('div', {
          className: 'text-line'
        })
      ]), react.createElement('div', {
        style: walletStyle,
        className: store.menu.active + " viewport-background viewport-move"
      }), react.createElement('div', {
        className: store.menu.active + " viewport-content viewport-move"
      }, children = [
        react.createElement('div', {
          onClick: activateS1,
          className: 'slide s1'
        }, children = react.createElement('div', {
          className: 'slide-body'
        }, children = (function(){
          switch (false) {
          case current.tryEditSeed !== true:
            return react.createElement('div', {
              className: 'box'
            }, children = [
              react.createElement('div', {}, children = react.createElement('input', {
                onChange: enterPin,
                value: current.pin + "",
                placeholder: "Enter PIN"
              })), react.createElement('div', {}, '    '), react.createElement('button', {
                onClick: cancelTry
              }, ' Cancel')
            ]);
          case current.savedSeed !== false:
            return react.createElement('div', {
              className: 'box'
            }, children = [
              react.createElement('div', {
                className: 'title'
              }, children = [
                react.createElement('span', {}, ' Secret Text'), react.createElement('a', {
                  onClick: generate,
                  className: 'generate'
                }, ' (generate)')
              ]), react.createElement('textarea', {
                onChange: changeSeed,
                value: current.seed + "",
                placeholder: "Secret words"
              }), react.createElement('div', {}, children = react.createElement('button', {
                onClick: saveSeed
              }, ' Save'))
            ]);
          case current.savedSeed !== true:
            return react.createElement('div', {}, children = react.createElement('button', {
              onClick: editSeed
            }, ' Edit Secret'));
          }
        }()))), react.createElement('div', {
          onClick: activateS2,
          className: 'slide s2'
        }, children = react.createElement('div', {
          className: 'slide-body'
        }, children = [
          react.createElement('div', {
            className: 'decor'
          }, ' $'), react.createElement('div', {
            className: 'currency'
          }, ' USD'), react.createElement('div', {
            className: 'amount'
          }, children = [
            react.createElement('div', {
              className: 'symbol'
            }, ' $'), react.createElement('div', {
              className: 'number'
            }, ' ' + money(current.balanceUsd))
          ])
        ])), react.createElement('div', {
          onClick: activateS3,
          className: 'slide s3'
        }, children = react.createElement('div', {
          className: 'slide-body'
        }, children = projectLinks({
          store: store
        })))
      ]), react.createElement('div', {
        className: store.menu.active + " viewport-switchs viewport-move"
      }, children = [
        react.createElement('div', {
          onClick: activateS1,
          className: 'switch s1'
        }), react.createElement('div', {
          onClick: activateS2,
          className: 'switch s2'
        }), react.createElement('div', {
          onClick: activateS3,
          className: 'switch s3'
        })
      ]), react.createElement('div', {
        className: store.menu.active + " viewport-decoration viewport-move"
      }, children = react.createElement('div', {
        className: 'circle'
      }))
    ]));
  };
  function import$(obj, src){
    var own = {}.hasOwnProperty;
    for (var key in src) if (own.call(src, key)) obj[key] = src[key];
    return obj;
  }
  function curry$(f, bound){
    var context,
    _curry = function(args) {
      return f.length > 1 ? function(){
        var params = args ? args.concat() : [];
        context = bound ? context || this : this;
        return params.push.apply(params, arguments) <
            f.length && arguments.length ?
          _curry.call(context, params) : f.apply(context, params);
      } : f;
    };
    return _curry();
  }
}).call(this);
