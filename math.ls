require! {
    \big.js
    \prelude-ls : { map, pairs-to-obj }
}
math = ($)-> (x, y)->
    try 
        new big(x)[$](y).to-string!
    catch err
        throw "#{x} #{$} #{y} = #{err}"
module.exports =
    <[ plus minus times div ]>
        |> map -> [it, math(it)]
        |> pairs-to-obj