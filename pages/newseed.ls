require! {
    \react
    \../newseed-funcs.ls
    \../get-lang.ls
    \../get-primary-info.ls
}
.newseed
    @import scheme
    padding-top: 50px
    width: 100%
    height: $height
    box-sizing: border-box
    height: 100%
    .title
        color: #ebf6f8
        font-size: 35px
        margin-bottom: 20px
    textarea
        width: 90%
        height: 100px
        border-radius: 3px
        resize: none
        padding: 10px
        font-size: 17px
        border: 1px solid #CCC
        text-align: center
        outline: none
        &:focus
            border-color: #248295
    button
        outline: none
        width: 125px
        margin: 5px
        height: 26px
        border: 0
        cursor: pointer
        background: #248295
        border-radius: 20px
        font-size: 15px
        color: white
        &:hover
            background: #248295 - 20
    .warning
        padding: 15px;
        border: 1px solid orange;
        margin: 10px;
        border-radius: 5px;
        background: rgba(orange, 0.2)
    .hint
        color: #f2eeee
        padding: 20px 38px
newseed = ({ store })->
    lang = get-lang store
    { generate-seed, change-seed, save, fix-issue, has-issue } = newseed-funcs store
    style = get-primary-info store
    text-style =
        color: style.app.text
    .newseed.pug
        .title.pug #{lang.new-seed-phrase ? 'New Seed Phrase'}
        textarea.pug(value="#{store.current.seed-temp}" on-change=change-seed placeholder="#{lang.new-seed-placeholder ? 'Click Generate or Put Your Seed Phrase here'}")
        .pug
            button.pug.left(on-click=generate-seed) #{lang.generate ? 'Generate' }
            button.pug.right(on-click=save) #{lang.save ? 'Save' }
        if has-issue!
            .pug.warning(style=text-style)
                .pug #{lang.seed-warning}
                button.pug.center(on-click=fix-issue) #{lang.fix-issue}
        .pug.hint(style=text-style) #{lang.new-seed-warning ? 'The phrase is stored securely on your computer. Do not transfer it to a third party and keep the duplicate in a safe place.'}
focus = (store, cb)->
    <- set-timeout _, 1000
    textarea = store.root.query-selector '.newseed textarea'
    textarea.focus!
    cb null
newseed.focus = focus
module.exports = newseed