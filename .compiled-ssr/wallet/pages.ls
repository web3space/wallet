require! {
    \./wallets.ls
    \./history.ls
    \./send.ls
    \./receive.ls
    \./locked.ls
    \./newseed.ls
    \./sent.ls
    \./loading.ls
    \react
}
export not-found = ->
    react.create-element 'div', {}, ' Page Not Found'
export loading
export wallets
export history
export send
export receive
export locked
export newseed
export sent