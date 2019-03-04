require! {
    \../wallet/plugins/xem-coin.ls : xem
}

str = JSON.stringify xem, null, 4
console.log str