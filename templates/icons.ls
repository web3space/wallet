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
          li.pug.active
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
              li.pug.active
                a.pug(href='icons.html') Icons library
          li.pug
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
              li.pug
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
                  span.pug Interface
                li.pug.active
                  span.pug Icons 
            h2.pug.font-light.m-b-xs
              span.pug Icons
            small.pug Two great icon libraries. Pe-icon-7-stroke and Font Awesome
      .pug.content
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug     Pe-icon-7-stroke
              .pug.panel-body
                .pug.icons-box
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-cloud-upload
                        span.pug.font-icon-name  pe-7s-cloud-upload
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-close
                        span.pug.font-icon-name  pe-7s-close
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-cloud-download
                        span.pug.font-icon-name  pe-7s-cloud-download
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-close-circle
                        span.pug.font-icon-name  pe-7s-close-circle
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-angle-up
                        span.pug.font-icon-name  pe-7s-angle-up
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-angle-up-circle
                        span.pug.font-icon-name  pe-7s-angle-up-circle
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-angle-right
                        span.pug.font-icon-name  pe-7s-angle-right
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-angle-right-circle
                        span.pug.font-icon-name  pe-7s-angle-right-circle
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-angle-left
                        span.pug.font-icon-name  pe-7s-angle-left
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-angle-left-circle
                        span.pug.font-icon-name  pe-7s-angle-left-circle
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-angle-down
                        span.pug.font-icon-name  pe-7s-angle-down
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-angle-down-circle
                        span.pug.font-icon-name  pe-7s-angle-down-circle
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-wallet
                        span.pug.font-icon-name  pe-7s-wallet
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-volume2
                        span.pug.font-icon-name  pe-7s-volume2
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-volume1
                        span.pug.font-icon-name  pe-7s-volume1
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-voicemail
                        span.pug.font-icon-name  pe-7s-voicemail
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-video
                        span.pug.font-icon-name  pe-7s-video
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-user
                        span.pug.font-icon-name  pe-7s-user
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-upload
                        span.pug.font-icon-name  pe-7s-upload
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-unlock
                        span.pug.font-icon-name  pe-7s-unlock
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-umbrella
                        span.pug.font-icon-name  pe-7s-umbrella
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-trash
                        span.pug.font-icon-name  pe-7s-trash
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-tools
                        span.pug.font-icon-name  pe-7s-tools
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-timer
                        span.pug.font-icon-name  pe-7s-timer
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-ticket
                        span.pug.font-icon-name  pe-7s-ticket
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-target
                        span.pug.font-icon-name  pe-7s-target
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-sun
                        span.pug.font-icon-name  pe-7s-sun
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-study
                        span.pug.font-icon-name  pe-7s-study
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-stopwatch
                        span.pug.font-icon-name  pe-7s-stopwatch
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-star
                        span.pug.font-icon-name  pe-7s-star
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-speaker
                        span.pug.font-icon-name  pe-7s-speaker
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-signal
                        span.pug.font-icon-name  pe-7s-signal
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-shuffle
                        span.pug.font-icon-name  pe-7s-shuffle
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-shopbag
                        span.pug.font-icon-name  pe-7s-shopbag
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-share
                        span.pug.font-icon-name  pe-7s-share
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-server
                        span.pug.font-icon-name  pe-7s-server
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-search
                        span.pug.font-icon-name  pe-7s-search
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-science
                        span.pug.font-icon-name  pe-7s-science
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-ribbon
                        span.pug.font-icon-name  pe-7s-ribbon
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-repeat
                        span.pug.font-icon-name  pe-7s-repeat
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-refresh
                        span.pug.font-icon-name  pe-7s-refresh
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-refresh-cloud
                        span.pug.font-icon-name  pe-7s-refresh-cloud
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-radio
                        span.pug.font-icon-name  pe-7s-radio
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-print
                        span.pug.font-icon-name  pe-7s-print
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-prev
                        span.pug.font-icon-name  pe-7s-prev
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-power
                        span.pug.font-icon-name  pe-7s-power
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-portfolio
                        span.pug.font-icon-name  pe-7s-portfolio
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-plus
                        span.pug.font-icon-name  pe-7s-plus
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-play
                        span.pug.font-icon-name  pe-7s-play
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-plane
                        span.pug.font-icon-name  pe-7s-plane
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-photo-gallery
                        span.pug.font-icon-name  pe-7s-photo-gallery
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-phone
                        span.pug.font-icon-name  pe-7s-phone
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-pen
                        span.pug.font-icon-name  pe-7s-pen
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-paper-plane
                        span.pug.font-icon-name  pe-7s-paper-plane
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-paint
                        span.pug.font-icon-name  pe-7s-paint
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-notebook
                        span.pug.font-icon-name  pe-7s-notebook
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-note
                        span.pug.font-icon-name  pe-7s-note
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-next
                        span.pug.font-icon-name  pe-7s-next
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-news-paper
                        span.pug.font-icon-name  pe-7s-news-paper
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-musiclist
                        span.pug.font-icon-name  pe-7s-musiclist
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-music
                        span.pug.font-icon-name  pe-7s-music
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-mouse
                        span.pug.font-icon-name  pe-7s-mouse
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-more
                        span.pug.font-icon-name  pe-7s-more
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-moon
                        span.pug.font-icon-name  pe-7s-moon
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-monitor
                        span.pug.font-icon-name  pe-7s-monitor
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-micro
                        span.pug.font-icon-name  pe-7s-micro
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-menu
                        span.pug.font-icon-name  pe-7s-menu
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-map
                        span.pug.font-icon-name  pe-7s-map
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-map-marker
                        span.pug.font-icon-name  pe-7s-map-marker
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-mail
                        span.pug.font-icon-name  pe-7s-mail
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-mail-open
                        span.pug.font-icon-name  pe-7s-mail-open
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-mail-open-file
                        span.pug.font-icon-name  pe-7s-mail-open-file
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-magnet
                        span.pug.font-icon-name  pe-7s-magnet
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-loop
                        span.pug.font-icon-name  pe-7s-loop
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-look
                        span.pug.font-icon-name  pe-7s-look
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-lock
                        span.pug.font-icon-name  pe-7s-lock
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-lintern
                        span.pug.font-icon-name  pe-7s-lintern
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-link
                        span.pug.font-icon-name  pe-7s-link
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-like
                        span.pug.font-icon-name  pe-7s-like
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-light
                        span.pug.font-icon-name  pe-7s-light
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-less
                        span.pug.font-icon-name  pe-7s-less
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-keypad
                        span.pug.font-icon-name  pe-7s-keypad
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-junk
                        span.pug.font-icon-name  pe-7s-junk
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-info
                        span.pug.font-icon-name  pe-7s-info
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-home
                        span.pug.font-icon-name  pe-7s-home
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-help2
                        span.pug.font-icon-name  pe-7s-help2
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-help1
                        span.pug.font-icon-name  pe-7s-help1
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-graph3
                        span.pug.font-icon-name  pe-7s-graph3
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-graph2
                        span.pug.font-icon-name  pe-7s-graph2
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-graph1
                        span.pug.font-icon-name  pe-7s-graph1
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-graph
                        span.pug.font-icon-name  pe-7s-graph
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-global
                        span.pug.font-icon-name  pe-7s-global
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-gleam
                        span.pug.font-icon-name  pe-7s-gleam
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-glasses
                        span.pug.font-icon-name  pe-7s-glasses
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-gift
                        span.pug.font-icon-name  pe-7s-gift
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-folder
                        span.pug.font-icon-name  pe-7s-folder
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-flag
                        span.pug.font-icon-name  pe-7s-flag
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-filter
                        span.pug.font-icon-name  pe-7s-filter
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-file
                        span.pug.font-icon-name  pe-7s-file
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-expand1
                        span.pug.font-icon-name  pe-7s-expand1
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-exapnd2
                        span.pug.font-icon-name  pe-7s-exapnd2
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-edit
                        span.pug.font-icon-name  pe-7s-edit
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-drop
                        span.pug.font-icon-name  pe-7s-drop
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-drawer
                        span.pug.font-icon-name  pe-7s-drawer
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-download
                        span.pug.font-icon-name  pe-7s-download
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-display2
                        span.pug.font-icon-name  pe-7s-display2
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-display1
                        span.pug.font-icon-name  pe-7s-display1
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-diskette
                        span.pug.font-icon-name  pe-7s-diskette
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-date
                        span.pug.font-icon-name  pe-7s-date
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-cup
                        span.pug.font-icon-name  pe-7s-cup
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-culture
                        span.pug.font-icon-name  pe-7s-culture
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-crop
                        span.pug.font-icon-name  pe-7s-crop
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-credit
                        span.pug.font-icon-name  pe-7s-credit
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-copy-file
                        span.pug.font-icon-name  pe-7s-copy-file
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-config
                        span.pug.font-icon-name  pe-7s-config
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-compass
                        span.pug.font-icon-name  pe-7s-compass
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-comment
                        span.pug.font-icon-name  pe-7s-comment
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-coffee
                        span.pug.font-icon-name  pe-7s-coffee
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-cloud
                        span.pug.font-icon-name  pe-7s-cloud
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-clock
                        span.pug.font-icon-name  pe-7s-clock
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-check
                        span.pug.font-icon-name  pe-7s-check
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-chat
                        span.pug.font-icon-name  pe-7s-chat
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-cart
                        span.pug.font-icon-name  pe-7s-cart
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-camera
                        span.pug.font-icon-name  pe-7s-camera
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-call
                        span.pug.font-icon-name  pe-7s-call
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-calculator
                        span.pug.font-icon-name  pe-7s-calculator
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-browser
                        span.pug.font-icon-name  pe-7s-browser
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-box2
                        span.pug.font-icon-name  pe-7s-box2
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-box1
                        span.pug.font-icon-name  pe-7s-box1
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-bookmarks
                        span.pug.font-icon-name  pe-7s-bookmarks
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-bicycle
                        span.pug.font-icon-name  pe-7s-bicycle
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-bell
                        span.pug.font-icon-name  pe-7s-bell
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-battery
                        span.pug.font-icon-name  pe-7s-battery
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-ball
                        span.pug.font-icon-name  pe-7s-ball
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-back
                        span.pug.font-icon-name  pe-7s-back
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-attention
                        span.pug.font-icon-name  pe-7s-attention
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-anchor
                        span.pug.font-icon-name  pe-7s-anchor
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-albums
                        span.pug.font-icon-name  pe-7s-albums
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-alarm
                        span.pug.font-icon-name  pe-7s-alarm
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-airplay
                        span.pug.font-icon-name  pe-7s-airplay
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-cash
                        span.pug.font-icon-name  pe-7s-cash
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-bluetooth
                        span.pug.font-icon-name  pe-7s-bluetooth
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-way
                        span.pug.font-icon-name  pe-7s-way
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-id
                        span.pug.font-icon-name  pe-7s-id
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-wristwatch
                        span.pug.font-icon-name  pe-7s-wristwatch
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-world
                        span.pug.font-icon-name  pe-7s-world
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-volume
                        span.pug.font-icon-name  pe-7s-volume
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-users
                        span.pug.font-icon-name  pe-7s-users
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-user-female
                        span.pug.font-icon-name  pe-7s-user-female
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-up-arrow
                        span.pug.font-icon-name  pe-7s-up-arrow
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-switch
                        span.pug.font-icon-name  pe-7s-switch
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-scissors
                        span.pug.font-icon-name  pe-7s-scissors
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-safe
                        span.pug.font-icon-name  pe-7s-safe
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-right-arrow
                        span.pug.font-icon-name  pe-7s-right-arrow
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-plug
                        span.pug.font-icon-name  pe-7s-plug
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-pin
                        span.pug.font-icon-name  pe-7s-pin
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-paperclip
                        span.pug.font-icon-name  pe-7s-paperclip
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-note2
                        span.pug.font-icon-name  pe-7s-note2
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-network
                        span.pug.font-icon-name  pe-7s-network
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-mute
                        span.pug.font-icon-name  pe-7s-mute
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-medal
                        span.pug.font-icon-name  pe-7s-medal
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-like2
                        span.pug.font-icon-name  pe-7s-like2
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-left-arrow
                        span.pug.font-icon-name  pe-7s-left-arrow
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-key
                        span.pug.font-icon-name  pe-7s-key
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-joy
                        span.pug.font-icon-name  pe-7s-joy
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-film
                        span.pug.font-icon-name  pe-7s-film
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-disk
                        span.pug.font-icon-name  pe-7s-disk
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-delete-user
                        span.pug.font-icon-name  pe-7s-delete-user
                  .pug.row
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-bottom-arrow
                        span.pug.font-icon-name  pe-7s-bottom-arrow
                    .pug.infont.col-md-2
                      .pug.font-icon-detail
                        i.pug.pe-7s-add-user
                        span.pug.font-icon-name  pe-7s-add-user
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Font Awesome / New Icons in 4.7.0 - 
                a.pug(href='https://fortawesome.github.io/Font-Awesome/icons/') https://fortawesome.github.io/Font-Awesome/icons/
              .pug.panel-body
                .pug.icons-box
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-address-book(aria-hidden='true')
                      span.pug  address-book
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-address-book-o(aria-hidden='true')
                      span.pug  address-book-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-address-card(aria-hidden='true')
                      span.pug  address-card
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bandcamp(aria-hidden='true')
                      span.pug  bandcamp
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bath(aria-hidden='true')
                      span.pug  bath
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bathtub(aria-hidden='true')
                      span.pug  bathtub 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-drivers-license(aria-hidden='true')
                      span.pug  drivers-license 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-drivers-license-o(aria-hidden='true')
                      span.pug  drivers-license-o 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-eercast(aria-hidden='true')
                      span.pug  eercast
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-envelope-open(aria-hidden='true')
                      span.pug  envelope-open
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-envelope-open-o(aria-hidden='true')
                      span.pug  envelope-open-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-etsy(aria-hidden='true')
                      span.pug  etsy
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-free-code-camp(aria-hidden='true')
                      span.pug  free-code-camp
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-grav(aria-hidden='true')
                      span.pug  grav
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-handshake-o(aria-hidden='true')
                      span.pug  handshake-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-id-badge(aria-hidden='true')
                      span.pug  id-badge
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-id-card(aria-hidden='true')
                      span.pug  id-card
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-id-card-o(aria-hidden='true')
                      span.pug  id-card-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-imdb(aria-hidden='true')
                      span.pug  imdb
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-linode(aria-hidden='true')
                      span.pug  linode
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-meetup(aria-hidden='true')
                      span.pug  meetup
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-microchip(aria-hidden='true')
                      span.pug  microchip
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-podcast(aria-hidden='true')
                      span.pug  podcast
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-quora(aria-hidden='true')
                      span.pug  quora
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-ravelry(aria-hidden='true')
                      span.pug  ravelry
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-s15(aria-hidden='true')
                      span.pug  s15 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-shower(aria-hidden='true')
                      span.pug  shower
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-snowflake-o(aria-hidden='true')
                      span.pug  snowflake-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-superpowers(aria-hidden='true')
                      span.pug  superpowers
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-telegram(aria-hidden='true')
                      span.pug  telegram
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer(aria-hidden='true')
                      span.pug  thermometer 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-0(aria-hidden='true')
                      span.pug  thermometer-0 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-1(aria-hidden='true')
                      span.pug  thermometer-1 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-2(aria-hidden='true')
                      span.pug  thermometer-2 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-3(aria-hidden='true')
                      span.pug  thermometer-3 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-4(aria-hidden='true')
                      span.pug  thermometer-4 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-empty(aria-hidden='true')
                      span.pug  thermometer-empty
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-full(aria-hidden='true')
                      span.pug  thermometer-full
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-half(aria-hidden='true')
                      span.pug  thermometer-half
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-quarter(aria-hidden='true')
                      span.pug  thermometer-quarter
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thermometer-three-quarters(aria-hidden='true')
                      span.pug  thermometer-three-quarters
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-times-rectangle(aria-hidden='true')
                      span.pug  times-rectangle 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-times-rectangle-o(aria-hidden='true')
                      span.pug  times-rectangle-o 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-user-circle(aria-hidden='true')
                      span.pug  user-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-user-circle-o(aria-hidden='true')
                      span.pug  user-circle-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-user-o(aria-hidden='true')
                      span.pug  user-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-vcard(aria-hidden='true')
                      span.pug  vcard 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-vcard-o(aria-hidden='true')
                      span.pug  vcard-o 
                      span.pug.text-muted (alias)
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-window-close(aria-hidden='true')
                      span.pug  window-close
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-window-close-o(aria-hidden='true')
                      span.pug  window-close-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-window-maximize(aria-hidden='true')
                      span.pug  window-maximize
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-window-minimize(aria-hidden='true')
                      span.pug  window-minimize
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-window-restore(aria-hidden='true')
                      span.pug  window-restore
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-wpexplorer(aria-hidden='true')
                      span.pug  wpexplorer
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Font Awesome / All icons
              .pug.panel-body
                .pug.icons-box
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-adjust
                      span.pug  adjust
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-anchor
                      span.pug  anchor
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-archive
                      span.pug  archive
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-area-chart
                      span.pug  area-chart
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrows
                      span.pug  arrows
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrows-h
                      span.pug  arrows-h
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrows-v
                      span.pug  arrows-v
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-asterisk
                      span.pug  asterisk
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-at
                      span.pug  at
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-automobile
                      span.pug  automobile
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-balance-scale
                      span.pug  balance-scale
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-ban
                      span.pug  ban
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bank
                      span.pug  bank
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bar-chart
                      span.pug  bar-chart
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bar-chart-o
                      span.pug  bar-chart-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-barcode
                      span.pug  barcode
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bars
                      span.pug  bars
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-0
                      span.pug  battery-0
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-1
                      span.pug  battery-1
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-2
                      span.pug  battery-2
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-3
                      span.pug  battery-3
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-4
                      span.pug  battery-4
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-empty
                      span.pug  battery-empty
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-full
                      span.pug  battery-full
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-half
                      span.pug  battery-half
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-quarter
                      span.pug  battery-quarter
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-battery-three-quarters
                      span.pug  battery-three-quarters
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bed
                      span.pug  bed
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-beer
                      span.pug  beer
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bell
                      span.pug  bell
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bell-o
                      span.pug  bell-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bell-slash
                      span.pug  bell-slash
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bell-slash-o
                      span.pug  bell-slash-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bicycle
                      span.pug  bicycle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-binoculars
                      span.pug  binoculars
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-birthday-cake
                      span.pug  birthday-cake
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bluetooth
                      span.pug  bluetooth
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bluetooth-b
                      span.pug  bluetooth-b
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bolt
                      span.pug  bolt
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bomb
                      span.pug  bomb
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-book
                      span.pug  book
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bookmark
                      span.pug  bookmark
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bookmark-o
                      span.pug  bookmark-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-briefcase
                      span.pug  briefcase
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bug
                      span.pug  bug
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-building
                      span.pug  building
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-building-o
                      span.pug  building-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bullhorn
                      span.pug  bullhorn
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bullseye
                      span.pug  bullseye
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bus
                      span.pug  bus
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cab
                      span.pug  cab
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-calculator
                      span.pug  calculator
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-calendar
                      span.pug  calendar
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-calendar-check-o
                      span.pug  calendar-check-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-calendar-minus-o
                      span.pug  calendar-minus-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-calendar-o
                      span.pug  calendar-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-calendar-plus-o
                      span.pug  calendar-plus-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-calendar-times-o
                      span.pug  calendar-times-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-camera
                      span.pug  camera
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-camera-retro
                      span.pug  camera-retro
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-car
                      span.pug  car
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-square-o-down
                      span.pug  caret-square-o-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-square-o-left
                      span.pug  caret-square-o-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-square-o-right
                      span.pug  caret-square-o-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-square-o-up
                      span.pug  caret-square-o-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cart-arrow-down
                      span.pug  cart-arrow-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cart-plus
                      span.pug  cart-plus
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cc
                      span.pug  cc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-certificate
                      span.pug  certificate
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-check
                      span.pug  check
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-check-circle
                      span.pug  check-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-check-circle-o
                      span.pug  check-circle-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-check-square
                      span.pug  check-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-check-square-o
                      span.pug  check-square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-child
                      span.pug  child
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-circle
                      span.pug  circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-circle-o
                      span.pug  circle-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-circle-o-notch
                      span.pug  circle-o-notch
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-circle-thin
                      span.pug  circle-thin
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-clock-o
                      span.pug  clock-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-clone
                      span.pug  clone
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-close
                      span.pug  close
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cloud
                      span.pug  cloud
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cloud-download
                      span.pug  cloud-download
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cloud-upload
                      span.pug  cloud-upload
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-code
                      span.pug  code
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-code-fork
                      span.pug  code-fork
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-coffee
                      span.pug  coffee
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cog
                      span.pug  cog
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cogs
                      span.pug  cogs
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-comment
                      span.pug  comment
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-comment-o
                      span.pug  comment-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-commenting
                      span.pug  commenting
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-commenting-o
                      span.pug  commenting-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-comments
                      span.pug  comments
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-comments-o
                      span.pug  comments-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-compass
                      span.pug  compass
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-copyright
                      span.pug  copyright
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-creative-commons
                      span.pug  creative-commons
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-credit-card
                      span.pug  credit-card
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-credit-card-alt
                      span.pug  credit-card-alt
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-crop
                      span.pug  crop
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-crosshairs
                      span.pug  crosshairs
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cube
                      span.pug  cube
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cubes
                      span.pug  cubes
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cutlery
                      span.pug  cutlery
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-dashboard
                      span.pug  dashboard
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-database
                      span.pug  database
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-desktop
                      span.pug  desktop
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-diamond
                      span.pug  diamond
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-dot-circle-o
                      span.pug  dot-circle-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-download
                      span.pug  download
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-edit
                      span.pug  edit
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-ellipsis-h
                      span.pug  ellipsis-h
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-ellipsis-v
                      span.pug  ellipsis-v
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-envelope
                      span.pug  envelope
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-envelope-o
                      span.pug  envelope-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-envelope-square
                      span.pug  envelope-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-eraser
                      span.pug  eraser
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-exchange
                      span.pug  exchange
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-exclamation
                      span.pug  exclamation
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-exclamation-circle
                      span.pug  exclamation-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-exclamation-triangle
                      span.pug  exclamation-triangle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-external-link
                      span.pug  external-link
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-external-link-square
                      span.pug  external-link-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-eye
                      span.pug  eye
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-eye-slash
                      span.pug  eye-slash
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-eyedropper
                      span.pug  eyedropper
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-fax
                      span.pug  fax
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-feed
                      span.pug  feed
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-female
                      span.pug  female
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-fighter-jet
                      span.pug  fighter-jet
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-archive-o
                      span.pug  file-archive-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-audio-o
                      span.pug  file-audio-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-code-o
                      span.pug  file-code-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-excel-o
                      span.pug  file-excel-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-image-o
                      span.pug  file-image-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-movie-o
                      span.pug  file-movie-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-pdf-o
                      span.pug  file-pdf-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-photo-o
                      span.pug  file-photo-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-picture-o
                      span.pug  file-picture-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-powerpoint-o
                      span.pug  file-powerpoint-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-sound-o
                      span.pug  file-sound-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-video-o
                      span.pug  file-video-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-word-o
                      span.pug  file-word-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-zip-o
                      span.pug  file-zip-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-film
                      span.pug  film
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-filter
                      span.pug  filter
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-fire
                      span.pug  fire
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-fire-extinguisher
                      span.pug  fire-extinguisher
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-flag
                      span.pug  flag
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-flag-checkered
                      span.pug  flag-checkered
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-flag-o
                      span.pug  flag-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-flash
                      span.pug  flash
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-flask
                      span.pug  flask
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-folder
                      span.pug  folder
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-folder-o
                      span.pug  folder-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-folder-open
                      span.pug  folder-open
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-folder-open-o
                      span.pug  folder-open-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-frown-o
                      span.pug  frown-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-futbol-o
                      span.pug  futbol-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-gamepad
                      span.pug  gamepad
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-gavel
                      span.pug  gavel
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-gear
                      span.pug  gear
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-gears
                      span.pug  gears
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-gift
                      span.pug  gift
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-glass
                      span.pug  glass
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-globe
                      span.pug  globe
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-graduation-cap
                      span.pug  graduation-cap
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-group
                      span.pug  group
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-grab-o
                      span.pug  hand-grab-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-lizard-o
                      span.pug  hand-lizard-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-paper-o
                      span.pug  hand-paper-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-peace-o
                      span.pug  hand-peace-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-pointer-o
                      span.pug  hand-pointer-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-rock-o
                      span.pug  hand-rock-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-scissors-o
                      span.pug  hand-scissors-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-spock-o
                      span.pug  hand-spock-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-stop-o
                      span.pug  hand-stop-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hashtag
                      span.pug  hashtag
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hdd-o
                      span.pug  hdd-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-headphones
                      span.pug  headphones
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-heart
                      span.pug  heart
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-heart-o
                      span.pug  heart-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-heartbeat
                      span.pug  heartbeat
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-history
                      span.pug  history
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-home
                      span.pug  home
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hotel
                      span.pug  hotel
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hourglass
                      span.pug  hourglass
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hourglass-1
                      span.pug  hourglass-1
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hourglass-2
                      span.pug  hourglass-2
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hourglass-3
                      span.pug  hourglass-3
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hourglass-end
                      span.pug  hourglass-end
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hourglass-half
                      span.pug  hourglass-half
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hourglass-o
                      span.pug  hourglass-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hourglass-start
                      span.pug  hourglass-start
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-i-cursor
                      span.pug  i-cursor
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-image
                      span.pug  image
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-inbox
                      span.pug  inbox
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-industry
                      span.pug  industry
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-info
                      span.pug  info
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-info-circle
                      span.pug  info-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-institution
                      span.pug  institution
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-key
                      span.pug  key
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-keyboard-o
                      span.pug  keyboard-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-language
                      span.pug  language
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-laptop
                      span.pug  laptop
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-leaf
                      span.pug  leaf
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-legal
                      span.pug  legal
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-lemon-o
                      span.pug  lemon-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-level-down
                      span.pug  level-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-level-up
                      span.pug  level-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-life-bouy
                      span.pug  life-bouy
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-life-buoy
                      span.pug  life-buoy
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-life-ring
                      span.pug  life-ring
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-life-saver
                      span.pug  life-saver
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-lightbulb-o
                      span.pug  lightbulb-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-line-chart
                      span.pug  line-chart
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-location-arrow
                      span.pug  location-arrow
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-lock
                      span.pug  lock
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-magic
                      span.pug  magic
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-magnet
                      span.pug  magnet
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-mail-forward
                      span.pug  mail-forward
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-mail-reply
                      span.pug  mail-reply
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-mail-reply-all
                      span.pug  mail-reply-all
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-male
                      span.pug  male
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-map
                      span.pug  map
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-map-marker
                      span.pug  map-marker
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-map-o
                      span.pug  map-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-map-pin
                      span.pug  map-pin
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-map-signs
                      span.pug  map-signs
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-meh-o
                      span.pug  meh-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-microphone
                      span.pug  microphone
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-microphone-slash
                      span.pug  microphone-slash
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-minus
                      span.pug  minus
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-minus-circle
                      span.pug  minus-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-minus-square
                      span.pug  minus-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-minus-square-o
                      span.pug  minus-square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-mobile
                      span.pug  mobile
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-mobile-phone
                      span.pug  mobile-phone
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-money
                      span.pug  money
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-moon-o
                      span.pug  moon-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-mortar-board
                      span.pug  mortar-board
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-motorcycle
                      span.pug  motorcycle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-mouse-pointer
                      span.pug  mouse-pointer
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-music
                      span.pug  music
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-navicon
                      span.pug  navicon
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-newspaper-o
                      span.pug  newspaper-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-object-group
                      span.pug  object-group
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-object-ungroup
                      span.pug  object-ungroup
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-paint-brush
                      span.pug  paint-brush
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-paper-plane
                      span.pug  paper-plane
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-paper-plane-o
                      span.pug  paper-plane-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-paw
                      span.pug  paw
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-pencil
                      span.pug  pencil
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-pencil-square
                      span.pug  pencil-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-pencil-square-o
                      span.pug  pencil-square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-percent
                      span.pug  percent
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-phone
                      span.pug  phone
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-phone-square
                      span.pug  phone-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-photo
                      span.pug  photo
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-picture-o
                      span.pug  picture-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-pie-chart
                      span.pug  pie-chart
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-plane
                      span.pug  plane
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-plug
                      span.pug  plug
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-plus
                      span.pug  plus
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-plus-circle
                      span.pug  plus-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-plus-square
                      span.pug  plus-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-plus-square-o
                      span.pug  plus-square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-power-off
                      span.pug  power-off
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-print
                      span.pug  print
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-puzzle-piece
                      span.pug  puzzle-piece
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-qrcode
                      span.pug  qrcode
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-question
                      span.pug  question
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-question-circle
                      span.pug  question-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-quote-left
                      span.pug  quote-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-quote-right
                      span.pug  quote-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-random
                      span.pug  random
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-recycle
                      span.pug  recycle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-refresh
                      span.pug  refresh
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-registered
                      span.pug  registered
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-remove
                      span.pug  remove
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-reorder
                      span.pug  reorder
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-reply
                      span.pug  reply
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-reply-all
                      span.pug  reply-all
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-retweet
                      span.pug  retweet
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-road
                      span.pug  road
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-rocket
                      span.pug  rocket
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-rss
                      span.pug  rss
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-rss-square
                      span.pug  rss-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-search
                      span.pug  search
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-search-minus
                      span.pug  search-minus
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-search-plus
                      span.pug  search-plus
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-send
                      span.pug  send
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-send-o
                      span.pug  send-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-server
                      span.pug  server
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-share
                      span.pug  share
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-share-alt
                      span.pug  share-alt
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-share-alt-square
                      span.pug  share-alt-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-share-square
                      span.pug  share-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-share-square-o
                      span.pug  share-square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-shield
                      span.pug  shield
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-ship
                      span.pug  ship
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-shopping-bag
                      span.pug  shopping-bag
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-shopping-basket
                      span.pug  shopping-basket
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-shopping-cart
                      span.pug  shopping-cart
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sign-in
                      span.pug  sign-in
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sign-out
                      span.pug  sign-out
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-signal
                      span.pug  signal
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sitemap
                      span.pug  sitemap
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sliders
                      span.pug  sliders
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-smile-o
                      span.pug  smile-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-soccer-ball-o
                      span.pug  soccer-ball-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort
                      span.pug  sort
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-alpha-asc
                      span.pug  sort-alpha-asc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-alpha-desc
                      span.pug  sort-alpha-desc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-amount-asc
                      span.pug  sort-amount-asc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-amount-desc
                      span.pug  sort-amount-desc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-asc
                      span.pug  sort-asc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-desc
                      span.pug  sort-desc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-down
                      span.pug  sort-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-numeric-asc
                      span.pug  sort-numeric-asc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-numeric-desc
                      span.pug  sort-numeric-desc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sort-up
                      span.pug  sort-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-space-shuttle
                      span.pug  space-shuttle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-spinner
                      span.pug  spinner
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-spoon
                      span.pug  spoon
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-square
                      span.pug  square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-square-o
                      span.pug  square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-star
                      span.pug  star
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-star-half
                      span.pug  star-half
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-star-half-empty
                      span.pug  star-half-empty
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-star-half-full
                      span.pug  star-half-full
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-star-half-o
                      span.pug  star-half-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-star-o
                      span.pug  star-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sticky-note
                      span.pug  sticky-note
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sticky-note-o
                      span.pug  sticky-note-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-street-view
                      span.pug  street-view
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-suitcase
                      span.pug  suitcase
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-sun-o
                      span.pug  sun-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-support
                      span.pug  support
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tablet
                      span.pug  tablet
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tachometer
                      span.pug  tachometer
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tag
                      span.pug  tag
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tags
                      span.pug  tags
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tasks
                      span.pug  tasks
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-taxi
                      span.pug  taxi
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-television
                      span.pug  television
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-terminal
                      span.pug  terminal
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thumb-tack
                      span.pug  thumb-tack
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thumbs-down
                      span.pug  thumbs-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thumbs-o-down
                      span.pug  thumbs-o-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thumbs-o-up
                      span.pug  thumbs-o-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-thumbs-up
                      span.pug  thumbs-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-ticket
                      span.pug  ticket
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-times
                      span.pug  times
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-times-circle
                      span.pug  times-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-times-circle-o
                      span.pug  times-circle-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tint
                      span.pug  tint
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-down
                      span.pug  toggle-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-left
                      span.pug  toggle-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-off
                      span.pug  toggle-off
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-on
                      span.pug  toggle-on
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-right
                      span.pug  toggle-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-up
                      span.pug  toggle-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-trademark
                      span.pug  trademark
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-trash
                      span.pug  trash
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-trash-o
                      span.pug  trash-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tree
                      span.pug  tree
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-trophy
                      span.pug  trophy
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-truck
                      span.pug  truck
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tty
                      span.pug  tty
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tv
                      span.pug  tv
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-umbrella
                      span.pug  umbrella
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-university
                      span.pug  university
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-unlock
                      span.pug  unlock
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-unlock-alt
                      span.pug  unlock-alt
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-unsorted
                      span.pug  unsorted
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-upload
                      span.pug  upload
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-user
                      span.pug  user
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-user-plus
                      span.pug  user-plus
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-user-secret
                      span.pug  user-secret
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-user-times
                      span.pug  user-times
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-users
                      span.pug  users
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-video-camera
                      span.pug  video-camera
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-volume-down
                      span.pug  volume-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-volume-off
                      span.pug  volume-off
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-volume-up
                      span.pug  volume-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-warning
                      span.pug  warning
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-wheelchair
                      span.pug  wheelchair
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-wifi
                      span.pug  wifi
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-wrench
                      span.pug  wrench
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-check-square
                      span.pug  fa-check-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-check-square-o
                      span.pug  fa-check-square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-circle
                      span.pug  fa-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-circle-o
                      span.pug  fa-circle-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-dot-circle-o
                      span.pug  fa-dot-circle-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-minus-square
                      span.pug  fa-minus-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-minus-square-o
                      span.pug  fa-minus-square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-plus-square
                      span.pug  fa-plus-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-plus-square-o
                      span.pug  fa-plus-square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-square
                      span.pug  fa-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-square-o
                      span.pug  fa-square-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bitcoin
                      span.pug  fa-bitcoin
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-btc
                      span.pug  fa-btc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cny
                      span.pug  fa-cny
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-dollar
                      span.pug  fa-dollar
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-eur
                      span.pug  fa-eur
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-euro
                      span.pug  fa-euro
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-gbp
                      span.pug  fa-gbp
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-inr
                      span.pug  fa-inr
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-jpy
                      span.pug  fa-jpy
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-krw
                      span.pug  fa-krw
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-money
                      span.pug  fa-money
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-rmb
                      span.pug  fa-rmb
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-rouble
                      span.pug  fa-rouble
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-rub
                      span.pug  fa-rub
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-ruble
                      span.pug  fa-ruble
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-rupee
                      span.pug  fa-rupee
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-try
                      span.pug  fa-try
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-turkish-lira
                      span.pug  fa-turkish-lira
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-usd
                      span.pug  fa-usd
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-won
                      span.pug  fa-won
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-yen
                      span.pug  fa-yen
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-align-center
                      span.pug  fa-align-center
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-align-justify
                      span.pug  fa-align-justify
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-align-left
                      span.pug  fa-align-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-align-right
                      span.pug  fa-align-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bold
                      span.pug  fa-bold
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chain
                      span.pug  fa-chain
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chain-broken
                      span.pug  fa-chain-broken
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-clipboard
                      span.pug  fa-clipboard
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-columns
                      span.pug  fa-columns
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-copy
                      span.pug  fa-copy
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-cut
                      span.pug  fa-cut
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-dedent
                      span.pug  fa-dedent
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-eraser
                      span.pug  fa-eraser
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file
                      span.pug  fa-file
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-o
                      span.pug  fa-file-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-text
                      span.pug  fa-file-text
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-file-text-o
                      span.pug  fa-file-text-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-files-o
                      span.pug  fa-files-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-floppy-o
                      span.pug  fa-floppy-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-font
                      span.pug  fa-font
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-indent
                      span.pug  fa-indent
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-italic
                      span.pug  fa-italic
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-link
                      span.pug  fa-link
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-list
                      span.pug  fa-list
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-list-alt
                      span.pug  fa-list-alt
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-list-ol
                      span.pug  fa-list-ol
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-list-ul
                      span.pug  fa-list-ul
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-outdent
                      span.pug  fa-outdent
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-paperclip
                      span.pug  fa-paperclip
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-paste
                      span.pug  fa-paste
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-repeat
                      span.pug  fa-repeat
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-rotate-left
                      span.pug  fa-rotate-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-rotate-right
                      span.pug  fa-rotate-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-save
                      span.pug  fa-save
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-scissors
                      span.pug  fa-scissors
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-strikethrough
                      span.pug  fa-strikethrough
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-table
                      span.pug  fa-table
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-text-height
                      span.pug  fa-text-height
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-text-width
                      span.pug  fa-text-width
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-th
                      span.pug  fa-th
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-th-large
                      span.pug  fa-th-large
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-th-list
                      span.pug  fa-th-list
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-underline
                      span.pug  fa-underline
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-undo
                      span.pug  fa-undo
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-unlink
                      span.pug  fa-unlink
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-angle-double-down
                      span.pug  fa-angle-double-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-angle-double-left
                      span.pug  fa-angle-double-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-angle-double-right
                      span.pug  fa-angle-double-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-angle-double-up
                      span.pug  fa-angle-double-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-angle-down
                      span.pug  fa-angle-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-angle-left
                      span.pug  fa-angle-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-angle-right
                      span.pug  fa-angle-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-angle-up
                      span.pug  fa-angle-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-circle-down
                      span.pug  fa-arrow-circle-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-circle-left
                      span.pug  fa-arrow-circle-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-circle-o-down
                      span.pug  fa-arrow-circle-o-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-circle-o-left
                      span.pug  fa-arrow-circle-o-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-circle-o-right
                      span.pug  fa-arrow-circle-o-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-circle-o-up
                      span.pug  fa-arrow-circle-o-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-circle-right
                      span.pug  fa-arrow-circle-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-circle-up
                      span.pug  fa-arrow-circle-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-down
                      span.pug  fa-arrow-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-left
                      span.pug  fa-arrow-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-right
                      span.pug  fa-arrow-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrow-up
                      span.pug  fa-arrow-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrows
                      span.pug  fa-arrows
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrows-alt
                      span.pug  fa-arrows-alt
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrows-h
                      span.pug  fa-arrows-h
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrows-v
                      span.pug  fa-arrows-v
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-down
                      span.pug  fa-caret-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-left
                      span.pug  fa-caret-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-right
                      span.pug  fa-caret-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-square-o-down
                      span.pug  fa-caret-square-o-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-square-o-left
                      span.pug  fa-caret-square-o-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-square-o-right
                      span.pug  fa-caret-square-o-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-square-o-up
                      span.pug  fa-caret-square-o-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-caret-up
                      span.pug  fa-caret-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chevron-circle-down
                      span.pug  fa-chevron-circle-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chevron-circle-left
                      span.pug  fa-chevron-circle-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chevron-circle-right
                      span.pug  fa-chevron-circle-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chevron-circle-up
                      span.pug  fa-chevron-circle-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chevron-down
                      span.pug  fa-chevron-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chevron-left
                      span.pug  fa-chevron-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chevron-right
                      span.pug  fa-chevron-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-chevron-up
                      span.pug  fa-chevron-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-o-down
                      span.pug  fa-hand-o-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-o-left
                      span.pug  fa-hand-o-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-o-right
                      span.pug  fa-hand-o-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hand-o-up
                      span.pug  fa-hand-o-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-long-arrow-down
                      span.pug  fa-long-arrow-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-long-arrow-left
                      span.pug  fa-long-arrow-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-long-arrow-right
                      span.pug  fa-long-arrow-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-long-arrow-up
                      span.pug  fa-long-arrow-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-down
                      span.pug  fa-toggle-down
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-left
                      span.pug  fa-toggle-left
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-right
                      span.pug  fa-toggle-right
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-toggle-up
                      span.pug  fa-toggle-up
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-arrows-alt
                      span.pug  fa-arrows-alt
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-backward
                      span.pug  fa-backward
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-compress
                      span.pug  fa-compress
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-eject
                      span.pug  fa-eject
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-expand
                      span.pug  fa-expand
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-fast-backward
                      span.pug  fa-fast-backward
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-fast-forward
                      span.pug  fa-fast-forward
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-forward
                      span.pug  fa-forward
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-pause
                      span.pug  fa-pause
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-play
                      span.pug  fa-play
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-play-circle
                      span.pug  fa-play-circle
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-play-circle-o
                      span.pug  fa-play-circle-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-step-backward
                      span.pug  fa-step-backward
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-step-forward
                      span.pug  fa-step-forward
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-stop
                      span.pug  fa-stop
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-youtube-play
                      span.pug  fa-youtube-play
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-adn
                      span.pug  fa-adn
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-android
                      span.pug  fa-android
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-apple
                      span.pug  fa-apple
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bitbucket
                      span.pug  fa-bitbucket
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bitbucket-square
                      span.pug  fa-bitbucket-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-bitcoin
                      span.pug  fa-bitcoin
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-btc
                      span.pug  fa-btc
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-css3
                      span.pug  fa-css3
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-dribbble
                      span.pug  fa-dribbble
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-dropbox
                      span.pug  fa-dropbox
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-facebook
                      span.pug  fa-facebook
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-facebook-square
                      span.pug  fa-facebook-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-flickr
                      span.pug  fa-flickr
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-foursquare
                      span.pug  fa-foursquare
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-github
                      span.pug  fa-github
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-github-alt
                      span.pug  fa-github-alt
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-github-square
                      span.pug  fa-github-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-gittip
                      span.pug  fa-gittip
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-google-plus
                      span.pug  fa-google-plus
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-google-plus-square
                      span.pug  fa-google-plus-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-html5
                      span.pug  fa-html5
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-instagram
                      span.pug  fa-instagram
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-linkedin
                      span.pug  fa-linkedin
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-linkedin-square
                      span.pug  fa-linkedin-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-linux
                      span.pug  fa-linux
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-maxcdn
                      span.pug  fa-maxcdn
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-pagelines
                      span.pug  fa-pagelines
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-pinterest
                      span.pug  fa-pinterest
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-pinterest-square
                      span.pug  fa-pinterest-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-renren
                      span.pug  fa-renren
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-skype
                      span.pug  fa-skype
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-stack-exchange
                      span.pug  fa-stack-exchange
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-stack-overflow
                      span.pug  fa-stack-overflow
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-trello
                      span.pug  fa-trello
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tumblr
                      span.pug  fa-tumblr
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-tumblr-square
                      span.pug  fa-tumblr-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-twitter
                      span.pug  fa-twitter
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-twitter-square
                      span.pug  fa-twitter-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-vimeo-square
                      span.pug  fa-vimeo-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-vk
                      span.pug  fa-vk
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-weibo
                      span.pug  fa-weibo
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-windows
                      span.pug  fa-windows
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-xing
                      span.pug  fa-xing
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-xing-square
                      span.pug  fa-xing-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-youtube
                      span.pug  fa-youtube
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-youtube-play
                      span.pug  fa-youtube-play
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-youtube-square
                      span.pug  fa-youtube-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-ambulance
                      span.pug  fa-ambulance
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-h-square
                      span.pug  fa-h-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-hospital-o
                      span.pug  fa-hospital-o
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-medkit
                      span.pug  fa-medkit
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-plus-square
                      span.pug  fa-plus-square
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-stethoscope
                      span.pug  fa-stethoscope
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-user-md
                      span.pug  fa-user-md
                  .pug.infont.col-md-2
                    a.pug(href='#')
                      i.pug.fa.fa-wheelchair
                      span.pug  fa-wheelchair
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
  
  
  
  
