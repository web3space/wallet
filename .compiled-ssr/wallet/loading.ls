require! {
    \react
}
# .loading-page813641756
#     @import scheme
#     $gradient: $primary - 20
#     background: $primary
#     text-align: center
#     overflow: hidden
#     height: 100%
#     .loading
#         @keyframes rotate
#             0%
#                 transform: rotateZ(0deg)
#             100%
#                 transform: rotateZ(360deg)
#         position: absolute
#         left: 50%
#         top: 50%
#         margin: -60px 0 0 -60px
#         background: #fff
#         width: 100px
#         height: 100px
#         border-radius: 100%
#         border: 10px solid $gradient
#         &:after
#             content: ''
#             background: trasparent
#             width: 140%
#             height: 140%
#             position: absolute
#             border-radius: 100%
#             top: -20%
#             left: -20%
#             opacity: 0.7
#             box-shadow: rgba(255, 255, 255, 0.6) -4px -5px 3px -3px
#             animation: rotate 2s infinite linear
module.exports = ->
    react.create-element 'div', { className: 'loading-page loading-page813641756' }, children = 
        react.create-element 'div', { className: 'loading' }