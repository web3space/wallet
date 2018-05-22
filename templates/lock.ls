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
    .pug.lock-container
      div.pug
        .pug.hpanel
          .pug.panel-body.text-center
            i.pug.pe-7s-lock.big-icon.text-success
            br.pug
            h4.pug
              span.pug.text-success 3:43:15 PM
              strong.pug Friday, February 27, 2015
            p.pug
              span.pug Your are in lock screen. Main app was shut down and you need to enter your passwor to go back to app.
            form.pug.m-t(action='#' role='form')
              .pug.form-group
                input.pug.form-control(type='password' required='' placeholder='******')
              button.pug.btn.btn-primary.block.full-width(type='submit') Unlock
    foot!
  
  
  
  
