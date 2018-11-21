require! {
    \react
}
# .loading-page1149541662
#     text-align: center
#     overflow: hidden
#     height: 400px
#     h1
#         text-transform: uppercase
#         font-size: 30px
#         color: #CCC
#         margin: 30px 0px 0px 0px
#     h2
#         font-weight: normal
#         font-size: 18px
#         color: #F98DB9
#         margin: 10px 0px 0px 0px
#     p
#         margin: 0 auto
#     .loader
#         z-index: 999
#         height: 100%
#         position: relative
#         margin: auto
#         width: 400px
#     .loader_overlay
#         width: 150px
#         height: 150px
#         background: transparent
#         box-shadow: 0px 0px 0px 1000px rgba(255, 255, 255, 0.67), 0px 0px 19px 0px rgba(0, 0, 0, 0.16) inset
#         border-radius: 100%
#         z-index: -1
#         position: absolute
#         left: 0
#         right: 0
#         top: 0
#         bottom: 0
#         margin: auto
#     .loader_cogs
#         z-index: -2
#         width: 100px
#         height: 100px
#         top: -120px !important
#         position: absolute
#         left: 0
#         right: 0
#         top: 0
#         bottom: 0
#         margin: auto
#     .loader_cogs__top
#         position: relative
#         width: 100px
#         height: 100px
#         -webkit-transform-origin: 50px 50px
#         transform-origin: 50px 50px
#         -webkit-animation: rotate 10s infinite linear
#         animation: rotate 10s infinite linear
#         div
#             &:nth-of-type(1)
#                 -webkit-transform: rotate(30deg)
#                 transform: rotate(30deg)
#             &:nth-of-type(2)
#                 -webkit-transform: rotate(60deg)
#                 transform: rotate(60deg)
#             &:nth-of-type(3)
#                 -webkit-transform: rotate(90deg)
#                 transform: rotate(90deg)
#             &.top_part
#                 width: 100px
#                 border-radius: 10px
#                 position: absolute
#                 height: 100px
#                 background: #f98db9
#             &.top_hole
#                 width: 50px
#                 height: 50px
#                 border-radius: 100%
#                 background: white
#                 position: absolute
#                 position: absolute
#                 left: 0
#                 right: 0
#                 top: 0
#                 bottom: 0
#                 margin: auto
#     .loader_cogs__left
#         position: relative
#         width: 80px
#         -webkit-transform: rotate(16deg)
#         transform: rotate(16deg)
#         top: 28px
#         -webkit-transform-origin: 40px 40px
#         transform-origin: 40px 40px
#         animation: rotate_left 10s .1s infinite reverse linear
#         left: -24px
#         height: 80px
#         div
#             &:nth-of-type(1)
#                 -webkit-transform: rotate(30deg)
#                 transform: rotate(30deg)
#             &:nth-of-type(2)
#                 -webkit-transform: rotate(60deg)
#                 transform: rotate(60deg)
#             &:nth-of-type(3)
#                 -webkit-transform: rotate(90deg)
#                 transform: rotate(90deg)
#             &.left_part
#                 width: 80px
#                 border-radius: 6px
#                 position: absolute
#                 height: 80px
#                 background: #97ddff
#             &.left_hole
#                 width: 40px
#                 height: 40px
#                 border-radius: 100%
#                 background: white
#                 position: absolute
#                 position: absolute
#                 left: 0
#                 right: 0
#                 top: 0
#                 bottom: 0
#                 margin: auto
#     .loader_cogs__bottom
#         position: relative
#         width: 60px
#         top: -65px
#         -webkit-transform-origin: 30px 30px
#         transform-origin: 30px 30px
#         -webkit-animation: rotate_left 10.2s .4s infinite linear
#         animation: rotate_left 10.2s .4s infinite linear
#         -webkit-transform: rotate(4deg)
#         transform: rotate(4deg)
#         left: 79px
#         height: 60px
#         div
#             &:nth-of-type(1)
#                 -webkit-transform: rotate(30deg)
#                 transform: rotate(30deg)
#             &:nth-of-type(2)
#                 -webkit-transform: rotate(60deg)
#                 transform: rotate(60deg)
#             &:nth-of-type(3)
#                 -webkit-transform: rotate(90deg)
#                 transform: rotate(90deg)
#             &.bottom_part
#                 width: 60px
#                 border-radius: 5px
#                 position: absolute
#                 height: 60px
#                 background: #ffcd66
#             &.bottom_hole
#                 width: 30px
#                 height: 30px
#                 border-radius: 100%
#                 background: white
#                 position: absolute
#                 position: absolute
#                 left: 0
#                 right: 0
#                 top: 0
#                 bottom: 0
#                 margin: auto
#     @-webkit-keyframes rotate
#         from
#             -webkit-transform: rotate(0deg)
#             transform: rotate(0deg)
#         to
#             -webkit-transform: rotate(360deg)
#             transform: rotate(360deg)
#     @keyframes rotate
#         from
#             -webkit-transform: rotate(0deg)
#             transform: rotate(0deg)
#         to
#             -webkit-transform: rotate(360deg)
#             transform: rotate(360deg)
#     @-webkit-keyframes rotate_left
#         from
#             -webkit-transform: rotate(16deg)
#             transform: rotate(16deg)
#         to
#             -webkit-transform: rotate(376deg)
#             transform: rotate(376deg)
#     @keyframes rotate_left
#         from
#             -webkit-transform: rotate(16deg)
#             transform: rotate(16deg)
#         to
#             -webkit-transform: rotate(376deg)
#             transform: rotate(376deg)
#     @-webkit-keyframes rotate_right
#         from
#             -webkit-transform: rotate(4deg)
#             transform: rotate(4deg)
#         to
#             -webkit-transform: rotate(364deg)
#             transform: rotate(364deg)
#     @keyframes rotate_right
#         from
#             -webkit-transform: rotate(4deg)
#             transform: rotate(4deg)
#         to
#             -webkit-transform: rotate(364deg)
#             transform: rotate(364deg)
module.exports = ->
    react.create-element 'div', { className: 'loading-page loading-page1149541662' }, children = 
        react.create-element 'div', { className: 'loader' }, children = 
            react.create-element 'div', { className: 'loader_overlay' }
            react.create-element 'div', { className: 'loader_cogs' }, children = 
                react.create-element 'div', { className: 'loader_cogs__top' }, children = 
                    react.create-element 'div', { className: 'top_part' }
                    react.create-element 'div', { className: 'top_part' }
                    react.create-element 'div', { className: 'top_part' }
                    react.create-element 'div', { className: 'top_hole' }
                react.create-element 'div', { className: 'loader_cogs__left' }, children = 
                    react.create-element 'div', { className: 'left_part' }
                    react.create-element 'div', { className: 'left_part' }
                    react.create-element 'div', { className: 'left_part' }
                    react.create-element 'div', { className: 'left_hole' }
                react.create-element 'div', { className: 'loader_cogs__bottom' }, children = 
                    react.create-element 'div', { className: 'bottom_part' }
                    react.create-element 'div', { className: 'bottom_part' }
                    react.create-element 'div', { className: 'bottom_part' }
                    react.create-element 'div', { className: 'bottom_hole' }
            react.create-element 'h1', {}, ' Loading'