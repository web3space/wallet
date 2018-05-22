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
    .pug.login-container
      .pug.row
        .pug.col-md-12
          .pug.text-center.m-b-md
            h3.pug PLEASE LOGIN TO APP
            small.pug This is the best app ever!
          .pug.hpanel
            .pug.panel-body
              form.pug#loginForm(action='#')
                .pug.form-group
                  label.pug.control-label(for='username') Username
                  input.pug#username.form-control(type='text' placeholder='example@gmail.com' title='Please enter you username' required='' value='' name='username')
                  span.pug.help-block.small Your unique username to app
                .pug.form-group
                  label.pug.control-label(for='password') Password
                  input.pug#password.form-control(type='password' title='Please enter your password' placeholder='******' required='' value='' name='password')
                  span.pug.help-block.small Yur strong password
                .pug.checkbox
                  input.pug.i-checks(type='checkbox' checked='')
                  span.pug                                      Remember login
                  p.pug.help-block.small (if this is a private computer)
                button.pug.btn.btn-success.btn-block Login
                a.pug.btn.btn-default.btn-block(href='#') Register
      .pug.row
        .pug.col-md-12.text-center
          strong.pug HOMER
          span.pug  - AngularJS Responsive WebApp 
          br.pug
          span.pug  2015 Copyright Company Name
    foot!
  
  
  
  
