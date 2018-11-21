require! {
    \react
}
.copied
    position: fixed
    background: #74cee1
    z-index: 999
    font-size: 14px
    box-sizing: border-box
    color: white
    width: 100%
    height: 80px
    padding: 10px
    left: 0
    top: -80px
    text-align: center
    border-radius: 0px 0px 5px 5px
    box-shadow: 0px 0px 0px 0px #aee7f3
    &.opened
        transition: top 0.5s
        top: 0px
module.exports = (store)->
    { copied } = store.current
    copied-class = if copied is '' then '' else 'opened'
    .copied.pug(class="#{copied-class}")
        .pug Copied
        .pug #{copied}