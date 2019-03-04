require! {
    \./get-primary-info.ls
    \react
    \prelude-ls : { map }
}
# .links-1467872500
#     text-align: center
#     .link
#         display: inline-block
#         border-radius: 30px
#         background: black
#         padding: 5px
#         margin: 2px
#         width: 30px
#         height: 30px
#         box-sizing: border-box
#         >img
#             width: auto
#             height: 100%
#             &:hover
#                 background: gray
#                 transition: background .5s
create-link = (store, item)-->
    info = get-primary-info store
    style =
        background-color: info.color
    react.create-element 'a', { href: "#{item.href}", style: style, className: 'link' }, children = 
        react.create-element 'img', { src: "#{item.image}" }
module.exports = ({ store })->
    info = get-primary-info store
    style = { info.color }
    if info.links.length is 0
        react.create-element 'div', { style: style }, ' No Links'
    else
    react.create-element 'div', { className: 'links links-1467872500' }, children = 
        info.links |> map create-link store