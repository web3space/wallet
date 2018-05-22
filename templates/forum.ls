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
              li.pug.active
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
                  span.pug App views
                li.pug.active
                  span.pug Forum
            h2.pug.font-light.m-b-xs
              span.pug Forum
            small.pug Topics board for forum page.
      .pug.content
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-body
                .pug.text-muted.small.pull-right.text-right
                  span.pug Proin eu tempus tortor, vitae bibendum est. Nam placerat hendrerit rhoncus
                  br.pug
                  span.pug             Last modyfication by: 
                  span.pug.font-bold Mike Smith
                  span.pug             21.03.2015, 06:45 pm
                .pug.form-inline
                  span.pug Search topic: 
                  input.pug.form-control(type='text')
            .pug.hpanel.forum-box
              .pug.panel-heading
                span.pug.pull-right
                  i.pug.fa.fa-clock-o  
                  span.pug  Last modification: 10.12.2015, 10:22 am
                span.pug         General topics
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    span.pug.label.label-success.pull-left Special
                    a.pug(href='forum_details.html')
                      h4.pug  General Discussion
                    .pug.desc
                      span.pug Suspendisse egestas risus quis sem ultricies venenatis. Phasellus maximus tortor ut augue accumsan, sed posuere dolor tincidunt. In hac habitasse platea dictumst.
                  .pug.col-md-1.forum-info
                    span.pug.number  4780 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  150 
                    small.pug Posts
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    a.pug(href='forum_details.html')
                      h4.pug Introductions
                    .pug.desc
                      span.pug Mauris feugiat ante vitae euismod vestibulum. Suspendisse id ullamcorper odio, ut tristique ante. In scelerisque dolor in mi condimentum consequat.
                  .pug.col-md-1.forum-info
                    span.pug.number  260 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  149 
                    small.pug Posts
            .pug.hpanel.forum-box
              .pug.panel-heading
                span.pug.pull-right
                  i.pug.fa.fa-clock-o  
                  span.pug  Last modification: 11.10.2015, 08:10 am
                span.pug         Nunc eu luctus neque.
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    span.pug.label.label-warning.pull-left New
                    a.pug(href='forum_details.html')
                      h4.pug Morbi aliquam aliquam
                    .pug.desc
                      span.pug Morbi aliquam aliquam erat, id iaculis dui maximus vel. Curabitur dolor leo, tempus sit amet rutrum nec, luctus vel nisl. Nam sollicitudin quam non arcu faucibus, id mattis lacus interdum. Nam eleifend sodales ante sed pharetra. Integer cursus dapibus fringilla.
                  .pug.col-md-1.forum-info
                    span.pug.number  2451 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  100 
                    small.pug Posts
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    span.pug.label.label-warning.pull-left New
                    a.pug(href='forum_details.html')
                      h4.pug Quisque ultrices 
                    .pug.desc
                      span.pug Vestibulum scelerisque semper ligula ac consectetur. Proin tincidunt dui ac quam mollis eleifend.
                  .pug.col-md-1.forum-info
                    span.pug.number  5699 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  114 
                    small.pug Posts
            .pug.hpanel.forum-box
              .pug.panel-heading
                span.pug.pull-right
                  i.pug.fa.fa-clock-o  
                  span.pug  Last modification: 01.03.2015, 11:10 am
                span.pug         Aenean vitae
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    a.pug(href='forum_details.html')
                      h4.pug Pellentesque rhoncus 
                    .pug.desc
                      span.pug Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                  .pug.col-md-1.forum-info
                    span.pug.number  1200 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  457 
                    small.pug Posts
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    a.pug(href='forum_details.html')
                      h4.pug Sed iaculis vel libero
                    .pug.desc
                      span.pug Nam sollicitudin quam non arcu faucibus, id mattis lacus interdum. Nam eleifend sodales ante sed pharetra. Integer cursus dapibus fringilla. Maecenas volutpat dapibus vestibulum. Mauris ullamcorper nibh nec consectetur fermentum.
                  .pug.col-md-1.forum-info
                    span.pug.number  460 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  280 
                    small.pug Posts
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    span.pug.label.label-info.pull-left Latest
                    a.pug(href='forum_details.html')
                      h4.pug Mauris fermentum 
                    .pug.desc
                      span.pug Aenean ornare lacus quis blandit posuere. Nulla porta lectus facilisis justo pharetra, nec varius felis sollicitudin.
                  .pug.col-md-1.forum-info
                    span.pug.number  870 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  621 
                    small.pug Posts
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    a.pug(href='forum_details.html')
                      h4.pug Vivamus non lacus diam.
                    .pug.desc
                      span.pug Aenean quis nulla finibus, lobortis nunc sit amet, tempor ligula. Nunc pharetra, mauris aliquet mollis semper, libero eros mattis eros, sit amet semper elit libero in leo. In porttitor quam sit amet felis congue aliquam. Ut commodo aliquam consectetur. In hac habitasse platea dictumst.
                  .pug.col-md-1.forum-info
                    span.pug.number  278 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  455 
                    small.pug Posts
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    a.pug(href='forum_details.html')
                      h4.pug Donec lacus dolor
                    .pug.desc
                      span.pug Nullam ipsum diam, tempus at pretium id, posuere rutrum urna. Sed et eros vitae magna condimentum semper sed vel enim.
                  .pug.col-md-1.forum-info
                    span.pug.number  780 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  120 
                    small.pug Posts
              .pug.panel-body
                .pug.row
                  .pug.col-md-10.forum-heading
                    a.pug(href='forum_details.html')
                      h4.pug Fusce sagittis
                    .pug.desc
                      span.pug Duis sed enim velit. In auctor porta lorem, nec viverra risus faucibus at. Nulla sagittis eros id nibh vulputate, id malesuada nunc ultrices.
                  .pug.col-md-1.forum-info
                    span.pug.number  824 
                    small.pug Views
                  .pug.col-md-1.forum-info
                    span.pug.number  266 
                    small.pug Posts
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
  
  
  
  
