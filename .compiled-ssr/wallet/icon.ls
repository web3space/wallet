require! {
    \react
}
module.exports = (name)->
    react.create-element 'i', { className: "zmdi-#{name} zmdi" }