require! {
    \./wallets.ls
    \./history.ls
    \./send.ls
}
export loading = ->
    .pug.loading Loading...
export not-found = ->
    .pug Page Not Found
export wallets
export history
export send