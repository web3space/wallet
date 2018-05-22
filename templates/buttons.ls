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
              li.pug.active
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
                  span.pug Colors and Buttons 
            h2.pug.font-light.m-b-xs
              span.pug Colors and Buttons
            small.pug The basic color palette
      .pug.content
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-body.float-e-margins
                .pug.wrapper
                  .pug.row.color-demo
                    .pug.header-line.h-bg-navy-blue.extreme-color
                      div.pug
                        span.pug Primary
                        span.pug Navy Blue
                    .pug.header-line.h-bg-violet
                      div.pug
                        span.pug Primary 2
                        span.pug Violet
                    .pug.header-line.h-bg-blue
                      div.pug
                        span.pug Info
                        span.pug Blue
                    .pug.header-line.h-bg-green
                      div.pug
                        span.pug Success
                        span.pug Green
                    .pug.header-line.h-bg-yellow
                      div.pug
                        span.pug Warning
                        span.pug Yellow
                    .pug.header-line.h-bg-orange
                      div.pug
                        span.pug Warning 2
                        span.pug Orange
                    .pug.header-line.h-bg-red
                      div.pug
                        span.pug Danger
                        span.pug Red
                    .pug.header-line.h-bg-red-deep.extreme-color
                      div.pug
                        span.pug Danger 2
                        span.pug Deep red
        .pug.row
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Buttons - primary colors
              .pug.panel-body.float-e-margins
                p.pug
                  span.pug Use any of the available button classes to quickly create a styled button.
                p.pug
                  button.pug.btn.w-xs.btn-default(type='button') Default
                  button.pug.btn.w-xs.btn-primary(type='button') Primary
                  button.pug.btn.w-xs.btn-primary2(type='button') Primary2
                  button.pug.btn.w-xs.btn-info(type='button') Info
                  button.pug.btn.w-xs.btn-success(type='button') Success
                  button.pug.btn.w-xs.btn-warning(type='button') Warning
                  button.pug.btn.w-xs.btn-warning2(type='button') Warning2
                  button.pug.btn.w-xs.btn-danger(type='button') Danger
                  button.pug.btn.w-xs.btn-danger2(type='button') Danger2
                  button.pug.btn.w-xs.btn-link(type='button') Simple link
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Diferent size
              .pug.panel-body.float-e-margins
                p.pug
                  span.pug If You want larger or smaller buttons You can add 
                  code.pug .btn-lg
                  span.pug , 
                  code.pug .btn-sm
                  span.pug , or 
                  code.pug .btn-xs
                  span.pug  class.
                p.pug
                  button.pug.btn.btn-primary.btn-lg(type='button') Large button
                  button.pug.btn.btn-default.btn-lg(type='button') Large button
                  br.pug
                  button.pug.btn.btn-primary(type='button') Default button
                  button.pug.btn.btn-default(type='button') Default button
                  br.pug
                  button.pug.btn.btn-primary.btn-sm(type='button') Small button
                  button.pug.btn.btn-default.btn-sm(type='button') Small button
                  br.pug
                  button.pug.btn.btn-primary.btn-xs(type='button') Mini button
                  button.pug.btn.btn-default.btn-xs(type='button') Mini button
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Outline buttons
              .pug.panel-body.float-e-margins
                p.pug
                  span.pug Create block level buttons or outline buttons, by adding 
                  code.pug .btn-block
                  span.pug  or 
                  code.pug .btn-outline
                  span.pug .
                p.pug
                  button.pug.btn.btn-outline.btn-default(type='button') Default
                  button.pug.btn.btn-outline.btn-primary(type='button') Primary
                  button.pug.btn.btn-outline.btn-primary2(type='button') Primary2
                  button.pug.btn.btn-outline.btn-info(type='button') Info
                  button.pug.btn.btn-outline.btn-success(type='button') Success
                  button.pug.btn.btn-outline.btn-warning(type='button') Warning
                  button.pug.btn.btn-outline.btn-warning2(type='button') Warning2
                  button.pug.btn.btn-outline.btn-danger(type='button') Danger
                  button.pug.btn.btn-outline.btn-danger2(type='button') Danger2
                p.pug
                  button.pug.btn.btn-block.btn-outline.btn-default(type='button') Block button
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Dropdown buttons
              .pug.panel-body.float-e-margins
                p.pug
                  span.pug Droppdowns buttons are avalible with any color and any size.
                .pug.btn-group
                  button.pug.btn.btn-primary.dropdown-toggle(data-toggle='dropdown')
                    span.pug Action 
                    span.pug.caret
                  ul.pug.dropdown-menu
                    li.pug
                      a.pug(href='#') Action
                    li.pug
                      a.pug.font-bold(href='#') Another action
                    li.pug
                      a.pug(href='#') Something else here
                    li.pug.divider
                    li.pug
                      a.pug(href='#') Separated link
                .pug.btn-group
                  button.pug.btn.btn-info.dropdown-toggle(data-toggle='dropdown')
                    span.pug Action 
                    span.pug.caret
                  ul.pug.dropdown-menu
                    li.pug
                      a.pug(href='#') Action
                    li.pug
                      a.pug(href='#') Another action
                    li.pug
                      a.pug(href='#') Something else here
                    li.pug.divider
                    li.pug
                      a.pug(href='#') Separated link
                .pug.btn-group
                  button.pug.btn.btn-default.dropdown-toggle(data-toggle='dropdown')
                    span.pug Action 
                    span.pug.caret
                  ul.pug.dropdown-menu
                    li.pug
                      a.pug(href='#') Action
                    li.pug
                      a.pug(href='#') Another action
                    li.pug
                      a.pug(href='#') Something else here
                    li.pug.divider
                    li.pug
                      a.pug(href='#') Separated link
                br.pug
                .pug.btn-group
                  button.pug.btn.btn-primary.btn-sm.dropdown-toggle(data-toggle='dropdown')
                    span.pug Action 
                    span.pug.caret
                  ul.pug.dropdown-menu
                    li.pug
                      a.pug(href='#') Action
                    li.pug
                      a.pug(href='#') Another action
                    li.pug
                      a.pug(href='#') Something else here
                    li.pug.divider
                    li.pug
                      a.pug(href='#') Separated link
                .pug.btn-group
                  button.pug.btn.btn-info.btn-sm.dropdown-toggle(data-toggle='dropdown')
                    span.pug Action 
                    span.pug.caret
                  ul.pug.dropdown-menu
                    li.pug
                      a.pug(href='#') Action
                    li.pug
                      a.pug(href='#') Another action
                    li.pug
                      a.pug(href='#') Something else here
                    li.pug.divider
                    li.pug
                      a.pug(href='#') Separated link
                .pug.btn-group
                  button.pug.btn.btn-default.btn-sm.dropdown-toggle(data-toggle='dropdown')
                    span.pug Action 
                    span.pug.caret
                  ul.pug.dropdown-menu
                    li.pug
                      a.pug(href='#') Action
                    li.pug
                      a.pug(href='#') Another action
                    li.pug
                      a.pug(href='#') Something else here
                    li.pug.divider
                    li.pug
                      a.pug(href='#') Separated link
                br.pug
                .pug.btn-group
                  button.pug.btn.btn-primary.btn-xs.dropdown-toggle(data-toggle='dropdown')
                    span.pug Action 
                    span.pug.caret
                  ul.pug.dropdown-menu
                    li.pug
                      a.pug(href='#') Action
                    li.pug
                      a.pug(href='#') Another action
                    li.pug
                      a.pug(href='#') Something else here
                    li.pug.divider
                    li.pug
                      a.pug(href='#') Separated link
                .pug.btn-group
                  button.pug.btn.btn-info.btn-xs.dropdown-toggle(data-toggle='dropdown')
                    span.pug Action 
                    span.pug.caret
                  ul.pug.dropdown-menu
                    li.pug
                      a.pug(href='#') Action
                    li.pug
                      a.pug(href='#') Another action
                    li.pug
                      a.pug(href='#') Something else here
                    li.pug.divider
                    li.pug
                      a.pug(href='#') Separated link
                .pug.btn-group
                  button.pug.btn.btn-default.btn-xs.dropdown-toggle(data-toggle='dropdown')
                    span.pug Action 
                    span.pug.caret
                  ul.pug.dropdown-menu
                    li.pug
                      a.pug(href='#') Action
                    li.pug
                      a.pug(href='#') Another action
                    li.pug
                      a.pug(href='#') Something else here
                    li.pug.divider
                    li.pug
                      a.pug(href='#') Separated link
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Button gruped
              .pug.panel-body.float-e-margins
                p.pug
                  span.pug This is a group of buttons, ideal for sytuation where many actions are related to same element.
                .pug.btn-group
                  button.pug.btn.btn-default(type='button') Left
                  button.pug.btn.btn-primary(type='button') Middle
                  button.pug.btn.btn-default(type='button') Right
                br.pug
                br.pug
                .pug.btn-group
                  button.pug.btn.btn-default(type='button')
                    i.pug.fa.fa-chevron-left
                  button.pug.btn.btn-default 1
                  button.pug.btn.btn-default.active 2
                  button.pug.btn.btn-default 3
                  button.pug.btn.btn-default 4
                  button.pug.btn.btn-default 5
                  button.pug.btn.btn-default 6
                  button.pug.btn.btn-default 7
                  button.pug.btn.btn-default 8
                  button.pug.btn.btn-default(type='button')
                    i.pug.fa.fa-chevron-right
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Icon Buttons
              .pug.panel-body.float-e-margins
                p.pug
                  span.pug To buttons with any color or any size you can add extra icon on the left or the right side.
                button.pug.btn.btn-primary(type='button')
                  i.pug.fa.fa-check
                  span.pug  Submit
                button.pug.btn.btn-success(type='button')
                  i.pug.fa.fa-upload
                  span.pug.bold Upload
                button.pug.btn.btn-info(type='button')
                  i.pug.fa.fa-paste
                  span.pug  Edit
                button.pug.btn.btn-danger(type='button')
                  i.pug.fa.fa-trash-o
                  span.pug.bold Delete
                button.pug.btn.btn-default(type='button')
                  i.pug.fa.fa-map-marker
                  span.pug  Map
                a.pug.btn.btn-default
                  i.pug.fa.fa-user-md
                a.pug.btn.btn-default
                  i.pug.fa.fa-group
                a.pug.btn.btn-default
                  i.pug.fa.fa-wrench
                a.pug.btn.btn-default
                  i.pug.fa.fa-exchange
                a.pug.btn.btn-default
                  i.pug.fa.fa-check-circle-o
                a.pug.btn.btn-default
                  i.pug.fa.fa-road
                a.pug.btn.btn-default
                  i.pug.fa.fa-ambulance
                a.pug.btn.btn-default
                  i.pug.fa.fa-star
                  span.pug  Stared
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Icon Buttons with custom size
              .pug.panel-body.float-e-margins
                p.pug
                  span.pug Buttons with icons are avalible wih custom size.
                button.pug.btn.btn-primary(type='button')
                  i.pug.fa.fa-group
                  br.pug
                  span.pug Users
                button.pug.btn.btn-primary2(type='button')
                  i.pug.fa.fa-volume-up
                  br.pug
                  span.pug Volume
                button.pug.btn.btn-info(type='button')
                  i.pug.fa.fa-print
                  br.pug
                  span.pug Print
                button.pug.btn.btn-success(type='button')
                  i.pug.fa.fa-recycle
                  br.pug
                  span.pug Recycle
                button.pug.btn.btn-warning(type='button')
                  i.pug.fa.fa-music
                  br.pug
                  span.pug Music
                button.pug.btn.btn-warning2(type='button')
                  i.pug.fa.fa-star
                  br.pug
                  span.pug Stars
                button.pug.btn.btn-danger2(type='button')
                  i.pug.fa.fa-medkit
                  br.pug
                  span.pug Medkit
                br.pug
                button.pug.btn.btn-primary.btn-xs(type='button')
                  i.pug.fa.fa-group
                button.pug.btn.btn-primary2.btn-xs(type='button')
                  i.pug.fa.fa-volume-up
                button.pug.btn.btn-info.btn-xs(type='button')
                  i.pug.fa.fa-print
                button.pug.btn.btn-success.btn-xs(type='button')
                  i.pug.fa.fa-recycle
                button.pug.btn.btn-warning.btn-xs(type='button')
                  i.pug.fa.fa-music
                button.pug.btn.btn-warning2.btn-xs(type='button')
                  i.pug.fa.fa-star
                button.pug.btn.btn-danger2.btn-xs(type='button')
                  i.pug.fa.fa-medkit
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Buttons miscellaneous
              .pug.panel-body.float-e-margins
                .pug.row
                  .pug.col-lg-3
                    p.pug
                      span.pug Circle buttons
                    button.pug.btn.btn-primary.btn-circle(type='button')
                      i.pug.fa.fa-list
                    button.pug.btn.btn-success.btn-circle(type='button')
                      i.pug.fa.fa-link
                    button.pug.btn.btn-info.btn-circle(type='button')
                      i.pug.fa.fa-check
                    button.pug.btn.btn-warning.btn-circle(type='button')
                      i.pug.fa.fa-times
                    button.pug.btn.btn-danger.btn-circle(type='button')
                      i.pug.fa.fa-heart
                  .pug.col-lg-3
                    p.pug
                      span.pug Single toggle button
                    button.pug.btn.btn-warning(data-toggle='button' type='button') Single toggle
                  .pug.col-lg-3
                    p.pug
                      span.pug Checkbox buttons
                    .pug.btn-group(data-toggle='buttons')
                      label.pug.btn.btn-info.active
                        input.pug(type='checkbox')
                        span.pug  Option 1
                      label.pug.btn.btn-info
                        input.pug(type='checkbox')
                        span.pug  Option 2
                      label.pug.btn.btn-info
                        input.pug(type='checkbox')
                        span.pug  Option 3
                  .pug.col-lg-3
                    p.pug
                      span.pug Radio buttons
                    .pug.btn-group(data-toggle='buttons')
                      label.pug.btn.btn-success.active
                        input.pug#option1(type='radio' name='options')
                        span.pug  Option 1
                      label.pug.btn.btn-success
                        input.pug#option2(type='radio' name='options')
                        span.pug  Option 2
                      label.pug.btn.btn-success
                        input.pug#option3(type='radio' name='options')
                        span.pug  Option 3
                .pug.row
                  .pug.col-lg-3
                    button.pug.btn.btn-xs.btn-primary.btn-circle(type='button')
                      i.pug.fa.fa-list
                    button.pug.btn.btn-xs.btn-success.btn-circle(type='button')
                      i.pug.fa.fa-link
                    button.pug.btn.btn-xs.btn-info.btn-circle(type='button')
                      i.pug.fa.fa-check
                    button.pug.btn.btn-xs.btn-warning.btn-circle(type='button')
                      i.pug.fa.fa-times
                    button.pug.btn.btn-xs.btn-danger.btn-circle(type='button')
                      i.pug.fa.fa-heart
                  .pug.col-lg-3
                    button.pug.btn.btn-xs.btn-warning(data-toggle='button' type='button') Single toggle
                  .pug.col-lg-3
                    .pug.btn-group(data-toggle='buttons')
                      label.pug.btn.btn-info.active.btn-xs
                        input.pug(type='checkbox')
                        span.pug  Option 1
                      label.pug.btn.btn-info.btn-xs
                        input.pug(type='checkbox')
                        span.pug  Option 2
                      label.pug.btn.btn-info.btn-xs
                        input.pug(type='checkbox')
                        span.pug  Option 3
                  .pug.col-lg-3
                    .pug.btn-group(data-toggle='buttons')
                      label.pug.btn.btn-success.active.btn-xs
                        input.pug#option1(type='radio' name='options')
                        span.pug  Option 1
                      label.pug.btn.btn-success.btn-xs
                        input.pug#option2(type='radio' name='options')
                        span.pug  Option 2
                      label.pug.btn.btn-success.btn-xs
                        input.pug#option3(type='radio' name='options')
                        span.pug  Option 3
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
  
  
  
  
