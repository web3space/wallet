require! \react
.btn
    color: blue
    padding-left: 8px
    &:hover
        color: orange
module.exports = ({click, text})->
    a.pug.btn(target='blank' on-click=click) #{text}