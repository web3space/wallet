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
              li.pug.active
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
                  span.pug Typography
            h2.pug.font-light.m-b-xs
              span.pug Typography
            small.pug The basic elements of typography
      .pug.content
        .pug.row
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Headings
              .pug.panel-body
                div.pug
                  h1.pug
                    span.pug Heading 1
                    small.pug Sub-heading
                  h2.pug
                    span.pug Heading 2
                    small.pug Sub-heading
                  h3.pug
                    span.pug Heading 3
                    small.pug Sub-heading
                  h4.pug
                    span.pug Heading 4
                    small.pug Sub-heading
                  h5.pug
                    span.pug Heading 5
                    small.pug Sub-heading
                  h6.pug
                    span.pug Heading 6
                    small.pug Sub-heading
          .pug.col-lg-8
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Paragraph text
              .pug.panel-body
                .pug.row
                  .pug.col-lg-6.border-right
                    p.pug
                      span.pug Lorem Ipsum is simply dummy text of the
                      strong.pug printing and typesetting
                      span.pug  industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since the
                      abbr.pug(title='' data-original-title='Sample abbreviation') scrambled it to make
                      span.pug  a type specimen book.
                  .pug.col-lg-6
                    p.pug
                      span.pug It has survived not only
                      em.pug five centuries
                      span.pug , but also the leap into electronic typesetting,
                      span.pug                             remaining essentially unchanged. It was 1960s with the release of Letraset sheets containing
                      code.pug .loremIpsumClass
                .pug.row.m-t-md
                  .pug.col-lg-3.border-right
                    p.pug
                      span.pug Lorem Ipsum is simply dummy text of the
                      strong.pug printing and typesetting
                      span.pug  industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since.
                  .pug.col-lg-3.border-right
                    p.pug
                      span.pug It has survived not only
                      em.pug five centuries
                      span.pug , but also the leap into electronic typesetting,
                      span.pug                             remaining
                      code.pug essentially
                      span.pug  unchanged. .loremIpsumClass, and more recently with
                  .pug.col-lg-3.border-right
                    p.pug
                      span.pug Lorem Ipsum is simply dummy text of the
                      em.pug printing and typesetting
                      span.pug  industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since.
                  .pug.col-lg-3
                    p.pug
                      span.pug It has survived not only
                      em.pug five centuries
                      span.pug , typesetting,
                      span.pug                             remaining essentially unchanged. the release of Letraset sheets containing loremIpsumClass, and more recently with
        .pug.row
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Unstyled list
              .pug.panel-body
                ul.pug.unstyled
                  li.pug But I must explain
                  li.pug To you how all this mistaken
                  li.pug Idea of denouncing pleasure
                  li.pug Great explorer of the truth
                  li.pug
                    span.pug To take a trivial example
                    ul.pug
                      li.pug Or one who avoids a pain
                      li.pug Indignation and dislike men
                      li.pug Nor again is there anyone
                      li.pug But who has any right
                  li.pug That they cannot foresee
                  li.pug Who avoids a pain that produceg
                  li.pug Consequences that are extremely
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Unordered list
              .pug.panel-body
                ul.pug
                  li.pug But I must explain
                  li.pug To you how all this mistaken
                  li.pug Idea of denouncing pleasure
                  li.pug Great explorer of the truth
                  li.pug
                    span.pug To take a trivial example
                    ul.pug
                      li.pug Or one who avoids a pain
                      li.pug Indignation and dislike men
                      li.pug Nor again is there anyone
                      li.pug But who has any right
                  li.pug That they cannot foresee
                  li.pug Who avoids a pain that produceg
                  li.pug Consequences that are extremely
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Ordered list
              .pug.panel-body
                ol.pug
                  li.pug But I must explain
                  li.pug To you how all this mistaken
                  li.pug Idea of denouncing pleasure
                  li.pug Great explorer of the truth
                  li.pug
                    span.pug To take a trivial example
                    ol.pug
                      li.pug Or one who avoids a pain
                      li.pug Indignation and dislike men
                      li.pug Nor again is there anyone
                      li.pug But who has any right
                  li.pug That they cannot foresee
                  li.pug Who avoids a pain that produceg
                  li.pug Consequences that are extremely
        .pug.row
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Emphasis Classes
              .pug.panel-body
                p.pug.text-muted This is an example of muted text.
                p.pug.text-primary This is an example of primary text.
                p.pug.text-success This is an example of success text.
                p.pug.text-info This is an example of info text.
                p.pug.text-warning This is an example of warning text.
                p.pug.text-danger This is an example of danger text.
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Blockquotes
              .pug.panel-body
                blockquote.pug
                  p.pug
                    span.pug Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a printing and typesetting ante.
                  small.pug
                    strong.pug Author name
                    span.pug  in
                    cite.pug(title='' data-original-title='') Book name
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Alignment
              .pug.panel-body
                p.pug.text-left
                  strong.pug LEFT
                  br.pug
                  span.pug Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                p.pug.text-center
                  strong.pug CENTER
                  br.pug
                  span.pug It is a long established fact that a reader will be distracted by the readable content.
                p.pug.text-right
                  strong.pug RIGHT
                  br.pug
                  span.pug There are many variations of passages of Lorem Ipsum available, but the majority have.
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Description
              .pug.panel-body
                dl.pug
                  dt.pug Description lists
                  dd.pug A description list is perfect for defining terms.
                  dt.pug Euismod
                  dd.pug Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.
                  dd.pug Donec id elit non mi porta gravida at eget metus.
                  dt.pug Malesuada porta
                  dd.pug Etiam porta sem malesuada magna mollis euismod.
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Horizontal description
              .pug.panel-body
                dl.pug.dl-horizontal
                  dt.pug Description lists
                  dd.pug A description list is perfect for defining terms.
                  dt.pug Euismod
                  dd.pug Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.
                  dd.pug Donec id elit non mi porta gravida at eget metus.
                  dt.pug Malesuada porta
                  dd.pug Etiam porta sem malesuada magna mollis euismod.
                  dt.pug Felis euismod semper eget lacinia
                  dd.pug
                    span.pug Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
        .pug.row
          .pug.col-lg-4
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Grouped Lists
              .pug.panel-body.no-padding
                .pug.list-group
                  a.pug.list-group-item.active(href='')
                    h5.pug.list-group-item-heading A wonderful serenity has taken
                    p.pug.list-group-item-text
                      span.pug I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.
                  a.pug.list-group-item(href='')
                    h5.pug.list-group-item-heading Why painful the sixteen how minuter
                    p.pug.list-group-item-text
                      span.pug I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed
                  a.pug.list-group-item(href='')
                    h5.pug.list-group-item-heading Barton waited twenty always repair
                    p.pug.list-group-item-text
                      span.pug I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun
          .pug.col-lg-8
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Special css class
              .pug.panel-body
                table.pug.table
                  thead.pug
                    tr.pug
                      td.pug
                        span.pug Example text
                      td.pug
                        span.pug Class name
                  tbody.pug
                    tr.pug
                      td.pug
                        span.pug.font-light Light
                      td.pug
                        code.pug .font-light
                    tr.pug
                      td.pug
                        span.pug.font-normal Normal
                      td.pug
                        code.pug .font-normal
                    tr.pug
                      td.pug
                        span.pug.font-bold Bold
                      td.pug
                        code.pug .font-bold
                    tr.pug
                      td.pug
                        span.pug.font-extra-bold Extra bold
                      td.pug
                        code.pug .font-extra-bold
                    tr.pug
                      td.pug
                        span.pug.font-uppercase Uppercase
                      td.pug
                        code.pug .font-uppercase
                    tr.pug
                      td.pug
                        span.pug.font-trans Transparent
                      td.pug
                        code.pug .font-trans
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
  
  
  
  
