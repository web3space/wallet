require! {
    \react
    \prelude-ls : { map, filter }
    \./loading.ls
    \../web3.ls
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
    height: 100%
    padding-top: 5%
    box-sizing: border-box
    padding: 10px
    background: rgba(black, 0.8)
    >.account-body
        max-width: 600px
        min-height: 400px
        display: inline-block
        animation-duration: 0.5s
        animation-name: bounceIn
        background: white
        width: 100%
        max-height: 90vh
        margin-top: 5vh
        border-radius: 10px
        >.title
            color: gray
            font-size: 22px
            padding: 10px
            position: relative
            >.close
                position: absolute
                padding: 5px 10px
                font-size: 30px
                right: 0
                top: 0
                cursor: pointer
                &:hover
                    color: #CCC
        >.settings
        .section
            .search
                border: 1px solid #CCC
                padding: 9px
                border-radius: 14px
                width: 97%
                box-sizing: border-box
                font-size: 13px
                outline: none
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
                        border-radius: 40px
                        border: 1px solid gray
                        box-sizing: border-box
                        padding: 0
                        margin: 0
                        cursor: pointer
                        color: black
                        background: white
                        outline: none
                        &:hover
                            background: #7083e8
                            color: white
create-item = (store, item)-->
    add = ->
        store.current.add-coin = no
        <- web3(store).install item
    title = "#{item.token} #{item.type}"
    .item.pug
        img.pug(src="#{item.image}")
        span.pug.title #{title}
        button.pug(on-click=add) Add
filter-item = (store)-> (item)->
    return yes if (store.current.filter-plugins ? "").length is 0
    (item.token ? "").index-of(store.current.filter-plugins) > -1
module.exports = ({ store } )->
    return null if store.current.add-coin isnt yes
    close = ->
        store.current.add-coin = no
    filter-registery = (event)->
        store.current.filter-plugins = event.target.value
    .pug.manage-account
        .account-body.pug
            .pug.title 
                .pug Plugin Registry
                .pug.close(on-click=close) ×
            .pug.settings
                .pug.section
                    .pug
                        input.search.pug(placeholder="Search" on-change=filter-registery)
                    .list.pug
                        if store.registry.length > 0
                            store.registry 
                                |> filter filter-item store
                                |> map create-item store
                        else
                            .loading.pug
                                loading \black