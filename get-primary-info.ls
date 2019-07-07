require! {
    \./get-primary-coin.ls
}
themes =
    light:
        background: \#FFF
        input: \#FFF
        icon: \gray
        border: \#213040
        text: \black
    dark:
        background: \#18222D
        input: \#213040
        icon: \#276A9F
        border: \#213040
        text: \#FFF
module.exports = (store)->
    coin = get-primary-coin store
    branding =
        logo: coin.branding?logo ? \https://res.cloudinary.com/nixar-work/image/upload/v1546550019/ethnamed-logo.png
        title: coin.branding?title ? "WEB3 WALLET"
    links = coin.links ? []
    color = coin?color ? "#000000"
    app = themes[store.theme] ? themes.dark
    { app, branding, links, color }