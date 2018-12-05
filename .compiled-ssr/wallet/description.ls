require! {
    \react
}
# .description1821565793
#     @keyframes fadeIn
#         0%
#             opacity: 0
#             right: -100vw
#         20%
#             opacity: 1
#             right: 0
#         100%
#             color: black
#             opacity: 1
#             right: 0
#     animation: fadeIn 1s 3s ease-in-out forwards
#     color: white
#     right: -100vw
#     position: absolute
#     top: 0
#     width: 600px
#     height: 100vh
#     background: rgba(white, 0.94)
#     @media screen and (max-width: 600px)
#         width: 100%
#         z-index: 10
#         padding: 20px;
#         box-sizing: border-box
#     .line
#         .white
#             background: white
#         .mark
#             font-weight: bold
#             color: #248295
#         margin-bottom: 10px
#         a
#             display: inline-block
#             cursor: pointer
#             &.got-it
#                 padding: 10px 20px
#                 color: #CCC
#             &.big
#                 background: #248295
#                 color: white
#                 text-decoration: none
#                 padding: 10px 20px
#                 border-radius: 25px
#                 margin-top: 10px
#                 text-transform: uppercase
#                 &:hover
#                     background: #248295 - 20
#     .who
#         color: #CCC
#         font-size: 12px
#         padding-right: 11px
#         text-align: right
#         a  
#             color: gray
#     .for-free
#         border: 1px solid #80a4ad
#         padding: 3px
#         border-radius: 5px
#         color: #80a4ad
#         transform: rotate(-9deg)
#         display: inline-block
#     pre
#         background: #0c1230
#         color: white
#         padding: 10px
#         font-size: 12px
#         border-radius: 5px 0 0 5px
#         @media screen and (max-width: 600px)
#             border-radius: 0
#         .part
#             display: inline-block
#             vertical-align: top
#             padding: 0
#             margin: 0
#             white-space: nowrap
#         .mark
#             color: orange
module.exports = (store)->
    return null if store.current.demo is no
    return null
    close-demo = ->
        store.current.demo = no
    react.create-element 'div', { key: "description", className: 'description description1821565793' }, children = 
        react.create-element 'h1', {}, ' Ethnamed Smart-Wallet'
        react.create-element 'div', { className: 'line' }, children = 
            react.create-element 'span', {}, ' This is a demo of the wallet connected to the '
            react.create-element 'a', { href: "https://github.com/ethnamed/protocol" }, ' Ethnamed protocol'
        react.create-element 'div', { className: 'line' }, ' Try to use this seed to see the testnet balance'
        react.create-element 'pre', {}, ' xmr bch btg ltc eth eos xem ada dash btc zec bcn'
        react.create-element 'pre', {}, ' PIN: 1234'
        react.create-element 'div', { className: 'line' }, children = 
            react.create-element 'span', {}, ' You can try to register '
            react.create-element 'span', { className: 'mark' }, ' nickname@gmail.com'
            react.create-element 'span', {}, ' or'
            react.create-element 'span', { className: 'mark' }, ' nickname.ethnamed.io'
            react.create-element 'span', {}, '  You can try to send eth to another address. If address not found your still can send ETH to Ethnamed Smart-Contract. When user confirms his address he will get funds automatically.'
        react.create-element 'div', { className: 'line' }, children = 
            react.create-element 'span', {}, ' It is still under construction - will be used as chrome plug-in (line Metamask) and mobile app. '
            react.create-element 'span', {}, ' Also it extends web3 protocol for btc, ltc, zec, dash networks available on the website'
        react.create-element 'div', { className: 'line' }, children = 
            react.create-element 'span', {}, ' Example of the api (devtools):'
        react.create-element 'div', { className: 'line' }, children = 
            react.create-element 'pre', {}, children = 
                react.create-element 'span', { className: 'part' }, ' web3t.use(`'
                react.create-element 'span', { className: 'part mark' }, ' mainnet'
                react.create-element 'span', { className: 'part' }, ' `); '
                react.create-element 'span', {}, ' or '
                react.create-element 'span', { className: 'part' }, ' web3t.use(`'
                react.create-element 'span', { className: 'part mark' }, ' testnet'
                react.create-element 'span', { className: 'part' }, ' `);'
        for item in <[ eth btc xem ]>
            react.create-element 'pre', { key: "#{item}" }, children = 
                react.create-element 'span', { className: 'part' }, ' web3t.'
                react.create-element 'span', { className: 'part mark' }, ' ' + item
                react.create-element 'span', { className: 'part' }, ' .sendTransaction({ to, amount }, cb)'
        react.create-element 'div', { className: 'line' }, ' This is a new business oppurtunity for crypto entrepreneurs (no ICO, but tokenization of available functionality)'
        react.create-element 'div', { className: 'line' }, children = 
            react.create-element 'span', {}, ' More information you can read in our '
            react.create-element 'a', { href: "https://docs.google.com/document/d/16W9E3lLrlkhbjklWLAEmPjF8Ovl8gBUmT8MsOZM0WjA/edit?usp=sharing" }, ' Whitepaper'
        react.create-element 'div', { className: 'line' }, children = 
            react.create-element 'span', {}, ' All community member will get names '
            react.create-element 'span', { className: 'for-free' }, ' FOR FREE'
        react.create-element 'div', { className: 'line white' }, children = 
            react.create-element 'a', { href: "https://t.me/ethnamed", className: 'big' }, ' Join our community'
            react.create-element 'a', { on-click: close-demo, className: 'got-it' }, ' Close this'
        react.create-element 'div', { className: 'line who' }, children = 
            react.create-element 'span', {}, ' Made with love. '
            react.create-element 'a', { href: "ethnamed.io" }, ' Ethnamed '
            react.create-element 'span', {}, ' team'