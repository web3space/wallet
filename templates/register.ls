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
    .pug.register-container
      .pug.row
        .pug.col-md-12
          .pug.text-center.m-b-md
            h3.pug Registration
            small.pug
              span.pug Full suported AngularJS WebApp/Admin template with very clean and aesthetic style prepared for your next app.
          .pug.hpanel
            .pug.panel-body
              form.pug#loginForm(action='#')
                .pug.row
                  .pug.form-group.col-lg-12
                    label.pug Username
                    input.pug.form-control(type='' value='' id='' name='')
                  .pug.form-group.col-lg-6
                    label.pug Password
                    input.pug.form-control(type='password' value='' id='' name='')
                  .pug.form-group.col-lg-6
                    label.pug Repeat Password
                    input.pug.form-control(type='password' value='' id='' name='')
                  .pug.form-group.col-lg-6
                    label.pug Email Address
                    input.pug.form-control(type='' value='' id='' name='')
                  .pug.form-group.col-lg-6
                    label.pug Repeat Email Address
                    input.pug.form-control(type='' value='' id='' name='')
                  .pug.checkbox.col-lg-12
                    input.pug.i-checks(type='checkbox' checked='')
                    span.pug                                 Sigh up for our newsletter
                .pug.text-center
                  button.pug.btn.btn-success Register
                  button.pug.btn.btn-default Cancel
      .pug.row
        .pug.col-md-12.text-center
          strong.pug HOMER
          span.pug  - AngularJS Responsive WebApp 
          br.pug
          span.pug  2015 Copyright Company Name
    foot!
  
  
  
  
