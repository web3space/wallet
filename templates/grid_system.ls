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
          li.pug.active
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
          .pug.col-md-12
            .pug.hpanel
              .pug.panel-body
                h1.pug Grid system
                p.pug.lead
                  span.pug Bootstrap includes a responsive, mobile first fluid grid system that appropriately scales up to 12 columns as the device or viewport size increases. It includes
                  span.pug predefined classesfor easy layout options, as well as powerfulmixins for generating more semantic layouts.
                h3.pug#grid-intro Introduction
                p.pug
                  span.pug Grid systems are used for creating page layouts through a series of rows and columns that house your content. Here&apos;s how the Bootstrap grid system works:
                ul.pug
                  li.pug
                    span.pug Rows must be placed within a 
                    code.pug .container
                    span.pug  (fixed-width) or 
                    code.pug .container-fluid
                    span.pug  (full-width) for proper alignment and padding.
                  li.pug Use rows to create horizontal groups of columns.
                  li.pug
                    span.pug Content should be placed within columns, and only columns may be immediate children of rows.
                  li.pug
                    span.pug Predefined grid classes like 
                    code.pug .row
                    span.pug  and 
                    code.pug .col-xs-4
                    span.pug  are available for quickly making grid layouts. Less mixins can also be used for more semantic
                    span.pug                                 layouts.
                  li.pug
                    span.pug Columns create gutters (gaps between column content) via 
                    code.pug padding
                    span.pug . That padding is offset in rows for the first and last column via negative margin on
                    code.pug .row
                    span.pug s.
                  li.pug
                    span.pug The negative margin is why the examples below are outdented. It&apos;s so that content within grid columns is lined up with non-grid content.
                  li.pug
                    span.pug Grid columns are created by specifying the number of twelve available columns you wish to span. For example, three equal columns would use three 
                    code.pug .col-xs-4
                    span.pug .
                  li.pug
                    span.pug If more than 12 columns are placed within a single row, each group of extra columns will, as one unit, wrap onto a new line.
                  li.pug
                    span.pug Grid classes apply to devices with screen widths greater than or equal to the breakpoint sizes, and override grid classes targeted at smaller devices. Therefore, e.g.
                    span.pug applying any 
                    code.pug .col-md-*
                    span.pug  class to an element will not only affect its styling on medium devices but also on large devices if a 
                    code.pug .col-lg-*
                    span.pug  class
                    span.pug                                 is not present.
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Grid options
              .pug.panel-body
                p.pug
                  span.pug See how aspects of the Bootstrap grid system work across multiple devices with a handy table.
                .pug.table-responsive
                  table.pug.table.table-bordered.table-striped
                    thead.pug
                      tr.pug
                        th.pug
                        th.pug
                          span.pug Extra small devices
                          small.pug Phones (&lt;768px)
                        th.pug
                          span.pug Small devices
                          small.pug Tablets (&ge;768px)
                        th.pug
                          span.pug Medium devices
                          small.pug Desktops (&ge;992px)
                        th.pug
                          span.pug Large devices
                          small.pug Desktops (&ge;1200px)
                    tbody.pug
                      tr.pug
                        th.pug Grid behavior
                        td.pug Horizontal at all times
                        td.pug(colspan='3') Collapsed to start, horizontal above breakpoints
                      tr.pug
                        th.pug Max container width
                        td.pug None (auto)
                        td.pug 750px
                        td.pug 970px
                        td.pug 1170px
                      tr.pug
                        th.pug Class prefix
                        td.pug
                          code.pug .col-xs-
                        td.pug
                          code.pug .col-sm-
                        td.pug
                          code.pug .col-md-
                        td.pug
                          code.pug .col-lg-
                      tr.pug
                        th.pug # of columns
                        td.pug(colspan='4') 12
                      tr.pug
                        th.pug Max column width
                        td.pug.text-muted Auto
                        td.pug 60px
                        td.pug 78px
                        td.pug 95px
                      tr.pug
                        th.pug Gutter width
                        td.pug(colspan='4') 30px (15px on each side of a column)
                      tr.pug
                        th.pug Nestable
                        td.pug(colspan='4') Yes
                      tr.pug
                        th.pug Offsets
                        td.pug(colspan='4') Yes
                      tr.pug
                        th.pug Column ordering
                        td.pug(colspan='4') Yes
                p.pug
                  span.pug Grid classes apply to devices with screen widths greater than or equal to the breakpoint sizes, and override grid classes targeted at smaller devices. Therefore, applying any
                  code.pug .col-md-
                  span.pug  class to an element will not only affect its styling on medium devices but also on large devices if a
                  code.pug .col-lg-
                  span.pug  class is not present.
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Stacked-to-horizontal
              .pug.panel-body
                p.pug
                  span.pug Using a single set of
                  code.pug .col-md-*
                  span.pug  grid classes, you can create a default grid system that starts out stacked on mobile devices and tablet devices (the extra small to small range) before
                  span.pug                             becoming horizontal on desktop (medium) devices. Place grid columns in any
                  code.pug .row
                  span.pug .
                .pug.row.show-grid
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                  .pug.col-md-1 .col-md-1
                .pug.row.show-grid
                  .pug.col-md-8 .col-md-8
                  .pug.col-md-4 .col-md-4
                .pug.row.show-grid
                  .pug.col-md-4 .col-md-4
                  .pug.col-md-4 .col-md-4
                  .pug.col-md-4 .col-md-4
                .pug.row.show-grid
                  .pug.col-md-6 .col-md-6
                  .pug.col-md-6 .col-md-6
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Mobile and desktop
              .pug.panel-body
                p.pug
                  span.pug Don&apos;t want your columns to simply stack in smaller devices? Use the extra small and medium device grid classes by adding
                  code.pug .col-xs-*
                  code.pug .col-md-*
                  span.pug  to your columns. See the example below for a better idea of how it all works.
                .pug.row.show-grid
                  .pug.col-xs-12.col-md-8 .col-xs-12 .col-md-8
                  .pug.col-xs-6.col-md-4 .col-xs-6 .col-md-4
                .pug.row.show-grid
                  .pug.col-xs-6.col-md-4 .col-xs-6 .col-md-4
                  .pug.col-xs-6.col-md-4 .col-xs-6 .col-md-4
                  .pug.col-xs-6.col-md-4 .col-xs-6 .col-md-4
                .pug.row.show-grid
                  .pug.col-xs-6 .col-xs-6
                  .pug.col-xs-6 .col-xs-6
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Mobile, tablet, desktops
              .pug.panel-body
                p.pug
                  span.pug Build on the previous example by creating even more dynamic and powerful layouts with tablet
                  code.pug .col-sm-*
                  span.pug  classes.
                .pug.row.show-grid
                  .pug.col-xs-12.col-sm-6.col-md-8 .col-xs-12 .col-sm-6 .col-md-8
                  .pug.col-xs-6.col-md-4 .col-xs-6 .col-md-4
                .pug.row.show-grid
                  .pug.col-xs-6.col-sm-4 .col-xs-6 .col-sm-4
                  .pug.col-xs-6.col-sm-4 .col-xs-6 .col-sm-4
                  .pug.clearfix.visible-xs
                  .pug.col-xs-6.col-sm-4 .col-xs-6 .col-sm-4
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Responsive column resets
              .pug.panel-body
                p.pug
                  span.pug With the four tiers of grids available you&apos;re bound to run into issues where, at certain breakpoints, your columns don&apos;t clear quite right as one is taller than the other. To fix
                  span.pug that, use a combination of a
                  code.pug .clearfix
                  span.pug  and our 
                  a.pug(href='#responsive-utilities') responsive utility classes
                  span.pug .
                .pug.row.show-grid
                  .pug.col-xs-6.col-sm-3
                    span.pug .col-xs-6 .col-sm-3
                    br.pug
                    span.pug Resize your viewport or check it out on your phone for an example.
                  .pug.col-xs-6.col-sm-3 .col-xs-6 .col-sm-3
                  .pug.clearfix.visible-xs
                  .pug.col-xs-6.col-sm-3 .col-xs-6 .col-sm-3
                  .pug.col-xs-6.col-sm-3 .col-xs-6 .col-sm-3
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Offsetting columns
              .pug.panel-body
                p.pug
                  span.pug Move columns to the right using
                  code.pug .col-md-offset-*
                  span.pug  classes. These classes increase the left margin of a column by
                  code.pug *
                  span.pug  columns. For example,
                  code.pug .col-md-offset-4
                  span.pug  moves
                  code.pug .col-md-4
                  span.pug  over four columns.
                .pug.row.show-grid
                  .pug.col-md-4 .col-md-4
                  .pug.col-md-4.col-md-offset-4 .col-md-4 .col-md-offset-4
                .pug.row.show-grid
                  .pug.col-md-3.col-md-offset-3 .col-md-3 .col-md-offset-3
                  .pug.col-md-3.col-md-offset-3 .col-md-3 .col-md-offset-3
                .pug.row.show-grid
                  .pug.col-md-6.col-md-offset-3 .col-md-6 .col-md-offset-3
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Nesting columns
              .pug.panel-body
                p.pug
                  span.pug To nest your content with the default grid, add a new
                  code.pug .row
                  span.pug  and set of
                  code.pug .col-md-*
                  span.pug  columns within an existing
                  code.pug .col-md-*
                  span.pug  column. Nested rows should include a set of columns that add up to 12.
                .pug.row.show-grid
                  .pug.col-md-9
                    span.pug Level 1: .col-md-9
                    .pug.row.show-grid
                      .pug.col-md-6
                        span.pug Level 2: .col-md-6
                      .pug.col-md-6
                        span.pug Level 2: .col-md-6
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                         Column ordering
              .pug.panel-body
                p.pug
                  span.pug Easily change the order of our built-in grid columns with
                  code.pug .col-md-push-*
                  span.pug  and
                  code.pug .col-md-pull-*
                  span.pug  modifier classes.
                .pug.row.show-grid
                  .pug.col-md-9.col-md-push-3 .col-md-9 .col-md-push-3
                  .pug.col-md-3.col-md-pull-9 .col-md-3 .col-md-pull-9
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
  
  
  
  
