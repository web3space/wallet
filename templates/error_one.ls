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
    .pug.color-line
    .pug.back-link
      a.pug.btn.btn-primary(href='index.html') Back to Dashboard
    .pug.error-container
      i.pug.pe-7s-way.text-success.big-icon
      h1.pug 404
      strong.pug Page Not Found
      p.pug
        span.pug Sorry, but the page you are looking for has note been found. Try checking the URL for error, then hit the refresh button on your browser or try found something else in our app.
      a.pug.btn.btn-xs.btn-success(href='index.html') Go back to dashboard
    foot!
  
  
  
  
