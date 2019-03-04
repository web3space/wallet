require! {
    \./get-primary-coin.ls
}
module.exports = (store)->
    coin = get-primary-coin store
    branding =
        logo: coin.branding?logo ? \https://res.cloudinary.com/nixar-work/image/upload/v1546550019/ethnamed-logo.png
        title: coin.branding?title ? "WEB3 WALLET"
    links = coin.links ? []
    color = coin?color ? "#000000"
    { branding, links, color }