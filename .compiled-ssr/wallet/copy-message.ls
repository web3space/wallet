require! {
    \react
}
# .copied-995214266
#     position: fixed
#     background: #74cee1
#     z-index: 999
#     font-size: 14px
#     box-sizing: border-box
#     color: white
#     width: 100%
#     height: 80px
#     padding: 10px
#     left: 0
#     text-align: center
#     border-radius: 0px 0px 5px 5px
#     box-shadow: 0px 0px 0px 0px #aee7f3
#     @keyframes top
#         0%
#             top: -80px
#         100%
#             top: 0
#     &.opened
#         animation: top 0.5s forwards
module.exports = (store)->
    { copied } = store.current
    return null if copied is ''
    copied-class = if copied is '' then '' else 'opened'
    react.create-element 'div', { key: "copy-message", className: "#{copied-class} copied copied-995214266" }, children = 
        react.create-element 'div', {}, ' Copied'
        react.create-element 'div', {}, ' ' + copied