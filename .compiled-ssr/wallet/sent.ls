require! {
    \react
    \./navigate.ls
}
# .sent-1843679899
#     @import scheme
#     text-align: center
#     color: #5bb03e
#     padding-top: 100px
#     background: white
#     height: $height
#     width: $width
#     .icon
#         img
#             height: 150px
#     .text
#     a.button
#         display: inline-block
#         background-color: #76CEE1
#         color: white
#         border-radius: 100px
#         padding: 3px 10px
#         box-sizing: border-box
#         margin-top: 20px
#         line-height: 21px
#         cursor: pointer
#         height: 25px
#         width: 75px
module.exports = ({ store })->
    go-home = ->
        navigate store, \wallets
    react.create-element 'div', { className: 'sent sent-1843679899' }, children = 
        react.create-element 'div', { className: 'icon' }, children = 
            react.create-element 'img', { src: "./res/sent.png" }
        react.create-element 'div', { className: 'text' }, children = 
            react.create-element 'span', {}, ' Your '
            react.create-element 'a', { href: "#{store.current.last-tx-url}", target: "_blank" }, ' transaction'
            react.create-element 'span', {}, '  has been sent'
        react.create-element 'a', { on-click: go-home, className: 'button' }, ' Home'