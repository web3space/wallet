require! {
    \react
    \prelude-ls : { map }
    \./pin.ls : { set, check, exists } 
    \./navigate.ls
    \./get-primary-info.ls
}
.locked
    @import scheme
    padding-top: 70px
    height: $height
    box-sizing: border-box
    text-align: center
    .password
        -webkit-text-security: disc
        text-security: disc
        &::-webkit-outer-spin-button, &::-webkit-inner-spin-button
            -webkit-appearance: none
        -moz-appearance: textfield
    >.logo 
        padding: 20px
        background: rgba(#ffffff, 0.12)
        margin: 20px 0
        >img
            height: 50px
        >.title
            color: white
    >.title
        font-size: 35px
        color: white
        margin-bottom: 20px
    >.inputs
        input
            text-align: center
            font-size: 24px
            display: inline-block
            width: 40px
            height: 40px
            background: white
            border: 1px solid #f4f4f5
            border-radius: 3px
            margin: 5px
            outline: none
            &:focus
                border-color: #248295
            &:placeholder
                color: $primary + 40
    >.wrong
        color: red
    button.setup
        cursor: pointer
        margin-top: 20px
        width: 100px
        height: 30px
        border-radius: 3px
        border: 0px
        background: #248295
        &:hover
            background: #248295 - 20
        color: white
    .hint
        color: #f2eeee
        padding: 20px 38px
goto = (store, number, cb)->
    return cb null if not store.root?
    items = store.root.query-selector-all '.locked input'
    input = items[number]
    return cb null if not input?
    <- set-timeout _, 100
    input.focus!
    #input.set-selection-range 0, 1
    cb null
wrong-pin = (store)->
    store.current.pin = ""
    store.current.pin-trial += 1
    <- goto store, 0
check-pin = (store)->
    return if not exists!
    return wrong-pin store if not check(store.current.pin)
    store.current.pin-trial = 0
    store.current.pin = ""
    #console.log \start
    navigate store, \:init
go-back = (store, number)->
    prev = number - 1
    return if prev < 0
    <- goto store, prev
go-forward = (store, number)->
    nxt = number + 1
    return if nxt > 3
    arr = store.current.pin.split('')
    return if (arr[number] ? "").length isnt 1
    <- goto store, nxt
set-val = (store, number, value)->
    arr = store.current.pin.split('')
    arr[number] = value
    store.current.pin = arr.join('')
    return check-pin store if number is 3
    nextn = number + 1
    <- goto store, nextn
setup-keydown = (store)-> (number)-> (event)->
    { key-code } = event
    return set-val store, number, key-code - 48 if key-code >= 48 and key-code <= 57
    return set-val store, number, key-code - 96 if key-code >= 96 and key-code <= 105
    return go-back store, number if key-code in [8, 37]
    return go-forward store, number if key-code is 39
setup-val = (store)-> (number)->
    store.current.pin[number] ? ""
input = (store)-> (number)->
    keydown = setup-keydown store
    val = setup-val store
    #type = 
    #    | not exists! => \input
    #    | _ => \input
    input.pug.password(key="pin-#{number}" type="number" value="#{val number}" placeholder="0" on-key-down=keydown(number) tab-index="#{number + 1}" pattern="[0-9]*" inputmode="numeric" step="1" auto-complete="off")
wrong-trials = (store)->
    return null if store.current.pin-trial is 0
    .pug.wrong(key="wrong-trial") Wrong PIN. Trials: #{store.current.pin-trial}
setup-button = (store)->
    setup = ->
        return alert('PIN should be 4 digits') if not store.current.pin.match(/^[0-9]{4}$/)?
        set store.current.pin
        check-pin store
    .pug(key="setup-button")
        button.setup.pug(on-click=setup) Setup
        .hint.pug Please memorize this PIN and do not provide it to third party.
locked = ({ store })->
    title = 
        | not exists! => "Setup PIN"
        | _ => "Enter PIN"
    footer =
        | not exists! => setup-button
        | _ => wrong-trials
    info = get-primary-info store
    .pug.locked(key="locked")
        .pug.logo
            img.pug(src="#{info.branding.logo}")
            .title.pug #{info.branding.title}
        .pug.title(key="locked-title") #{title}
        .pug.inputs(key="locked-inputs")
            [0 to 3] |> map input store
        footer store
focus = (store, cb)->
    <- goto store, 0
    cb null
locked.focus = focus
module.exports = locked