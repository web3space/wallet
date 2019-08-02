require! {
    \react
    \prelude-ls : { map }
    \../pin.ls : { set, check, exists } 
    \../navigate.ls
    \../get-primary-info.ls
    \../get-lang.ls
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
        margin: 20px 0
        >img
            height: 50px
        >.title
    >.title
        font-size: 35px
        margin-bottom: 20px
    >.inputs
        input
            text-align: center
            font-size: 24px
            display: inline-block
            width: 40px
            height: 40px
            background: transparent
            border: 1px solid #549D90
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
        background: transparent
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
    key-str =  (event.key ? event.target.value).to-string!
    #alert key-str
    return set-val store, number, key-str if key-str in <[ 0 1 2 3 4 5 6 7 8 9 ]>
    return go-back store, number if key-str in <[ Backspace ArrowLeft ]>
    return go-forward store, number if key-str in <[ ArrowRight ]>
    #set-val store, number, key-code - 48
setup-val = (store)-> (number)->
    store.current.pin[number] ? ""
input = (store)-> (number)->
    keydown = setup-keydown store
    val = setup-val store
    info = get-primary-info store
    locked-style=
        color: info.app.text
    #type = 
    #    | not exists! => \input
    #    | _ => \input
    input.pug.password(key="pin-#{number}" style=locked-style type="number" value="#{val number}" placeholder="0" on-key-down=keydown(number) on-change=keydown(number) tab-index="#{number + 1}" pattern="[0-9]*" input-mode="numeric" step="1" auto-complete="off")
wrong-trials = (store)->
    return null if store.current.pin-trial is 0
    lang = get-lang store
    wrong-pin-text = "#{lang.wrong-pin-trials ? 'Wrong PIN. Trials'}: #{store.current.pin-trial}"
    .pug.wrong(key="wrong-trial") #{wrong-pin-text}
setup-button = (store)->
    lang = get-lang store
    style = get-primary-info store
    setup = ->
        return alert(lang.wrong-pin-should ? 'PIN should be 4 digits') if not store.current.pin.match(/^[0-9]{4}$/)?
        set store.current.pin
        check-pin store
    text-color=
        color: style.app.text
    button-style =
        color: style.app.text
        border: "1px solid #{style.app.border}"
    .pug(key="setup-button")
        button.setup.pug(on-click=setup style=button-style) #{lang.setup ? 'Setup'}
        .hint.pug(style=text-color) #{lang.pin-info ? 'Please memorize this PIN and do not provide it to third party.'}
locked = ({ store })->
    lang = get-lang store
    title = 
        | not exists! => lang.setup-pin ? "Setup PIN"
        | _ => lang.enter-pin ? "Enter PIN"
    footer =
        | not exists! => setup-button
        | _ => wrong-trials
    info = get-primary-info store
    locked-style=
        color: info.app.text
    .pug.locked(key="locked" style=locked-style)
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