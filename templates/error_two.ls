require! {
  \react
  \./head.ls
  \./foot.ls
}
module.exports = ->
  head!
  body.pug.blank
    .pug.splash
      .pug.color-line
      .pug.splash-title
        h1.pug Homer - Responsive Admin Theme
        p.pug
          span.pug Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel.
        .pug.spinner
          .pug.rect1
          .pug.rect2
          .pug.rect3
          .pug.rect4
          .pug.rect5
      p.pug.alert.alert-danger
        span.pug You are using an 
        strong.pug outdated
        span.pug  browser. Please 
        a.pug(href='http://browsehappy.com/') upgrade your browser
        span.pug  to improve your experience.
    .pug.back-link
      a.pug.btn.btn-primary(href='index.html') Back to Dashboard
    .pug.error-container
      i.pug.pe-7s-way.text-success.big-icon
      h1.pug 500
      strong.pug Internal Server Error
      p.pug
        span.pug The server encountered something unexpected that didn&apos;t allow it to complete the request. We apologize.
      a.pug.btn.btn-xs.btn-success(href='index.html') Go back to dashboard
    foot!
  
  
  
  
