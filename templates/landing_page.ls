require! {
  \react
  \./head.ls
  \./foot.ls
}
module.exports = ->
  head!
  body.pug.landing-page
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
    nav.pug.navbar.navbar-default.navbar-fixed-top
      .pug.container
        .pug.navbar-header
          button.pug.navbar-toggle.collapsed(aria-controls='navbar' aria-expanded='false' data-target='#navbar' data-toggle='collapse' type='button')
            span.pug.sr-only Toggle navigation
            span.pug.icon-bar
            span.pug.icon-bar
            span.pug.icon-bar
          a.pug.navbar-brand(href='index.html') HOMER
          .pug.brand-desc
            span.pug Landing page for Homer app
        .pug#navbar.navbar-collapse.collapse
          ul.pug.nav.navbar-nav.navbar-right
            li.pug.active
              a.pug.page-scroll(href='#page-top') Home
            li.pug
              a.pug.page-scroll(page-scroll='' href='#components') UI
            li.pug
              a.pug.page-scroll(page-scroll='' href='#features') Features
            li.pug
              a.pug.page-scroll(page-scroll='' href='#team') Team
            li.pug
              a.pug.page-scroll(page-scroll='' href='#pricing') Pricing 
            li.pug
              a.pug.page-scroll(page-scroll='' href='#clients') Clients 
            li.pug
              a.pug.page-scroll(page-scroll='' href='#contact') Contact
    header.pug#page-top
      .pug.container
        .pug.heading
          h1.pug
            span.pug Welcome to Homer landing page
          span.pug
            span.pug Contrary to popular belief, Lorem Ipsum is not
            br.pug
            span.pug  simply random text for print.
          p.pug.small
            span.pug Lorem Ipsum is simply dummy text of the printing and tLorem Ipsum is  Lorem Ipsum is simply dummy of the simply dummy text of the ypesetting.
          a.pug.btn.btn-success.btn-sm(href='#') Learn more
        .pug.heading-image.animate-panel(data-child='img-animate' data-effect='fadeInRight')
          p.pug.small Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          img.pug.img-animate(src='images/landing/c1.jpg')
          img.pug.img-animate(src='images/landing/c2.jpg')
          img.pug.img-animate(src='images/landing/c3.jpg')
          img.pug.img-animate(src='images/landing/c4.jpg')
          br.pug
          img.pug.img-animate(src='images/landing/c5.jpg')
          img.pug.img-animate(src='images/landing/c6.jpg')
          img.pug.img-animate(src='images/landing/c7.jpg')
          img.pug.img-animate(src='images/landing/c8.jpg')
    section.pug
      .pug.container
        .pug.row
          .pug.col-md-4
            h4.pug HTML5 &amp; CSS3
            p.pug
              span.pug Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.
            p.pug
              a.pug.navy-link.btn.btn-sm(href='#' role='button') Learn more
          .pug.col-md-4
            h4.pug Staggering Animations
            p.pug
              span.pug It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of.
            p.pug
              a.pug.navy-link.btn.btn-sm(href='#' role='button') Learn more
          .pug.col-md-4
            h4.pug Unique Dashboard
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.
            p.pug
              a.pug.navy-link.btn.btn-sm(href='#' role='button') Learn more
    section.pug#components.bg-light
      .pug.container
        .pug.row
          .pug.col-lg-12
            h2.pug
              span.pug.text-success UI components 
              span.pug for your app
            p.pug Lorem Ipsum available, but the majority have suffered alteration euismod. 
        .pug.row.m-t-md
          .pug.col-md-6
            h4.pug.m-t-xxxl Special contacts view
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&apos;t look even slightly believable. If you are going to use a passage of Lorem Ipsum.
          .pug.col-md-6
            img.pug.img-responsive(src='images/landing/s2.png')
        .pug.row.m-t-xl
          .pug.col-md-6
            img.pug.img-responsive(src='images/landing/s4.png')
          .pug.col-md-6
            h4.pug.m-t-xxl Additional analytical components
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&apos;t look even slightly believable. If you are going to use a passage of Lorem Ipsum.
        .pug.row.m-t-xl
          .pug.col-md-6
            h4.pug.m-t-xxl Special designed project view
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&apos;t look even slightly believable. If you are going to use a passage of Lorem Ipsum.
          .pug.col-md-6
            img.pug.img-responsive(src='images/landing/s1.png')
        .pug.row.m-t-xl
          .pug.col-md-6
            img.pug.img-responsive(src='images/landing/s3.png')
          .pug.col-md-6
            h4.pug.m-t-xxl Many widets components
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&apos;t look even slightly believable. If you are going to use a passage of Lorem Ipsum.
    section.pug#features
      .pug.container
        .pug.row
          .pug.col-md-6.col-md-offset-3.text-center
            h2.pug
              span.pug.text-success Many features to 
              span.pug discover with Homer
            p.pug
              span.pug Lorem Ipsum as their default model text, and a search for &apos;lorem ipsum&apos; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes.
        .pug.row.m-t-lg
          .pug.col-md-4.col-md-offset-2
            strong.pug Donec sed odio dui.
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.
            a.pug.btn.btn-success.btn-sm Learn more
          .pug.col-md-4
            strong.pug Lorem Ipsum as their.
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.
            a.pug.btn.btn-success.btn-sm Learn more
        .pug.row.m-t-lg
          .pug.col-md-4.col-md-offset-2
            strong.pug Donec sed odio dui.
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.
            a.pug.btn.btn-success.btn-sm Learn more
          .pug.col-md-4
            strong.pug Lorem Ipsum as their.
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.
            a.pug.btn.btn-success.btn-sm Learn more
    section.pug#features2.bg-light
      .pug.container
        .pug.row.text-center
          .pug.col-lg-12
            h2.pug
              span.pug.text-success Special icons 
              span.pug for your app
            p.pug Lorem Ipsum available, but the majority have suffered alteration euismod. 
        .pug.row.text-center
          .pug.col-md-3
            h4.pug.m-t-lg
              i.pug.pe-7s-airplay.text-success.icon-big
            strong.pug Lorem Ipsum available
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.
          .pug.col-md-3
            h4.pug.m-t-lg
              i.pug.pe-7s-science.text-success.icon-big
            strong.pug Lorem Ipsum available
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.
          .pug.col-md-3
            h4.pug.m-t-lg
              i.pug.pe-7s-display1.text-success.icon-big
            strong.pug Lorem Ipsum available
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.
          .pug.col-md-3
            h4.pug.m-t-lg
              i.pug.pe-7s-cloud-upload.text-success.icon-big
            strong.pug Lorem Ipsum available
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.
        .pug.row.text-center
          .pug.col-md-3
            h4.pug.m-t-lg
              i.pug.pe-7s-global.text-success.icon-big
            strong.pug Lorem Ipsum available
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.
          .pug.col-md-3
            h4.pug.m-t-lg
              i.pug.pe-7s-battery.text-success.icon-big
            strong.pug Lorem Ipsum available
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.
          .pug.col-md-3
            h4.pug.m-t-lg
              i.pug.pe-7s-users.text-success.icon-big
            strong.pug Lorem Ipsum available
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.
          .pug.col-md-3
            h4.pug.m-t-lg
              i.pug.pe-7s-ticket.text-success.icon-big
            strong.pug Lorem Ipsum available
            p.pug
              span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.
    section.pug#team
      .pug.container
        .pug.row.text-center
          .pug.col-md-6.col-md-offset-3
            h2.pug
              span.pug.text-success Our team 
              span.pug support you
            p.pug
              span.pug Lorem Ipsum as their default model text, and a search for &apos;lorem ipsum&apos; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes.
        .pug.row.m-t-lg.text-center
          .pug.col-sm-4
            .pug.team-member
              img.pug.img-circle.img-small(src='images/a2.jpg' alt='')
              h4.pug
                span.pug User
                span.pug  name
              p.pug
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
          .pug.col-sm-4
            .pug.team-member
              img.pug.img-circle(src='images/a5.jpg' alt='')
              h4.pug
                span.pug User
                span.pug  name
              p.pug
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
          .pug.col-sm-4
            .pug.team-member
              img.pug.img-circle.img-small(src='images/a3.jpg' alt='')
              h4.pug
                span.pug User
                span.pug  name
              p.pug
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
        .pug.row.m-t-lg.text-center
          .pug.col-sm-4
            .pug.team-member
              img.pug.img-circle.img-small(src='images/a7.jpg' alt='')
              h4.pug
                span.pug User
                span.pug  name
              p.pug
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
          .pug.col-sm-4
            .pug.team-member
              img.pug.img-circle(src='images/a8.jpg' alt='')
              h4.pug
                span.pug User
                span.pug  name
              p.pug
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
          .pug.col-sm-4
            .pug.team-member
              img.pug.img-circle.img-small(src='images/a9.jpg' alt='')
              h4.pug
                span.pug User
                span.pug  name
              p.pug
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
    section.pug#pricing.bg-light
      .pug.container
        .pug.row.text-center
          .pug.col-lg-12
            h2.pug
              span.pug.text-success Best pricing 
              span.pug for your app
            p.pug Lorem Ipsum available, but the majority have suffered alteration euismod. 
        .pug.row.m-t-lg
          .pug.col-lg-3
            ul.pug.pricing-plan.list-unstyled
              li.pug.pricing-title
                span.pug Basic
              li.pug.pricing-desc
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
              li.pug.pricing-price
                span.pug $16
              li.pug
                span.pug Dashboards
              li.pug
                span.pug Projects view
              li.pug
                span.pug Contacts
              li.pug
                span.pug Calendar
              li.pug
                span.pug AngularJs
              li.pug
                a.pug.btn.btn-primary.btn-sm(href='#') Signup today
          .pug.col-lg-3
            ul.pug.pricing-plan.list-unstyled.selected
              li.pug.pricing-title
                span.pug Standard
              li.pug.pricing-desc
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
              li.pug.pricing-price
                span.pug $22
              li.pug
                span.pug Dashboards
              li.pug
                span.pug Projects view
              li.pug
                span.pug Contacts
              li.pug
                span.pug Calendar
              li.pug
                span.pug AngularJs
              li.pug.plan-action
                a.pug.btn.btn-primary.btn-sm(href='#') Signup today
          .pug.col-lg-3
            ul.pug.pricing-plan.list-unstyled
              li.pug.pricing-title
                span.pug Premium
              li.pug.pricing-desc
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
              li.pug.pricing-price
                span.pug $160
              li.pug
                span.pug Dashboards
              li.pug
                span.pug Projects view
              li.pug
                span.pug Contacts
              li.pug
                span.pug Calendar
              li.pug
                span.pug AngularJs
              li.pug
                a.pug.btn.btn-primary.btn-sm(href='#') Signup today
          .pug.col-lg-3
            ul.pug.pricing-plan.list-unstyled
              li.pug.pricing-title
                span.pug Prestige
              li.pug.pricing-desc
                span.pug Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
              li.pug.pricing-price
                span.pug $260
              li.pug
                span.pug Dashboards
              li.pug
                span.pug Projects view
              li.pug
                span.pug Contacts
              li.pug
                span.pug Calendar
              li.pug
                span.pug AngularJs
              li.pug
                a.pug.btn.btn-primary.btn-sm(href='#') Signup today
    section.pug#clients
      .pug.container
        .pug.row.text-center
          .pug.col-md-6.col-md-offset-3
            h2.pug
              span.pug.text-success Our best
              span.pug  clients
            p.pug
              span.pug Lorem Ipsum as their default model text, and a search for &apos;lorem ipsum&apos; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes.
        .pug.row.text-center.m-t-lg
          .pug.col-md-6.col-md-offset-3
            .pug.row
              .pug.col-md-6
                .pug.client Company logo
              .pug.col-md-6
                .pug.client Company logo
              .pug.col-md-6
                .pug.client Company logo
              .pug.col-md-6
                .pug.client Company logo
              .pug.col-md-6
                .pug.client Company logo
              .pug.col-md-6
                .pug.client Company logo
    section.pug#contact.bg-light
      .pug.container
        .pug.row.text-center
          .pug.col-md-6.col-md-offset-3
            h2.pug
              span.pug.text-success Contact with us
              span.pug  anytime
            p.pug
              span.pug Lorem Ipsum as their default model text, and a search for &apos;lorem ipsum&apos; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes.
        .pug.row.text-center.m-t-lg
          .pug.col-md-4.col-md-offset-3
            form.pug.form-horizontal(role='form' method='post' action='#')
              .pug.form-group
                label.pug.col-sm-2.control-label(for='name') Name
                .pug.col-sm-10
                  input.pug#name.form-control(type='text' name='name' placeholder='Your full name' value='')
              .pug.form-group
                label.pug.col-sm-2.control-label(for='email') Email
                .pug.col-sm-10
                  input.pug#email.form-control(type='email' name='email' placeholder='user@example.com' value='')
              .pug.form-group
                label.pug.col-sm-2.control-label(for='message') Message
                .pug.col-sm-10
                  textarea.pug.form-control(rows='3' name='message' placeholder='Your message here...')
              .pug.form-group
                .pug.col-sm-12
                  input.pug#submit.btn.btn-success(name='submit' type='submit' value='Send us a message')
          .pug.col-md-3.text-left
            address.pug
              strong.pug
                span.pug.navy Company name, Inc.
              br.pug
              span.pug                     601 Street name, 123
              br.pug
              span.pug                     New York, De 34101
              br.pug
              abbr.pug(title='Phone') P:
              span.pug  (123) 678-8674
            p.pug.text-color
              span.pug Consectetur adipisicing elit. Aut eaque, totam corporis laboriosam veritatis quis ad perspiciatis, totam corporis laboriosam veritatis, consectetur adipisicing elit quos non quis ad perspiciatis, totam corporis ea,
    foot!
  
  
  
  
