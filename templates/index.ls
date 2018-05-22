require! {
  \react
  \./head.ls
  \./foot.ls
}
module.exports = ->
  .pug.fixed-navbar.sidebar-scroll
    .pug.skin-option.animated.fadeInRight
      a.pug(href='/light-shadow/' target='_blank')
        small.pug.font-bold.text-muted
          i.pug#demo-star.fa.fa-star
          span.pug  New
          span.pug.text-success  Light-Shadow
          br.pug
          span.pug Skin for Homer 2.0
        img.pug.img-responsive.m-t-xs(src='images/light-skin.png')
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
          li.pug.active
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
                a.pug(href='buttons.html') Colors & Buttons
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
      .pug.content
        .pug.row
          .pug.col-lg-12.text-center.welcome-message
            h2.pug
              span.pug Welcome to Homer Theme
            p.pug
              span.pug Special
              strong.pug Admin Theme
              span.pug  for medium and large web applications with very clean and
              span.pug                     aesthetic style and feel.
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Dashboard information and statistics
              .pug.panel-body
                .pug.row
                  .pug.col-md-3.text-center
                    .pug.small
                      i.pug.fa.fa-bolt
                      span.pug  Page views
                    div.pug
                      h1.pug.font-extra-bold.m-t-xl.m-b-xs
                        span.pug 226,802
                      small.pug Page views in last month
                    .pug.small.m-t-xl
                      i.pug.fa.fa-clock-o
                      span.pug  Data from January
                  .pug.col-md-6
                    .pug.text-center.small
                      i.pug.fa.fa-laptop
                      span.pug  Active users in current month (December)
                    .pug.flot-chart
                      .pug#flot-line-chart.flot-chart-content
                  .pug.col-md-3.text-center
                    .pug.small
                      i.pug.fa.fa-clock-o
                      span.pug  Active duration
                    div.pug
                      h1.pug.font-extra-bold.m-t-xl.m-b-xs
                        span.pug 10 Months
                      small.pug And four weeks
                    .pug.small.m-t-xl
                      i.pug.fa.fa-clock-o
                      span.pug  Last active in 12.10.2015
              .pug.panel-footer
                span.pug.pull-right
                  span.pug You have two new messages from
                  a.pug(href='') Monica Bolt
                span.pug                         Last update: 21.05.2015
        .pug.row
          .pug.col-lg-3
            .pug.hpanel
              .pug.panel-body.text-center.h-200
                i.pug.pe-7s-graph1.fa-4x
                h1.pug.m-xs $1 206,90
                h3.pug.font-extra-bold.no-margins.text-success
                  span.pug All Income
                small.pug Lorem ipsum dolor sit amet, consectetur adipiscing elit vestibulum.
              .pug.panel-footer
                span.pug This is standard panel footer
          .pug.col-lg-3
            .pug.hpanel.stats
              .pug.panel-body.h-200
                .pug.stats-title.pull-left
                  h4.pug Users Activity
                .pug.stats-icon.pull-right
                  i.pug.pe-7s-share.fa-4x
                .pug.m-t-xl
                  h3.pug.m-b-xs 210
                  span.pug.font-bold.no-margins
                    span.pug Social users
                  .pug.progress.m-t-xs.full.progress-small
                    .pug.progress-bar.progress-bar-success(aria-valuemax='100' aria-valuemin='0' aria-valuenow='55' role='progressbar')
                      span.pug.sr-only 35% Complete (success)
                  .pug.row
                    .pug.col-xs-6
                      small.pug.stats-label Pages / Visit
                      h4.pug 7.80
                    .pug.col-xs-6
                      small.pug.stats-label % New Visits
                      h4.pug 76.43%
              .pug.panel-footer
                span.pug This is standard panel footer
          .pug.col-lg-3
            .pug.hpanel.stats
              .pug.panel-body.h-200
                .pug.stats-title.pull-left
                  h4.pug Page Views
                .pug.stats-icon.pull-right
                  i.pug.pe-7s-monitor.fa-4x
                .pug.m-t-xl
                  h1.pug.text-success 860k+
                  span.pug.font-bold.no-margins
                    span.pug Social users
                  br.pug
                  small.pug
                    span.pug Lorem Ipsum is simply dummy text of the printing and
                    strong.pug
                      span.pug typesetting
                      span.pug industry
                    span.pug . Lorem Ipsum has been.
              .pug.panel-footer
                span.pug This is standard panel footer
          .pug.col-lg-3
            .pug.hpanel.stats
              .pug.panel-body.h-200
                .pug.stats-title.pull-left
                  h4.pug Today income
                .pug.stats-icon.pull-right
                  i.pug.pe-7s-cash.fa-4x
                .pug.clearfix
                .pug.flot-chart
                  .pug#flot-income-chart.flot-chart-content
                .pug.m-t-xs
                  .pug.row
                    .pug.col-xs-5
                      small.pug.stat-label Today
                      h4.pug $230,00
                    .pug.col-xs-7
                      small.pug.stat-label Last week
                      h4.pug
                        span.pug $7 980,60
                        i.pug.fa.fa-level-up.text-success
              .pug.panel-footer
                span.pug This is standard panel footer
        .pug.row
          .pug.col-lg-3
            .pug.hpanel.stats
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Last active
              .pug.panel-body.list
                .pug.stats-title.pull-left
                  h4.pug Activity
                .pug.stats-icon.pull-right
                  i.pug.pe-7s-science.fa-4x
                .pug.m-t-xl
                  span.pug.font-bold.no-margins
                    span.pug Social users
                  br.pug
                  small.pug
                    span.pug Lorem Ipsum is simply dummy text of the printing simply all dummy text. Lorem Ipsum is
                    span.pug simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.
                .pug.row.m-t-md
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
                .pug.row.m-t-md
                  .pug.col-lg-6
                    h3.pug.no-margins.font-extra-bold 120,108
                    .pug.font-bold
                      span.pug 38%
                      i.pug.fa.fa-level-down
                  .pug.col-lg-6
                    h3.pug.no-margins.font-extra-bold 450,600
                    .pug.font-bold
                      span.pug 28%
                      i.pug.fa.fa-level-down
              .pug.panel-footer
                span.pug This is standard panel footer
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Recently active projects
              .pug.panel-body.list
                .pug.table-responsive.project-list
                  table.pug.table.table-striped
                    thead.pug
                      tr.pug
                        th.pug(col-span='2') Project
                        th.pug Completed
                        th.pug Task
                        th.pug Date
                        th.pug Action
                    tbody.pug
                      tr.pug
                        td.pug
                          input.pug.i-checks(type='checkbox' checked='')
                        td.pug
                          span.pug Contract with Zender Company
                          br.pug
                          small.pug
                            i.pug.fa.fa-clock-o
                            span.pug  Created 14.08.2015
                        td.pug
                          span.pug.pie 1/5
                        td.pug
                          strong.pug 20%
                        td.pug Jul 14, 2013
                        td.pug
                          a.pug(href='')
                            i.pug.fa.fa-check.text-success
                      tr.pug
                        td.pug
                          input.pug.i-checks(type='checkbox')
                        td.pug
                          span.pug There are many variations of passages
                          br.pug
                          small.pug
                            i.pug.fa.fa-clock-o
                            span.pug  Created 21.07.2015
                        td.pug
                          span.pug.pie 1/4
                        td.pug
                          strong.pug 40%
                        td.pug Jul 16, 2013
                        td.pug
                          a.pug(href='')
                            i.pug.fa.fa-check.text-navy
                      tr.pug
                        td.pug
                          input.pug.i-checks(type='checkbox' checked='')
                        td.pug
                          span.pug Contrary to popular belief
                          br.pug
                          small.pug
                            i.pug.fa.fa-clock-o
                            span.pug  Created 12.06.2015
                        td.pug
                          span.pug.pie 0.52/1.561
                        td.pug
                          strong.pug 75%
                        td.pug Jul 18, 2013
                        td.pug
                          a.pug(href='')
                            i.pug.fa.fa-check.text-navy
                      tr.pug
                        td.pug
                          input.pug.i-checks(type='checkbox')
                        td.pug
                          span.pug Gamma project
                          br.pug
                          small.pug
                            i.pug.fa.fa-clock-o
                            span.pug  Created 06.03.2015
                        td.pug
                          span.pug.pie 226/360
                        td.pug
                          strong.pug 16%
                        td.pug Jul 22, 2013
                        td.pug
                          a.pug(href='')
                            i.pug.fa.fa-check.text-navy
          .pug.col-lg-3
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Activity
              .pug.panel-body.list
                .pug.pull-right
                  a.pug.btn.btn-xs.btn-default(href='#') Today
                  a.pug.btn.btn-xs.btn-default(href='#') Month
                .pug.panel-title Last Activity
                small.pug.fo This is simple example
                .pug.list-item-container
                  .pug.list-item
                    h3.pug.no-margins.font-extra-bold.text-success 2,773
                    small.pug Tota Messages Sent
                    .pug.pull-right.font-bold
                      span.pug 98%
                      i.pug.fa.fa-level-up.text-success
                  .pug.list-item
                    h3.pug.no-margins.font-extra-bold.text-color3 4,422
                    small.pug Last activity
                    .pug.pull-right.font-bold
                      span.pug 13%
                      i.pug.fa.fa-level-down.text-color3
                  .pug.list-item
                    h3.pug.no-margins.font-extra-bold.text-color3 9,180
                    small.pug Monthly income
                    .pug.pull-right.font-bold
                      span.pug 22%
                      i.pug.fa.fa-bolt.text-color3
                  .pug.list-item
                    h3.pug.no-margins.font-extra-bold.text-success 1,450
                    small.pug Tota Messages Sent
                    .pug.pull-right.font-bold
                      span.pug 44%
                      i.pug.fa.fa-level-up.text-success
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
            .pug.progress-bar.progress-bar-success(aria-valuemax='100' aria-valuemin='0' aria-valuenow='25' role='progressbar')
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
                    span.pug Injected humour, or randomised words which do not look even slightly believable.
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



