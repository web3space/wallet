require! {
    \react
    \prelude-ls : { filter }
    \whitebox
    \./tools.ls : { cut, money }
    \./naming.ls
    \./seed.ls
    \./refresh-account.ls
    \./use-network.ls
    \./web3.ls
    \./pin.ls : { check } 
}
{ get-container, generate-wallet } = whitebox
# .menu-1821002069
#     background: #eae7e7
#     position: relative
#     .network
#         color: #989696
#         font-size: 10px
#         text-align: center
#         padding: 3px
#         text-transform: uppercase
#         font-weight: 100
#         .active
#             color: #36bbd8 - 1
#             cursor: default
#         cursor: pointer
#     padding-top: 9px
#     .box-container
#         margin: 0 10px 3px 10px
#         .box
#             padding: 10px
#             background: white
#             width: 100%
#             box-sizing: border-box
#             display: inline-block
#             border-radius: 5px
#             color: black
#             border: 1px solid #dcd9d9
#             .title
#                 font-size: 14px
#                 .generate
#                     color: #75cee1
#                     cursor: pointer
#                     margin-left: 5px
#                     font-size: 12px
#                     height: 17px
#                     display: inline-block
#                     line-height: 14px
#                     vertical-align: middle
#             .balance
#                 font-weight: bold
#                 color: black
#     textarea, input
#         border-radius: 5px
#         background: #fbfafa
#         color: #4c4a4a
#         padding: 3px 10px
#         font-size: 15px
#     textarea
#         width: 260px
#         height: 55px
#         resize: none
#         border: 1px solid #b1afaf
#     input
#         height: 23px
#         width: 150px
#         border: 0
#         margin: 0px 2px
#     button
#         margin-top: 3px
#         outline: none
#         width: 100px
#         cursor: pointer
#         height: 20px
#         border: 0
#         background-color: #76CEE1
#         color: white
#         &:hover
#             background-color: #76CEE1 + 10
#         border-radius: 100px
#     ul
#         list-style: none
#         padding: 0
#         li 
#             display: inline-block
#             color: gray
#             cursor: pointer
#             padding: 0 5px
#             &.active
#                 border: 1px solid gray
#                 border-radius: 5px
state =
    timeout: null
module.exports = ({ store })->
    return null if not store?
    { current, accounts } = store
    refresh = ->
        <- refresh-account web3(store), store
    active-page = (page)->
        if current.page is page then \active
    choose-account = (selected, event)-->
        current.account <<< selected
    manage-accounts = (event)->
        current.page = \accounts
    select-page = (name, event)-->
        current.page = name
    pages =
        * \wallets
        * \history
    change-seed = (event)->
        state.timeout = clear-timeout state.timeout
        current.seed = event.target.value
        state.timeout = set-timeout refresh, 2000
    save-seed = ->
        seed.set current.seed
        current.saved-seed = yes
    edit-seed = ->
        store.current.pin = ""
        current.try-edit-seed = yes
        #current.saved-seed = no
    cancel-try = ->
        current.try-edit-seed = no
    enter-pin = (e)->
        store.current.pin = e.target.value
        return if not check(store.current.pin)
        cancel-try!
        current.saved-seed = no
    generate = ->
        return if not confirm "Are you sure you want to override the current seed?"
        current.seed = generate-wallet!.mnemonic
        create-account!
    active-mainnet = if store.current.network is \mainnet => \active else ''
    active-testnet = if store.current.network is \testnet => \active else ''
    use = (network, event)-->
        <- use-network web3(store), store, network
    use-mainnet = use \mainnet
    use-testnet = use \testnet
    react.create-element 'aside', { className: 'menu menu-1821002069' }, children = 
        react.create-element 'div', { className: 'box-container' }, children = 
            switch
                case current.try-edit-seed is yes
                    react.create-element 'div', { className: 'box' }, children = 
                        react.create-element 'div', {}, children = 
                            react.create-element 'input', { on-change: enter-pin, value: "#{current.pin}", placeholder: "Enter PIN" }
                        react.create-element 'div', {}, '    '
                            react.create-element 'button', { on-click: cancel-try }, ' Cancel'
                case current.saved-seed is no
                    react.create-element 'div', { className: 'box' }, children = 
                        react.create-element 'div', { className: 'title' }, children = 
                            react.create-element 'span', {}, ' Secret Text'
                            react.create-element 'a', { on-click: generate, className: 'generate' }, ' (generate)'
                        react.create-element 'textarea', { on-change: change-seed, value: "#{current.seed}", placeholder: "Secret words" }
                        react.create-element 'div', {}, children = 
                            react.create-element 'button', { on-click: save-seed }, ' Save'
                case current.saved-seed is yes
                    react.create-element 'div', { className: 'box' }, children = 
                        react.create-element 'div', {}, children = 
                            react.create-element 'button', { on-click: edit-seed }, ' Edit seed'
        if store.current.network is \mainnet
            naming { store }
        react.create-element 'div', { className: 'network' }, children = 
            react.create-element 'span', { on-click: use-mainnet, className: "#{active-mainnet}" }, ' MAINNET'
            react.create-element 'span', {}, ' |'
            react.create-element 'span', { on-click: use-testnet, className: "#{active-testnet}" }, ' TESTNET'
        react.create-element 'div', { className: 'box-container' }, children = 
            if store.current.refreshing is no
                react.create-element 'div', { className: 'box' }, children = 
                    react.create-element 'div', { className: 'title' }, ' Balance'
                    react.create-element 'div', { className: 'balance' }, ' $ ' + money current.balance-usd
                    react.create-element 'button', { on-click: refresh }, ' Refresh'
            else
                react.create-element 'div', { className: 'box' }, children = 
                    react.create-element 'div', { className: 'title' }, ' Loading...'
                    react.create-element 'div', { className: 'balance' }, ' $ ' + money current.balance-usd