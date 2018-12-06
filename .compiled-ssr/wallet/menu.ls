require! {
    \react
    \prelude-ls : { filter }
    \whitebox
    \./naming.ls
    \./seed.ls
    \./use-network.ls
    \./web3.ls
    \./pin.ls : { check }
    \./navigate.ls
    \./round5.ls
}
{ get-container, generate-wallet } = whitebox
# .menu1435905544
#     @import scheme
#     $viewport-height: $height / 2.5
#     $cards-height: 324px
#     $pad: 20px
#     $radius: 15px
#     height: $height
#     width: $width
#     position: relative
#     >*
#         position: absolute
#         left: 0
#     >.viewport
#         width: $width
#         height: $height
#         top: 0
#         overflow: hidden
#         >*
#             position: absolute
#             top: 0
#             width: $width
#         $viewport-header-height: 32px
#         $slide-height: $viewport-height / 2
#         >.viewport-icons
#             z-index: 5
#             height: $viewport-header-height
#             position: relative
#             display: inline-block
#             text-align: left
#             >*
#                 display: inline-block
#                 color: white
#             >span
#                 margin-top: 7px
#                 padding: 1px 2px
#                 border-radius: 2px
#                 font-size: 12px
#                 color: white
#                 vertical-align: top
#                 cursor: pointer
#             >img
#                 width: $pad / 1.5
#                 display: inline-block
#                 margin: $pad / 2 $pad
#                 cursor: pointer
#                 &.reload
#                     float: left
#                     &.true
#                         @keyframes rotating
#                             from
#                                 -ms-transform: rotate(0deg)
#                                 -moz-transform: rotate(0deg)
#                                 -webkit-transform: rotate(0deg)
#                                 -o-transform: rotate(0deg)
#                                 transform: rotate(0deg)
#                             to
#                                 -ms-transform: rotate(360deg)
#                                 -moz-transform: rotate(360deg)
#                                 -webkit-transform: rotate(360deg)
#                                 -o-transform: rotate(360deg)
#                                 transform: rotate(360deg)
#                         animation: rotating 2s linear infinite
#                 &.lock
#                     float: right
#                 &:hover
#                     color: #eee
#         >.viewport-header
#             z-index: 4
#             position: relative
#             height: $viewport-header-height
#             text-align: center
#             >.text
#                 font-size: 14px
#                 display: inline-block
#                 padding: 10px 25px
#                 color: rgba(white, 0.5)
#                 font-weight: bold
#                 cursor: pointer
#                 font-weight: 400
#             >.text-line
#                 height: 3px
#             transition: left 1s, background 2s
#             &.s1
#                 left: 50px
#                 >.text.s1
#                     color: white
#                     cursor: default
#                 >.text-line
#                     background: linear-gradient(135deg, #FFF 0%, transparent 100%)
#             &.s2
#                 left: 0
#                 >.text-line
#                     background: linear-gradient(135deg, transparent 0%,#FFF 50%, transparent 100%)
#                 >.text.s2
#                     color: white
#                     cursor: default
#             &.s3
#                 left: -50px
#                 >.text-line
#                     background: linear-gradient(135deg, transparent 0%, #FFF 100%)
#                 >.text.s3
#                     color: white
#                     cursor: default
#         >.viewport-switchs
#             z-index: 3
#             $switch-padd: 13px
#             top: $viewport-header-height + $slide-height + $switch-padd * 3
#             text-align: center
#             >.switch
#                 border-radius: 100px
#                 width: 8px
#                 height: 8px
#                 margin: 0 4px
#                 background: rgba(white, 0.5)
#                 display: inline-block
#                 cursor: pointer
#             &.s1
#                 >.switch.s1
#                     background: white
#                     cursor: default
#             &.s2
#                 >.switch.s2
#                     background: white
#                     cursor: default
#             &.s3
#                 >.switch.s3
#                     background: white
#                     cursor: default
#         >.viewport-decoration
#             text-align: center
#             z-index: 2
#             top: 50px
#             >.circle
#                 display: inline-block
#                 width: $width
#                 height: $width
#                 border-radius: $width
#                 background: rgba(white, 0.1)
#                 transition: all 1s
#             &.s1>.circle
#                 width: $width / 1.1
#                 height: $width / 1.1
#                 margin-left: -30px
#             &.s2>.circle
#                 width: $width
#                 height: $width
#                 margin-left: 0
#             &.s3>.circle
#                 width: $width / 1.1
#                 height: $width / 1.1
#                 margin-left: 30px
#         >.viewport-background
#             background-image: linear-gradient(90deg, #4650E7 0%, #7CC9FF 89%, #9d78b2 100%)
#             padding: $viewport-header-height $pad 0 $pad
#             z-index: 1
#             width: $width * 3
#             height: inherit
#             transition: left 2s
#             &.s1
#                 left: 0
#             &.s2
#                 left: -$width + $pad * 2
#             &.s3
#                 left: -$width * 2 + $pad * 4
#         >.viewport-content
#             position: relative
#             z-index: 3
#             background: transparent
#             height: $height / 4.5
#             width: $width * 3
#             padding: $pad $pad 0 $pad
#             text-align: left
#             transition: left 1s
#             >.slide
#                 transition: margin-top 0.5s
#             &.s1
#                 left: $pad * 2
#                 >.slide.s1
#                     margin-top: -$pad / 2
#             &.s2
#                 left: -$width + $pad * 8
#                 >.slide.s2
#                     margin-top: -$pad / 2
#             &.s3
#                 left: -$width * 2 + $pad * 14
#                 >.slide.s3
#                     margin-top: -$pad / 2
#             font:
#                 size: 20px
#                 weight: bold
#             line-height: $viewport-height
#             >.slide
#                 z-index: 3
#                 float: left
#                 text-align: center
#                 height: $slide-height
#                 display: inline-block
#                 box-sizing: border-box
#                 vertical-align: top
#                 border:
#                     width: $pad / 2
#                     style: solid
#                     color: transparent
#                 >.slide-body
#                     display: flex
#                     color: $primary
#                     align-items: center
#                     justify-content: center
#                     cursor: pointer
#                     overflow: hidden
#                     width: 100%
#                     height: 100%
#                     vertical-align: top
#                     line-height: normal
#                     border-radius: $pad / 2
#                     background: #FFFFFF
#                     box-sizing: border-box
#                     input
#                         border-radius: 25px
#                     textarea
#                         border-radius: 7px
#                     input, textarea
#                         outline: none
#                         border: 1px solid #dedcdc
#                         padding: 3px 10px
#                         box-sizing: border-box
#                     button
#                         background-color: $primary
#                         border: 1px solid $primary
#                         border-radius: 50px
#                         color: white
#                         padding: 5px 24px
#                         cursor: pointer
#                         outline: none
#                         &:hover
#                             background: transparent
#                             color: $primary
#                 &.s1
#                     width: $width - $pad * 6
#                     >.slide-body
#                         .title
#                             color: $primary
#                             font-size: 12px
#                             a
#                                 color: #ee8791
#                         textarea
#                             width: 244px
#                             height: 37px
#                             resize: none
#                             font-size: 12px
#                 &.s2
#                     width: $width - $pad * 6
#                     >.slide-body
#                         overflow: hidden
#                         margin: 0 auto
#                         position: relative
#                         padding: 11px 0
#                         display: inline-block
#                         >*
#                             display: block
#                             max-width: 100%
#                             margin: 0 auto
#                             text-align: center
#                         >.decor
#                             color: rgba(#7083e8, 0.1)
#                             transform: rotate(10deg)
#                             position: absolute
#                             top: -35px
#                             right: -20px
#                             font-size: 120px
#                         >.currency
#                             color: rgba(#7083e8, 0.3)
#                         >.amount
#                             color: #7083e8
#                             >*
#                                 display: inline-block
#                                 vertical-align: top
#                                 line-height: 45px
#                             >.symbol
#                                 font-size: 20px
#                                 margin-top: -8px
#                                 font-weight: 100
#                             >.number
#                                 font-size: 40px
#                                 font-weight: 400
#                 &.s3
#                     width: $width - $pad * 6
#                     >.slide-body
state =
    timeout: null
module.exports = ({ store })->
    return null if not store?
    { current, accounts } = store
    lock = ->
        navigate store, \locked
    refresh = ->
        <- web3(store).refresh
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
        store.current.pin = e.target.value ? ""
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
    react.create-element 'div', { key: "menu", className: 'menu menu1435905544' }, children = 
        react.create-element 'div', { className: 'viewport' }, children = 
            react.create-element 'div', { className: 'viewport-icons' }, children = 
                react.create-element 'img', { src: "https://res.cloudinary.com/dfbhd7liw/image/upload/v1543530765/wallet/reload.png", on-click: refresh, className: "#{store.current.refreshing} reload" }
                react.create-element 'span', { on-click: switch-network, className: 'network' }, ' ' + store.current.network
                react.create-element 'span', { on-click: switch-network, className: 'chevron' }, ' ▿'
                react.create-element 'img', { src: "https://res.cloudinary.com/dfbhd7liw/image/upload/v1543523582/wallet/Path.png", on-click: lock, className: 'lock' }
            react.create-element 'div', { className: "#{store.menu.active} viewport-header viewport-move" }, children = 
                react.create-element 'div', { on-click: activate-s1, key: "switch-s1", className: 'text s1' }, ' Secret Phrase'
                react.create-element 'div', { on-click: activate-s2, key: "switch-s2", className: 'text s2' }, ' Balance'
                react.create-element 'div', { on-click: activate-s3, key: "switch-s3", className: 'text s3' }, ' Register Name'
                react.create-element 'div', { className: 'text-line' }
            react.create-element 'div', { className: "#{store.menu.active} viewport-background viewport-move" }
            react.create-element 'div', { className: "#{store.menu.active} viewport-content viewport-move" }, children = 
                react.create-element 'div', { on-click: activate-s1, className: 'slide s1' }, children = 
                    react.create-element 'div', { className: 'slide-body' }, children = 
                        switch
                            case current.try-edit-seed is yes
                                react.create-element 'div', { key: "try-edit-seed", className: 'box' }, children = 
                                    react.create-element 'div', {}, children = 
                                        react.create-element 'input', { on-change: enter-pin, value: "#{current.pin}", placeholder: "Enter PIN" }
                                    react.create-element 'div', {}, '    '
                                        react.create-element 'button', { on-click: cancel-try }, ' Cancel'
                            case current.saved-seed is no
                                react.create-element 'div', { key: "edit-phrase", className: 'box' }, children = 
                                    react.create-element 'div', { className: 'title' }, children = 
                                        react.create-element 'span', {}, ' Secret Text'
                                        react.create-element 'a', { on-click: generate, className: 'generate' }, ' (generate)'
                                    react.create-element 'textarea', { on-change: change-seed, value: "#{current.seed}", placeholder: "Secret words" }
                                    react.create-element 'div', {}, children = 
                                        react.create-element 'button', { on-click: save-seed }, ' Save'
                            case current.saved-seed is yes
                                react.create-element 'div', { key: "init-edit" }, children = 
                                    react.create-element 'button', { on-click: edit-seed }, ' Edit Secret'
                react.create-element 'div', { on-click: activate-s2, className: 'slide s2' }, children = 
                    react.create-element 'div', { className: 'slide-body' }, children = 
                        react.create-element 'div', { className: 'decor' }, ' $'
                        react.create-element 'div', { className: 'currency' }, ' USD'
                        react.create-element 'div', { className: 'amount' }, children = 
                            react.create-element 'div', { className: 'symbol' }, ' $'
                            react.create-element 'div', { className: 'number' }, children = 
                                if store.current.refreshing is no
                                    react.create-element 'div', {}, ' ' + round5 current.balance-usd
                                else
                                    react.create-element 'div', {}, ' ...'
                react.create-element 'div', { on-click: activate-s3, className: 'slide s3' }, children = 
                    react.create-element 'div', { className: 'slide-body' }, children = 
                        if store.current.network is \mainnet
                            naming { store }
                        else 
                            react.create-element 'div', { key: "not-available" }, ' Not Available'
            react.create-element 'div', { className: "#{store.menu.active} viewport-switchs viewport-move" }, children = 
                react.create-element 'div', { on-click: activate-s1, key: "switch-s1", className: 'switch s1' }
                react.create-element 'div', { on-click: activate-s2, key: "switch-s2", className: 'switch s2' }
                react.create-element 'div', { on-click: activate-s3, key: "switch-s3", className: 'switch s3' }
            react.create-element 'div', { className: "#{store.menu.active} viewport-decoration viewport-move" }, children = 
                react.create-element 'div', { className: 'circle' }