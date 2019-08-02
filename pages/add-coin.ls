require! {
    \react
    \prelude-ls : { map, filter }
    \./loading.ls
    \../web3.ls
    \../get-primary-info.ls
    \../get-lang.ls
    \./icon.ls
}
.manage-account
    @import scheme
    @keyframes bounceIn
        from
            opacity: 0
            transform: scale3d(0.8, 0.8, 0.8)
        to
            opacity: 1
            transform: scale3d(1, 1, 1)
    position: absolute
    width: 100%
    top: 0
    z-index: 999
    padding-top: 5%
    box-sizing: border-box
    padding: 10px
    background: rgba(black, 0.8)
    height: 100vh
    >.account-body
        max-width: 600px
        display: inline-block
        animation-duration: 0.5s
        animation-name: bounceIn
        background: white
        width: 100%
        margin-top: 5vh
        margin-bottom: 25vh
        border-radius: 5px
        position: relative
        height: 65vh
        overflow: hidden
        >.title
            position: absolute
            z-index: 999
            top: 0
            box-sizing: border-box
            width: 100%
            height: 100px
            color: gray
            font-size: 22px
            padding: 10px
            .close
                position: absolute
                padding: 5px 10px
                font-size: 30px
                right: 0
                top: 0
                cursor: pointer
                &:hover
                    color: #CCC
            .search
                margin-top: 10px
                border: 1px solid #CCC
                padding: 9px
                border-radius: 6px
                width: 97%
                box-sizing: border-box
                font-size: 13px
                outline: none
        >.settings
            padding-top: 90px
            padding-bottom: 90px
            overflow-y: scroll
            height: calc(65vh - 180px)
            .section
                position: relative
                min-height: 200px
                .list
                    height: 80%
                    overflow-y: scroll
                    padding: 10px
                    .item
                        width: 100%
                        padding: 5px 6px
                        text-align: left
                        box-sizing: border-box
                        >*
                            display: inline-block
                            vertical-align: middle
                            height: 40px
                            line-height: 40px
                            box-sizing: border-box
                        img
                            width: 40px
                            border-radius: 100px
                        .title
                            margin-left: 10px
                            color: gray
                            width: calc(100% - 90px)
                        button
                            width: 40px
                            height: 40px
                            line-height: 45px
                            border-radius: 40px
                            border: 1px solid gray
                            box-sizing: border-box
                            padding: 0
                            margin: 0
                            cursor: pointer
                            color: black
                            background: transparent
                            outline: none
                            &:hover
                                background: #7083e8
                                color: white
                            >*
                                vertical-align: middle
create-item = (store, item)-->
    add = ->
        store.current.add-coin = no
        <- web3(store).install item
    title = "#{item.token} #{item.type}"
    style = get-primary-info store
    button-style =
        border: "1px solid #{style.app.text}"
        color: style.app.text
    .item.pug
        img.pug(src="#{item.image}")
        span.pug.title #{title}
        button.pug(on-click=add style=button-style)
            icon \Plus, 20
filter-item = (store)-> (item)->
    return yes if (store.current.filter-plugins ? "").length is 0
    (item.token ? "").index-of(store.current.filter-plugins) > -1
module.exports = ({ store } )->
    return null if store.current.add-coin isnt yes
    close = ->
        store.current.add-coin = no
    filter-registery = (event)->
        store.current.filter-plugins = event.target.value
    style = get-primary-info store
    account-body-style = 
        background: style.app.background
        border-bottom: "1px solid #{style.app.border}"
    lang = get-lang store
    input-style=
        background: style.app.input
    .pug.manage-account
        .account-body.pug(style=account-body-style)
            .pug.title(style=account-body-style)
                .pug
                    .pug #{lang.plugin-registry}
                    .pug.close(on-click=close) ×
                .pug
                    input.search.pug(placeholder="#{lang.search}" on-change=filter-registery style=input-style)
            .pug.settings
                .pug.section
                    .list.pug
                        if store.registry.length > 0
                            store.registry 
                                |> filter filter-item store
                                |> map create-item store
                        else
                            .loading.pug
                                loading \black