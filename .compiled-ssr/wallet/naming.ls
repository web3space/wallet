require! {
    \react
    \./ethnamed.ls
    \prelude-ls : { map, join, filter, head }
    \./icon.ls
    \./get-record.ls
    \./get-name-mask.ls
}
# .naming-427236597
#     .custom-domain
#         input
#             outline: none
#             height: 22px
#             padding: 2px 13px
#             width: 100%
#             text-align: left
#             width: 70%
#             border: 1px solid #b1afaf
#         position: relative
#         width: 100%
#         height: 28px
#         >.part
#             width: 100%
#             background: transparent
#             position: absolute
#             text-align: center
#             &.hidden
#                 z-index: 0
#                 input
#                     color: rgba(black, 0.2)
#             &.visible
#                 z-index: 1
#                 input
#                     background: transparent
#     .message
#         font-size: 11px
#         background: transparent
#         border: none
#         text-align: center
#         height: 12px
install-record = (name, record)->
    "Please setup html element <meta property='ethnamed' value='#{record}' /> on #{name} to pass verification"
state =
    timeout: null
module.exports = ({ store })->
    { setup-record, verify-record } = ethnamed store
    price = 0.01ETH
    empty = ->
        ( store.current.nickname ? "" ).length is 0
    show-message = (message)->
        store.current.message = message
    can-buy-nickname = if store.current.can-buy then \active else \disabled
    check = (cb)->
        return cb? "Nickname is empty" if empty!
        #err <- verify-network
        return cb? err if err?
        store.current.checking-name = true
        show-message "Loading..."
        err, data <- verify-record store.current.nicknamefull
        store.current.checking-name = no
        return cb? err if err?
        can-buy = data is ""
        store.current.can-buy = can-buy
        return cb? "Address Not Found" if can-buy
        cb? null, data
    resolve-record = ->
        err, data <- check
        return show-message err if err?
        show-message if data.length > 0 then "Busy" else "Free"
        #goto "/resolve/#{store.current.nickname}", store
    buy-nickname = (cb)->
        name = store.current.nicknamefull
        owner = 
            store.current.account.wallets 
                |> filter (.coin.token is \eth)
                |> map (.address)
                |> head
        amount-ethers = price
        record = get-record store
        err, data <- check
        return cb err if err? and err isnt "Address Not Found"
        return cb "Address is already exists" if err isnt "Address Not Found"
        err <- setup-record { name, record, amount-ethers, owner }
        return cb install-record name, record if err is "Does not match"
        return cb err if err?
        cb null, "Your name is registered."
    buy-nickname-process = (cb)->
        store.current.status = \buy-nickname
        err, done <- buy-nickname
        return cb err if err?
        cb null
    buy-nickname-click = (event)->
        err, done <- buy-nickname-process
        store.current.status = \main
        return show-message(err.message ? err) if err?
        show-message done
    set-mask = ->
        store.current.nicknamefull = get-name-mask(store.current.nickname ? "")
    enter-nick = (event)->
        nickname = (event.target.value ? "").match(/^[a-z0-9\.@]+/)?0 ? ""
        show-message "Typing..."
        clear-timeout state.timeout
        state.timeout = null
        store.current.nickname = nickname
        set-mask!
        state.timeout = set-timeout resolve-record, 2000
    change-to-custom = ->
        store.current.custom-domain = yes
    change-to-ethnamed = ->
        store.current.custom-domain = no
    react.create-element 'div', { className: 'box-container naming naming-427236597' }, children = 
        react.create-element 'div', { className: 'box' }, children = 
            react.create-element 'div', { className: 'title' }, ' Register Name'
            react.create-element 'div', { className: 'custom-domain' }, children = 
                react.create-element 'div', { className: 'part hidden' }, children = 
                    react.create-element 'input', { value: "#{store.current.nicknamefull}" }
                react.create-element 'div', { className: 'part visible' }, children = 
                    react.create-element 'input', { value: "#{store.current.nickname}", on-change: enter-nick }
            if (store.current.message ? "").length > 0
                react.create-element 'textarea', { value: "#{store.current.message}", title: "#{store.current.message}", className: 'message' }
            react.create-element 'div', {}, children = 
                switch store.current.status
                    case \verify
                        react.create-element 'div', {}, ' Nickname Verification...'
                    case \buy-nickname
                        react.create-element 'div', {}, ' Buy Nickname.'
                    else
                        react.create-element 'button', { on-click: buy-nickname-click }, ' Register'