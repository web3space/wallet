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
          li.pug.active
            a.pug(href='#')
              span.pug.nav-label Tables
              span.pug.fa.arrow
            ul.pug.nav.nav-second-level
              li.pug
                a.pug(href='tables_design.html') Tables design
              li.pug.active
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
                  span.pug Tables
                li.pug.active
                  span.pug DataTables
            h2.pug.font-light.m-b-xs
              span.pug DataTables
            small.pug Advanced interaction controls to any HTML table
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
                span.pug                     Basic example with Ajax (json file)
              .pug.panel-body
                table.pug#example1.table.table-striped.table-bordered.table-hover(width='100%')
                  thead.pug
                    tr.pug
                      th.pug Name
                      th.pug Position
                      th.pug Office
                      th.pug(width='15%') Age
                      th.pug(width='15%') Start date
                      th.pug(width='15%') Salary
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                     Standard table
              .pug.panel-body
                table.pug#example2.table.table-striped.table-bordered.table-hover
                  thead.pug
                    tr.pug
                      th.pug Name
                      th.pug Position
                      th.pug Office
                      th.pug Age
                      th.pug Start date
                      th.pug Salary
                  tbody.pug
                    tr.pug
                      td.pug Tiger Nixon
                      td.pug System Architect
                      td.pug Edinburgh
                      td.pug 61
                      td.pug 2011/04/25
                      td.pug $320,800
                    tr.pug
                      td.pug Garrett Winters
                      td.pug Accountant
                      td.pug Tokyo
                      td.pug 63
                      td.pug 2011/07/25
                      td.pug $170,750
                    tr.pug
                      td.pug Ashton Cox
                      td.pug Junior Technical Author
                      td.pug San Francisco
                      td.pug 66
                      td.pug 2009/01/12
                      td.pug $86,000
                    tr.pug
                      td.pug Cedric Kelly
                      td.pug Senior Javascript Developer
                      td.pug Edinburgh
                      td.pug 22
                      td.pug 2012/03/29
                      td.pug $433,060
                    tr.pug
                      td.pug Airi Satou
                      td.pug Accountant
                      td.pug Tokyo
                      td.pug 33
                      td.pug 2008/11/28
                      td.pug $162,700
                    tr.pug
                      td.pug Brielle Williamson
                      td.pug Integration Specialist
                      td.pug New York
                      td.pug 61
                      td.pug 2012/12/02
                      td.pug $372,000
                    tr.pug
                      td.pug Herrod Chandler
                      td.pug Sales Assistant
                      td.pug San Francisco
                      td.pug 59
                      td.pug 2012/08/06
                      td.pug $137,500
                    tr.pug
                      td.pug Rhona Davidson
                      td.pug Integration Specialist
                      td.pug Tokyo
                      td.pug 55
                      td.pug 2010/10/14
                      td.pug $327,900
                    tr.pug
                      td.pug Colleen Hurst
                      td.pug Javascript Developer
                      td.pug San Francisco
                      td.pug 39
                      td.pug 2009/09/15
                      td.pug $205,500
                    tr.pug
                      td.pug Sonya Frost
                      td.pug Software Engineer
                      td.pug Edinburgh
                      td.pug 23
                      td.pug 2008/12/13
                      td.pug $103,600
                    tr.pug
                      td.pug Jena Gaines
                      td.pug Office Manager
                      td.pug London
                      td.pug 30
                      td.pug 2008/12/19
                      td.pug $90,560
                    tr.pug
                      td.pug Quinn Flynn
                      td.pug Support Lead
                      td.pug Edinburgh
                      td.pug 22
                      td.pug 2013/03/03
                      td.pug $342,000
                    tr.pug
                      td.pug Charde Marshall
                      td.pug Regional Director
                      td.pug San Francisco
                      td.pug 36
                      td.pug 2008/10/16
                      td.pug $470,600
                    tr.pug
                      td.pug Haley Kennedy
                      td.pug Senior Marketing Designer
                      td.pug London
                      td.pug 43
                      td.pug 2012/12/18
                      td.pug $313,500
                    tr.pug
                      td.pug Tatyana Fitzpatrick
                      td.pug Regional Director
                      td.pug London
                      td.pug 19
                      td.pug 2010/03/17
                      td.pug $385,750
                    tr.pug
                      td.pug Michael Silva
                      td.pug Marketing Designer
                      td.pug London
                      td.pug 66
                      td.pug 2012/11/27
                      td.pug $198,500
                    tr.pug
                      td.pug Paul Byrd
                      td.pug Chief Financial Officer (CFO)
                      td.pug New York
                      td.pug 64
                      td.pug 2010/06/09
                      td.pug $725,000
                    tr.pug
                      td.pug Gloria Little
                      td.pug Systems Administrator
                      td.pug New York
                      td.pug 59
                      td.pug 2009/04/10
                      td.pug $237,500
                    tr.pug
                      td.pug Bradley Greer
                      td.pug Software Engineer
                      td.pug London
                      td.pug 41
                      td.pug 2012/10/13
                      td.pug $132,000
                    tr.pug
                      td.pug Dai Rios
                      td.pug Personnel Lead
                      td.pug Edinburgh
                      td.pug 35
                      td.pug 2012/09/26
                      td.pug $217,500
                    tr.pug
                      td.pug Jenette Caldwell
                      td.pug Development Lead
                      td.pug New York
                      td.pug 30
                      td.pug 2011/09/03
                      td.pug $345,000
                    tr.pug
                      td.pug Yuri Berry
                      td.pug Chief Marketing Officer (CMO)
                      td.pug New York
                      td.pug 40
                      td.pug 2009/06/25
                      td.pug $675,000
                    tr.pug
                      td.pug Caesar Vance
                      td.pug Pre-Sales Support
                      td.pug New York
                      td.pug 21
                      td.pug 2011/12/12
                      td.pug $106,450
                    tr.pug
                      td.pug Doris Wilder
                      td.pug Sales Assistant
                      td.pug Sidney
                      td.pug 23
                      td.pug 2010/09/20
                      td.pug $85,600
                    tr.pug
                      td.pug Angelica Ramos
                      td.pug Chief Executive Officer (CEO)
                      td.pug London
                      td.pug 47
                      td.pug 2009/10/09
                      td.pug $1,200,000
                    tr.pug
                      td.pug Gavin Joyce
                      td.pug Developer
                      td.pug Edinburgh
                      td.pug 42
                      td.pug 2010/12/22
                      td.pug $92,575
                    tr.pug
                      td.pug Jennifer Chang
                      td.pug Regional Director
                      td.pug Singapore
                      td.pug 28
                      td.pug 2010/11/14
                      td.pug $357,650
                    tr.pug
                      td.pug Brenden Wagner
                      td.pug Software Engineer
                      td.pug San Francisco
                      td.pug 28
                      td.pug 2011/06/07
                      td.pug $206,850
                    tr.pug
                      td.pug Fiona Green
                      td.pug Chief Operating Officer (COO)
                      td.pug San Francisco
                      td.pug 48
                      td.pug 2010/03/11
                      td.pug $850,000
                    tr.pug
                      td.pug Shou Itou
                      td.pug Regional Marketing
                      td.pug Tokyo
                      td.pug 20
                      td.pug 2011/08/14
                      td.pug $163,000
                    tr.pug
                      td.pug Michelle House
                      td.pug Integration Specialist
                      td.pug Sidney
                      td.pug 37
                      td.pug 2011/06/02
                      td.pug $95,400
                    tr.pug
                      td.pug Suki Burks
                      td.pug Developer
                      td.pug London
                      td.pug 53
                      td.pug 2009/10/22
                      td.pug $114,500
                    tr.pug
                      td.pug Prescott Bartlett
                      td.pug Technical Author
                      td.pug London
                      td.pug 27
                      td.pug 2011/05/07
                      td.pug $145,000
                    tr.pug
                      td.pug Gavin Cortez
                      td.pug Team Leader
                      td.pug San Francisco
                      td.pug 22
                      td.pug 2008/10/26
                      td.pug $235,500
                    tr.pug
                      td.pug Martena Mccray
                      td.pug Post-Sales support
                      td.pug Edinburgh
                      td.pug 46
                      td.pug 2011/03/09
                      td.pug $324,050
                    tr.pug
                      td.pug Unity Butler
                      td.pug Marketing Designer
                      td.pug San Francisco
                      td.pug 47
                      td.pug 2009/12/09
                      td.pug $85,675
                    tr.pug
                      td.pug Howard Hatfield
                      td.pug Office Manager
                      td.pug San Francisco
                      td.pug 51
                      td.pug 2008/12/16
                      td.pug $164,500
                    tr.pug
                      td.pug Hope Fuentes
                      td.pug Secretary
                      td.pug San Francisco
                      td.pug 41
                      td.pug 2010/02/12
                      td.pug $109,850
                    tr.pug
                      td.pug Vivian Harrell
                      td.pug Financial Controller
                      td.pug San Francisco
                      td.pug 62
                      td.pug 2009/02/14
                      td.pug $452,500
                    tr.pug
                      td.pug Timothy Mooney
                      td.pug Office Manager
                      td.pug London
                      td.pug 37
                      td.pug 2008/12/11
                      td.pug $136,200
                    tr.pug
                      td.pug Jackson Bradshaw
                      td.pug Director
                      td.pug New York
                      td.pug 65
                      td.pug 2008/09/26
                      td.pug $645,750
                    tr.pug
                      td.pug Olivia Liang
                      td.pug Support Engineer
                      td.pug Singapore
                      td.pug 64
                      td.pug 2011/02/03
                      td.pug $234,500
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
  
  
  
  
