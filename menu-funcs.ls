require! {
    \prelude-ls : { filter, find }
    \whitebox
    \./tools.ls : { cut, money }
    \./seed.ls
    \./use-network.ls
    \./web3.ls
    \./pin.ls : { check }
    \./navigate.ls
    \./get-primary-info.ls
    \copy-to-clipboard
}
{ get-container, generate-wallet } = whitebox
state =
    timeout: null
adjust-color = (col, amt) ->
    usePound = false
    if col.0 is '#'
        col = col.slice 1
        usePound = true
    num = parseInt col, 16
    r = (num .>>. 16) + amt
    if r > 255 then r = 255 else if r < 0 then r = 0
    b = (num .>>. 8 .&. 255) + amt
    if b > 255 then b = 255 else if b < 0 then b = 0
    g = (num .&. 255) + amt
    if g > 255 then g = 255 else if g < 0 then g = 0
    (if usePound then '#' else '') + (g .|. b .<<. 8 .|. r .<<. 16).toString 16
build-schema = (first-color)->
    second-color = adjust-color first-color, 50
    third-color = adjust-color first-color, 100
    background-image: "linear-gradient(90deg, #{first-color} 0%, #{second-color} 89%, #{third-color} 100%)"
module.exports = (store)->
    { current } = store
    lock = ->
        navigate store, \locked
    refresh = ->
        <- web3(store).refresh
    #active-page = (page)->
    #    if current.page is page then \active
    #choose-account = (selected, event)-->
    #    current.account <<< selected
    #manage-accounts = (event)->
    #    current.page = \accounts
    #select-page = (name, event)-->
    #    current.page = name
    #pages =
    #    * \wallets
    #    * \history
    change-seed = (event)->
        state.timeout = clear-timeout state.timeout
        current.seed = event.target.value
        state.timeout = set-timeout refresh, 2000
    save-seed = ->
        seed.set current.seed
        current.saved-seed = yes
    edit-seed = ->
        return if not confirm "If you edit this, your old wallet is gone and all your coins are lost"
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
    switch-network = ->
        network = 
            | store.current.network is \mainnet => \testnet
            | _ => \mainnet
        <- use-network web3(store), store, network
    activate-s = (name, event)-->
        store.menu.active = name
    activate-s1 = activate-s \s1
    activate-s2 = activate-s \s2
    activate-s3 = activate-s \s3
    info = get-primary-info store
    primary-color = info.color
    wallet-style =
        | not primary-color? => {}
        | _ => build-schema primary-color
    open-account = ->
        { account-name } = store.current.account
        store.current.manage-account = yes
    close-account = ->
        store.current.manage-account = no
    account-left = ->
        return alert "0 is smallest account index" if store.current.account-index is 0
        store.current.account-index -= 1
        refresh!
    account-right = ->
        return alert "999999999 is highest account index" if store.current.account-index > 999999999
        store.current.account-index += 1
        refresh!
    change-account-index = (event)->
        return if not event?target
        val = event.target.value ? \1
        return if not val.match(/[0-9]+/)?
        store.current.account-index = +val
        change-account-index.timer = clear-timeout change-account-index.timer
        change-account-index.timer = set-timeout refresh, 2000
    export-private-key = ->
        pin = prompt("Please enter your PIN code")
        return alert "The entered PIN is wrong" if not check pin
        index = store.current.account-index
        token = (prompt("Enter the coin. Example: BTC, ETH, GBX") ? "").to-lower-case!
        wallets = current.account?wallets ? []
        wallet =
            wallets |> find (.coin?token is token)
        return alert "Wallet not found for #{token}" if not wallet?
        message = "This is your Private KEY"
        copy-to-clipboard wallet.private-key, { message }
    { export-private-key, change-account-index, account-left, account-right, open-account, close-account, current, wallet-style, info, activate-s1, activate-s2, activate-s3, switch-network, generate, enter-pin, cancel-try, edit-seed, save-seed, change-seed, refresh, lock }