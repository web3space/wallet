require! {
  \react
  \./head.ls
  \./foot.ls
}
module.exports = ->
  head!
  body.pug.fixed-navbar.sidebar-scroll
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
    .pug#header
      .pug.color-line
      .pug#logo.light-version
        span.pug
          span.pug Homer Theme
      nav.pug(role='navigation')
        .pug.header-link.hide-menu
          i.pug.fa.fa-bars
        .pug.small-logo
          span.pug.text-primary HOMER APP
        form.pug.navbar-form-custom(role='search' method='post' action='#')
          .pug.form-group
            input.pug.form-control(type='text' placeholder='Search something special' name='search')
        .pug.mobile-menu
          button.pug.navbar-toggle.mobile-menu-toggle(type='button' data-toggle='collapse' data-target='#mobile-collapse')
            i.pug.fa.fa-chevron-down
          .pug#mobile-collapse.collapse.mobile-navbar
            ul.pug.nav.navbar-nav
              li.pug
                a.pug(href='login.html') Login
              li.pug
                a.pug(href='login.html') Logout
              li.pug
                a.pug(href='profile.html') Profile
        .pug.navbar-right
          ul.pug.nav.navbar-nav.no-borders
            li.pug.dropdown
              a.pug.dropdown-toggle(href='#' data-toggle='dropdown')
                i.pug.pe-7s-speaker
              ul.pug.dropdown-menu.hdropdown.notification.animated.flipInX
                li.pug
                  a.pug
                    span.pug.label.label-success NEW
                    span.pug  It is a long established.
                li.pug
                  a.pug
                    span.pug.label.label-warning WAR
                    span.pug  There are many variations.
                li.pug
                  a.pug
                    span.pug.label.label-danger ERR
                    span.pug  Contrary to popular belief.
                li.pug.summary
                  a.pug(href='#') See all notifications
            li.pug.dropdown
              a.pug.dropdown-toggle(href='#' data-toggle='dropdown')
                i.pug.pe-7s-keypad
              .pug.dropdown-menu.hdropdown.bigmenu.animated.flipInX
                table.pug
                  tbody.pug
                    tr.pug
                      td.pug
                        a.pug(href='projects.html')
                          i.pug.pe.pe-7s-portfolio.text-info
                          h5.pug Projects
                      td.pug
                        a.pug(href='mailbox.html')
                          i.pug.pe.pe-7s-mail.text-warning
                          h5.pug Email
                      td.pug
                        a.pug(href='contacts.html')
                          i.pug.pe.pe-7s-users.text-success
                          h5.pug Contacts
                    tr.pug
                      td.pug
                        a.pug(href='forum.html')
                          i.pug.pe.pe-7s-comment.text-info
                          h5.pug Forum
                      td.pug
                        a.pug(href='analytics.html')
                          i.pug.pe.pe-7s-graph1.text-danger
                          h5.pug Analytics
                      td.pug
                        a.pug(href='file_manager.html')
                          i.pug.pe.pe-7s-box1.text-success
                          h5.pug Files
            li.pug.dropdown
              a.pug.dropdown-toggle.label-menu-corner(href='#' data-toggle='dropdown')
                i.pug.pe-7s-mail
                span.pug.label.label-success 4
              ul.pug.dropdown-menu.hdropdown.animated.flipInX
                .pug.title
                  span.pug You have 4 new messages
                li.pug
                  a.pug
                    span.pug It is a long established.
                li.pug
                  a.pug
                    span.pug There are many variations.
                li.pug
                  a.pug
                    span.pug Lorem Ipsum is simply dummy.
                li.pug
                  a.pug
                    span.pug Contrary to popular belief.
                li.pug.summary
                  a.pug(href='#') See All Messages
            li.pug
              a.pug#sidebar.right-sidebar-toggle(href='#')
                i.pug.pe-7s-upload.pe-7s-news-paper
            li.pug.dropdown
              a.pug(href='login.html')
                i.pug.pe-7s-upload.pe-rotate-90
    aside.pug#menu
      .pug#navigation
        .pug.profile-picture
          a.pug(href='index.html')
            img.pug.img-circle.m-b(src='images/profile.jpg' alt='logo')
          .pug.stats-label.text-color
            span.pug.font-extra-bold.font-uppercase Robert Razer
            .pug.dropdown
              a.pug.dropdown-toggle(href='#' data-toggle='dropdown')
                small.pug.text-muted
                  span.pug Founder of App 
                  b.pug.caret
              ul.pug.dropdown-menu.animated.flipInX.m-t-xs
                li.pug
                  a.pug(href='contacts.html') Contacts
                li.pug
                  a.pug(href='profile.html') Profile
                li.pug
                  a.pug(href='analytics.html') Analytics
                li.pug.divider
                li.pug
                  a.pug(href='login.html') Logout
            .pug#sparkline1.small-chart.m-t-sm
            div.pug
              h4.pug.font-extra-bold.m-b-xs
                span.pug $260 104,200
              small.pug.text-muted Your income from the last year in sales product X.
        ul.pug#side-menu.nav
          li.pug
            a.pug(href='index.html')
              span.pug.nav-label Dashboard
              span.pug.label.label-success.pull-right v.1
          li.pug
            a.pug(href='analytics.html')
              span.pug.nav-label Analytics
              span.pug.label.label-warning.pull-right NEW
          li.pug
            a.pug(href='#')
              span.pug.nav-label Interface
              span.pug.fa.arrow
            ul.pug.nav.nav-second-level
              li.pug
                a.pug(href='panels.html') Panels design
              li.pug
                a.pug(href='typography.html') Typography
              li.pug
                a.pug(href='buttons.html') Colors &amp; Buttons
              li.pug
                a.pug(href='components.html') Components
              li.pug
                a.pug(href='alerts.html') Alerts
              li.pug
                a.pug(href='modals.html') Modals
              li.pug
                a.pug(href='loading_buttons.html') Loading buttons
              li.pug
                a.pug(href='draggable.html') Draggable panels
              li.pug
                a.pug(href='code_editor.html') Code editor
              li.pug
                a.pug(href='email_template.html') Email template
              li.pug
                a.pug(href='nestable_list.html') List
              li.pug
                a.pug(href='tour.html') Tour
              li.pug
                a.pug(href='icons.html') Icons library
          li.pug.active
            a.pug(href='#')
              span.pug.nav-label App views
              span.pug.fa.arrow
            ul.pug.nav.nav-second-level
              li.pug
                a.pug(href='contacts.html') Contacts
              li.pug
                a.pug(href='projects.html') Projects
              li.pug
                a.pug(href='project.html') Project detail
              li.pug
                a.pug(href='app_plans.html') App plans
              li.pug
                a.pug(href='social_board.html') Social board
              li.pug
                a.pug(href='faq.html') FAQ
              li.pug
                a.pug(href='timeline.html') Timeline
              li.pug
                a.pug(href='notes.html') Notes
              li.pug
                a.pug(href='profile.html') Profile
              li.pug
                a.pug(href='mailbox.html') Mailbox
              li.pug
                a.pug(href='mailbox_compose.html') Email compose
              li.pug
                a.pug(href='mailbox_view.html') Email view
              li.pug
                a.pug(href='blog.html') Blog
              li.pug
                a.pug(href='blog_details.html') Blog article
              li.pug
                a.pug(href='forum.html') Forum
              li.pug.active
                a.pug(href='forum_details.html') Forum details
              li.pug
                a.pug(href='gallery.html') Gallery
              li.pug
                a.pug(href='calendar.html') Calendar
              li.pug
                a.pug(href='invoice.html') Invoice
              li.pug
                a.pug(href='file_manager.html') File manager
              li.pug
                a.pug(href='chat_view.html') Chat view
              li.pug
                a.pug(href='search.html') Search view
          li.pug
            a.pug(href='#')
              span.pug.nav-label Charts
              span.pug.fa.arrow
            ul.pug.nav.nav-second-level
              li.pug
                a.pug(href='chartjs.html') ChartJs
              li.pug
                a.pug(href='flot.html') Flot charts
              li.pug
                a.pug(href='inline.html') Inline graphs
              li.pug
                a.pug(href='chartist.html') Chartist
              li.pug
                a.pug(href='c3.html') C3 Charts
          li.pug
            a.pug(href='#')
              span.pug.nav-label Box transitions
              span.pug.fa.arrow
            ul.pug.nav.nav-second-level
              li.pug
                a.pug(href='overview.html')
                  span.pug.label.label-success.pull-right Start
                  span.pug  Overview
              li.pug
                a.pug(href='transition_two.html') Columns from up
              li.pug
                a.pug(href='transition_one.html') Columns custom
              li.pug
                a.pug(href='transition_three.html') Panels zoom
              li.pug
                a.pug(href='transition_four.html') Rows from down
              li.pug
                a.pug(href='transition_five.html') Rows from right
          li.pug
            a.pug(href='#')
              span.pug.nav-label Common views
              span.pug.fa.arrow
            ul.pug.nav.nav-second-level
              li.pug
                a.pug(href='login.html') Login
              li.pug
                a.pug(href='register.html') Register
              li.pug
                a.pug(href='error_one.html') Error 404
              li.pug
                a.pug(href='error_two.html') Error 505
              li.pug
                a.pug(href='lock.html') Lock screen
              li.pug
                a.pug(href='password_recovery.html') Passwor recovery
          li.pug
            a.pug(href='#')
              span.pug.nav-label Tables
              span.pug.fa.arrow
            ul.pug.nav.nav-second-level
              li.pug
                a.pug(href='tables_design.html') Tables design
              li.pug
                a.pug(href='datatables.html') Data tables
              li.pug
                a.pug(href='footable.html') Foo Table
          li.pug
            a.pug(href='widgets.html')
              span.pug.nav-label Widgets
              span.pug.label.label-success.pull-right Special
          li.pug
            a.pug(href='#')
              span.pug.nav-label Forms
              span.pug.fa.arrow
            ul.pug.nav.nav-second-level
              li.pug
                a.pug(href='forms_elements.html') Forms elements
              li.pug
                a.pug(href='forms_extended.html') Forms extended
              li.pug
                a.pug(href='text_editor.html') Text editor
              li.pug
                a.pug(href='wizard.html') Wizard
              li.pug
                a.pug(href='validation.html') Validation
          li.pug
            a.pug(href='options.html')
              span.pug.nav-label Layout options
          li.pug
            a.pug(href='grid_system.html')
              span.pug.nav-label Grid system
          li.pug
            a.pug(href='landing_page.html')
              span.pug.nav-label Landing page
          li.pug
            a.pug(href='package.html')
              span.pug.nav-label Package
    .pug#wrapper
      .pug.normalheader
        .pug.hpanel
          .pug.panel-body
            a.pug.small-header-action(href='')
              .pug.clip-header
                i.pug.fa.fa-arrow-up
            .pug#hbreadcrumb.pull-right.m-t-lg
              ol.pug.hbreadcrumb.breadcrumb
                li.pug
                  a.pug(href='index.html') Dashboard
                li.pug
                  span.pug App views
                li.pug.active
                  span.pug Topic
            h2.pug.font-light.m-b-xs
              span.pug Topic
            small.pug Topic for forum page.
      .pug.content
        .pug.row
          .pug.col-lg-12
            .pug.hpanel.forum-box
              .pug.panel-heading
                span.pug.pull-right
                  i.pug.fa.fa-clock-o  
                  span.pug  Last modification: 10.12.2015, 10:22 am
                span.pug.f
                  span.pug General topics &gt; Announcements &gt; 
                  span.pug.text-success Free talks
              .pug.panel-body
                .pug.media
                  .pug.media-image.pull-left
                    img.pug(src='images/a4.jpg' alt='profile-picture')
                    .pug.author-info
                      strong.pug Anna Smith
                      br.pug
                      span.pug                 April 11.2015
                      .pug.badges
                        i.pug.fa.fa-star.text-warning
                        i.pug.fa.fa-shield.text-success
                  .pug.media-body
                    h5.pug Vivamus luctus diam et magna
                    span.pug             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&apos;t look
                    span.pug             even slightly believable.
                    span.pug             Ut mollis mauris in quam scelerisque, nec euismod nulla rutrum. Vestibulum elementum porta pharetra. Praesent volutpat, mi sed laoreet facilisis, turpis erat ornare orci, a
                    span.pug             faucibus sapien eros quis nibh.
                    br.pug
                    br.pug
                    span.pug             Praesent tempus nunc in libero lacinia, nec auctor arcu commodo. Sed sagittis interdum varius. Cras quis ex dictum, laoreet enim quis, aliquam
                    span.pug             odio. Nunc ac risus ex. Nunc tempor a ex nec malesuada. Suspendisse efficitur varius mollis.
                    br.pug
                    br.pug
                    span.pug             Mauris tellus eros, faucibus vel fringilla sit amet, volutpat commodo erat. Nam fermentum tellus facilisis consectetur varius. Mauris et molestie leo. Cras mattis pellentesque massa, convallis accumsan dui sagittis vel.
                    br.pug
                    br.pug
                    i.pug
                      span.pug - Best regards, Anna Smith
              .pug.panel-body
                .pug.media
                  .pug.media-image.pull-left
                    img.pug(src='images/a2.jpg' alt='profile-picture')
                    .pug.author-info
                      strong.pug Robert Jackson
                      br.pug
                      span.pug                 May 01.2015
                      .pug.badges
                        i.pug.fa.fa-star.text-warning
                        i.pug.fa.fa-star.text-warning
                        i.pug.fa.fa-star.text-warning
                  .pug.media-body
                    h5.pug Nam fermentum tellus
                    span.pug             Vivamus luctus diam et magna bibendum, quis tristique urna cursus. In dignissim tellus eu metus pharetra vulputate. Proin eu tempus tortor, vitae bibendum est. Nam placerat hendrerit rhoncus. Ut finibus, orci ut euismod gravida, felis elit lobortis purus, eget bibendum tortor sapien sit amet turpis. Integer porttitor ligula ac felis imperdiet volutpat. Praesent sit amet libero id eros convallis fringilla tempus vitae est.
                    br.pug
                    br.pug
                    span.pug             Sed venenatis dui non blandit semper. Proin sed ullamcorper arcu, et ullamcorper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam vitae efficitur urna. Integer vitae mi commodo, porttitor nulla vitae, sollicitudin eros.
                    br.pug
                    br.pug
                    i.pug
                      span.pug - Best regards, Robert Jackson
              .pug.panel-body
                .pug.media
                  .pug.media-image.pull-left
                    img.pug(src='images/a1.jpg' alt='profile-picture')
                    .pug.author-info
                      strong.pug Mark Smith
                      br.pug
                      span.pug                 May 01.2015
                      .pug.badges
                        i.pug.fa.fa-shield.text-success
                  .pug.media-body
                    h5.pug Aenean molestie lorem ut sem
                    span.pug             Nam fermentum tellus facilisis consectetur varius. Mauris et molestie leo. Cras mattis pellentesque massa, convallis accumsan dui sagittis vel. Ut mollis mauris in quam scelerisque, nec euismod nulla rutrum. Vestibulum elementum porta pharetra. Praesent volutpat, mi sed laoreet facilisis, turpis erat ornare orci, a faucibus sapien eros quis nibh. Praesent tempus nunc in libero lacinia, nec auctor arcu commodo. Sed sagittis interdum varius. Cras quis ex dictum, laoreet enim quis, aliquam odio. Nunc ac risus ex. Nunc tempor a ex nec malesuada. Suspendisse efficitur varius mollis.
                    br.pug
                    br.pug
                    span.pug             Sed venenatis dui non blandit semper. Proin sed ullamcorper arcu, et ullamcorper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam vitae efficitur urna. Integer vitae mi commodo, porttitor nulla vitae, sollicitudin eros.
                    br.pug
                    br.pug
                    i.pug
                      span.pug - Best regards, Mark Smith
              .pug.panel-body
                .pug.media
                  .pug.media-image.pull-left
                    img.pug(src='images/a6.jpg' alt='profile-picture')
                    .pug.author-info
                      strong.pug John Jackson
                      br.pug
                      span.pug                 Oct 21.2015
                      .pug.badges
                        i.pug.fa.fa-shield.text-success
                        i.pug.fa.fa-shield.text-success
                        i.pug.fa.fa-star.text-warning
                  .pug.media-body
                    h5.pug Fusce tristique massa turpis
                    span.pug             Sed venenatis dui non blandit semper. Proin sed ullamcorper arcu, et ullamcorper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam vitae efficitur urna. Integer vitae mi commodo, porttitor nulla vitae, sollicitudin eros.
                    br.pug
                    br.pug
                    span.pug             Proin eu tempus tortor, vitae bibendum est. Nam placerat hendrerit rhoncus. Ut finibus, orci ut euismod gravida, felis elit lobortis purus, eget bibendum tortor sapien sit amet turpis. Integer porttitor ligula ac felis imperdiet volutpat. Praesent sit amet libero id eros convallis fringilla tempus vitae est.
                    br.pug
                    br.pug
                    span.pug             Quisque gravida maximus rhoncus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget felis dictum, aliquam nunc vitae, pharetra dolor. Aenean sapien erat, molestie sit amet faucibus non, pharetra a dui. Aenean ut venenatis dolor, et volutpat odio. Nam ultrices gravida ligula sed porta.
                    br.pug
                    br.pug
                    i.pug
                      span.pug - Best regards, John Jackson
                    .pug.forum-comments
                      .pug.media
                        a.pug.pull-left
                          img.pug(src='images/a1.jpg' alt='profile-picture')
                        .pug.media-body
                          span.pug.font-bold John Novak
                          small.pug.text-muted 21.03.2015
                          .pug.social-content
                            span.pug Injected humour, or randomised words which don&apos;t look even slightly believable.
                            span.pug Proin eu tempus tortor, vitae bibendum est. Nam placerat hendrerit rhoncus.
                      .pug.media
                        a.pug.pull-left
                          img.pug(src='images/a3.jpg' alt='profile-picture')
                        .pug.media-body
                          span.pug.font-bold Mark Smith
                          small.pug.text-muted 14.04.2015
                          .pug.social-content
                            span.pug Many desktop publishing packages and web page editors.Morbi imperdiet sem non dignissim vulputate.
                            span.pug Cras maximus porttitor dui sed placerat. Integer eleifend pulvinar arcu at mattis. Ut porta tellus id enim volutpat, non pharetra elit vestibulum.
                      .pug.media
                        a.pug.pull-left
                          img.pug(src='images/a9.jpg' alt='profile-picture')
                        .pug.media-body
                          span.pug.font-bold John Smith
                          small.pug.text-muted 22.11.2015
                          .pug.social-content
                            span.pug Nunc egestas eu odio ut pellentesque. Fusce sagittis quam et lobortis scelerisque. Nulla in libero lacinia, fringilla magna in, congue diam. Vivamus fermentum eget erat hendrerit mattis. Nulla facilisi.
                      form.pug
                        input.pug.form-control(placeholder='Your comment')
              .pug.panel-body
                .pug.media
                  .pug.media-image.pull-left
                    img.pug(src='images/a2.jpg' alt='profile-picture')
                    .pug.author-info
                      strong.pug Robert Jackson
                      br.pug
                      span.pug                 May 01.2015
                      .pug.badges
                        i.pug.fa.fa-star.text-warning
                        i.pug.fa.fa-star.text-warning
                        i.pug.fa.fa-star.text-warning
                  .pug.media-body
                    h5.pug Nam fermentum tellus
                    span.pug             Vivamus luctus diam et magna bibendum, quis tristique urna cursus. In dignissim tellus eu metus pharetra vulputate. Proin eu tempus tortor, vitae bibendum est. Nam placerat hendrerit rhoncus. Ut finibus, orci ut euismod gravida, felis elit lobortis purus, eget bibendum tortor sapien sit amet turpis. Integer porttitor ligula ac felis imperdiet volutpat. Praesent sit amet libero id eros convallis fringilla tempus vitae est.
                    br.pug
                    br.pug
                    span.pug             Sed venenatis dui non blandit semper. Proin sed ullamcorper arcu, et ullamcorper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam vitae efficitur urna. Integer vitae mi commodo, porttitor nulla vitae, sollicitudin eros.
                    br.pug
                    br.pug
                    i.pug
                      span.pug - Best regards, Robert Jackson
              .pug.panel-body
                .pug.media
                  .pug.media-image.pull-left
                    img.pug(src='images/a4.jpg' alt='profile-picture')
                    .pug.author-info
                      strong.pug Anna Smith
                      br.pug
                      span.pug                 April 11.2015
                      .pug.badges
                        i.pug.fa.fa-star.text-warning
                        i.pug.fa.fa-shield.text-success
                  .pug.media-body
                    h5.pug Vivamus luctus diam et magna
                    span.pug             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&apos;t look
                    span.pug             even slightly believable.
                    span.pug             Ut mollis mauris in quam scelerisque, nec euismod nulla rutrum. Vestibulum elementum porta pharetra. Praesent volutpat, mi sed laoreet facilisis, turpis erat ornare orci, a
                    span.pug             faucibus sapien eros quis nibh.
                    br.pug
                    br.pug
                    span.pug             Praesent tempus nunc in libero lacinia, nec auctor arcu commodo. Sed sagittis interdum varius. Cras quis ex dictum, laoreet enim quis, aliquam
                    span.pug             odio. Nunc ac risus ex. Nunc tempor a ex nec malesuada. Suspendisse efficitur varius mollis.
                    br.pug
                    br.pug
                    span.pug             Mauris tellus eros, faucibus vel fringilla sit amet, volutpat commodo erat. Nam fermentum tellus facilisis consectetur varius. Mauris et molestie leo. Cras mattis pellentesque massa, convallis accumsan dui sagittis vel.
                    br.pug
                    br.pug
                    i.pug
                      span.pug - Best regards, Anna Smith
              .pug.panel-body
                .pug.media
                  .pug.media-image.pull-left
                    img.pug(src='images/a6.jpg' alt='profile-picture')
                    .pug.author-info
                      strong.pug John Jackson
                      br.pug
                      span.pug                 Oct 21.2015
                      .pug.badges
                        i.pug.fa.fa-shield.text-success
                        i.pug.fa.fa-shield.text-success
                        i.pug.fa.fa-star.text-warning
                  .pug.media-body
                    h5.pug Fusce tristique massa turpis
                    span.pug             Sed venenatis dui non blandit semper. Proin sed ullamcorper arcu, et ullamcorper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam vitae efficitur urna. Integer vitae mi commodo, porttitor nulla vitae, sollicitudin eros.
                    br.pug
                    br.pug
                    span.pug             Proin eu tempus tortor, vitae bibendum est. Nam placerat hendrerit rhoncus. Ut finibus, orci ut euismod gravida, felis elit lobortis purus, eget bibendum tortor sapien sit amet turpis. Integer porttitor ligula ac felis imperdiet volutpat. Praesent sit amet libero id eros convallis fringilla tempus vitae est.
                    br.pug
                    br.pug
                    span.pug             Quisque gravida maximus rhoncus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget felis dictum, aliquam nunc vitae, pharetra dolor. Aenean sapien erat, molestie sit amet faucibus non, pharetra a dui. Aenean ut venenatis dolor, et volutpat odio. Nam ultrices gravida ligula sed porta.
                    br.pug
                    br.pug
                    i.pug
                      span.pug - Best regards, John Jackson
                    .pug.forum-comments
                      .pug.media
                        a.pug.pull-left
                          img.pug(src='images/a1.jpg' alt='profile-picture')
                        .pug.media-body
                          span.pug.font-bold John Novak
                          small.pug.text-muted 21.03.2015
                          .pug.social-content
                            span.pug Injected humour, or randomised words which don&apos;t look even slightly believable.
                            span.pug Proin eu tempus tortor, vitae bibendum est. Nam placerat hendrerit rhoncus.
                      .pug.media
                        a.pug.pull-left
                          img.pug(src='images/a3.jpg' alt='profile-picture')
                        .pug.media-body
                          span.pug.font-bold Mark Smith
                          small.pug.text-muted 14.04.2015
                          .pug.social-content
                            span.pug Many desktop publishing packages and web page editors.Morbi imperdiet sem non dignissim vulputate.
                            span.pug Cras maximus porttitor dui sed placerat. Integer eleifend pulvinar arcu at mattis. Ut porta tellus id enim volutpat, non pharetra elit vestibulum.
                      form.pug
                        input.pug.form-control(placeholder='Your comment')
      .pug#right-sidebar.animated.fadeInRight
        .pug.p-m
          button.pug#sidebar-close.right-sidebar-toggle.sidebar-button.btn.btn-default.m-b-md
            i.pug.pe.pe-7s-close
          div.pug
            span.pug.font-bold.no-margins  Analytics 
            br.pug
            small.pug  Lorem Ipsum is simply dummy text of the printing simply all dummy text.
          .pug.row.m-t-sm.m-b-sm
            .pug.col-lg-6
              h3.pug.no-margins.font-extra-bold.text-success 300,102
              .pug.font-bold
                span.pug 98% 
                i.pug.fa.fa-level-up.text-success
            .pug.col-lg-6
              h3.pug.no-margins.font-extra-bold.text-success 280,200
              .pug.font-bold
                span.pug 98% 
                i.pug.fa.fa-level-up.text-success
          .pug.progress.m-t-xs.full.progress-small
            .pug.progress-bar.progress-bar-success(style='width: 25%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='25' role='progressbar')
              span.pug.sr-only 35% Complete (success)
        .pug.p-m.bg-light.border-bottom.border-top
          span.pug.font-bold.no-margins  Social talks 
          br.pug
          small.pug  Lorem Ipsum is simply dummy text of the printing simply all dummy text.
          .pug.m-t-md
            .pug.social-talk
              .pug.media.social-profile.clearfix
                a.pug.pull-left
                  img.pug(src='images/a1.jpg' alt='profile-picture')
                .pug.media-body
                  span.pug.font-bold John Novak
                  small.pug.text-muted 21.03.2015
                  .pug.social-content.small
                    span.pug Injected humour, or randomised words which don&apos;t look even slightly believable.
            .pug.social-talk
              .pug.media.social-profile.clearfix
                a.pug.pull-left
                  img.pug(src='images/a3.jpg' alt='profile-picture')
                .pug.media-body
                  span.pug.font-bold Mark Smith
                  small.pug.text-muted 14.04.2015
                  .pug.social-content
                    span.pug Many desktop publishing packages and web page editors.
            .pug.social-talk
              .pug.media.social-profile.clearfix
                a.pug.pull-left
                  img.pug(src='images/a4.jpg' alt='profile-picture')
                .pug.media-body
                  span.pug.font-bold Marica Morgan
                  small.pug.text-muted 21.03.2015
                  .pug.social-content
                    span.pug There are many variations of passages of Lorem Ipsum available, but the majority have
        .pug.p-m
          span.pug.font-bold.no-margins  Sales in last week 
          .pug.m-t-xs
            .pug.row
              .pug.col-xs-6
                small.pug Today
                h4.pug.m-t-xs
                  span.pug $170,20 
                  i.pug.fa.fa-level-up.text-success
              .pug.col-xs-6
                small.pug Last week
                h4.pug.m-t-xs
                  span.pug $580,90 
                  i.pug.fa.fa-level-up.text-success
            .pug.row
              .pug.col-xs-6
                small.pug Today
                h4.pug.m-t-xs
                  span.pug $620,20 
                  i.pug.fa.fa-level-up.text-success
              .pug.col-xs-6
                small.pug Last week
                h4.pug.m-t-xs
                  span.pug $140,70 
                  i.pug.fa.fa-level-up.text-success
          small.pug
            span.pug Lorem Ipsum is simply dummy text of the printing simply all dummy text.
            span.pug Many desktop publishing packages and web page editors.
      footer.pug.footer
        span.pug.pull-right
          span.pug Example text
        span.pug         Company 2015-2020
    foot!
  
  
  
  
