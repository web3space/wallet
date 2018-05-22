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
              li.pug.active
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
                  span.pug Components
            h2.pug.font-light.m-b-xs
              span.pug Components
            small.pug Tabs, according, collapse and other UI components.
      .pug.content
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading.hbuilt
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Accordion directive example
              .pug.panel-body
                .pug.text-center.m-b-md
                  h3.pug Accordion
                  small.pug
                    span.pug The accordion directive builds on top of the collapse directive to provide a list of items, with collapsible bodies that are collapsed or expanded by clicking on the item&apos;s header.
                  br.pug
                .pug#accordion.panel-group(role='tablist' aria-multiselectable='true')
                  .pug.panel.panel-default
                    .pug#headingOne.panel-heading(role='tab')
                      h4.pug.panel-title
                        a.pug(data-toggle='collapse' data-parent='#accordion' href='#collapseOne' aria-expanded='true' aria-controls='collapseOne')
                          span.pug Collapsible Group Item #1
                    .pug#collapseOne.panel-collapse.collapse(role='tabpanel' aria-labelledby='headingOne')
                      .pug.panel-body
                        span.pug A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.
                  .pug.panel.panel-default
                    .pug#headingTwo.panel-heading(role='tab')
                      h4.pug.panel-title
                        a.pug.collapsed(data-toggle='collapse' data-parent='#accordion' href='#collapseTwo' aria-expanded='false' aria-controls='collapseTwo')
                          span.pug Collapsible Group Item #2
                    .pug#collapseTwo.panel-collapse.collapse(role='tabpanel' aria-labelledby='headingTwo')
                      .pug.panel-body
                        span.pug A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.
                  .pug.panel.panel-default
                    .pug#headingThree.panel-heading(role='tab')
                      h4.pug.panel-title
                        a.pug.collapsed(data-toggle='collapse' data-parent='#accordion' href='#collapseThree' aria-expanded='false' aria-controls='collapseThree')
                          span.pug Collapsible Group Item #3
                    .pug#collapseThree.panel-collapse.collapse(role='tabpanel' aria-labelledby='headingThree')
                      .pug.panel-body
                        span.pug A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.
                  .pug.panel.panel-default
                    .pug#headingThree.panel-heading(role='tab')
                      h4.pug.panel-title
                        a.pug.collapsed(data-toggle='collapse' data-parent='#accordion' href='#collapseFour' aria-expanded='false' aria-controls='collapseFour')
                          span.pug Collapsible Group Item #4
                    .pug#collapseFour.panel-collapse.collapse(role='tabpanel' aria-labelledby='headingThree')
                      .pug.panel-body
                        span.pug A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.
                  .pug.panel.panel-default
                    .pug#headingThree.panel-heading(role='tab')
                      h4.pug.panel-title
                        a.pug.collapsed(data-toggle='collapse' data-parent='#accordion' href='#collapseFive' aria-expanded='false' aria-controls='collapseFive')
                          span.pug Collapsible Group Item #5
                    .pug#collapseFive.panel-collapse.collapse(role='tabpanel' aria-labelledby='headingThree')
                      .pug.panel-body
                        span.pug A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading.hbuilt
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Collapse  example
              .pug.panel-body
                .pug.text-center.m-b-md
                  h3.pug Collapse box
                  small.pug
                    span.pug AngularJS version of Bootstrap&apos;s collapse plugin. Provides a simple way to hide and show an element with a css transition
                  br.pug
                  button.pug.btn.btn-default.btn-sm(type='button' data-toggle='collapse' data-target='#collapseExample' aria-expanded='false' aria-controls='collapseExample')
                    span.pug Toggle collapse
                .pug#collapseExample.collapse.in
                  .pug.well.well-lg
                    h5.pug.font-bold Lorem ipsum
                    span.pug                         A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.
                    br.pug
                    br.pug
                    span.pug                         I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. Thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks.
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading.hbuilt
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Tooltips
              .pug.panel-body
                .pug.text-center.m-b-md
                  h3.pug Tooltips
                  small.pug
                    span.pug A lightweight, extensible directive for fancy tooltip creation. The tooltip directive supports multiple placements, optional transition animation, and more.
                .pug.tooltip-demo.text-center
                  button.pug.btn.btn-sm.btn-default(type='button' data-toggle='tooltip' data-placement='left' title='Tooltip on left') Tooltip on left
                  button.pug.btn.btn-sm.btn-default(type='button' data-toggle='tooltip' data-placement='top' title='Tooltip on top') Tooltip on top
                  button.pug.btn.btn-sm.btn-default(type='button' data-toggle='tooltip' data-placement='bottom' title='Tooltip on bottom') Tooltip on bottom
                  button.pug.btn.btn-sm.btn-default(type='button' data-toggle='tooltip' data-placement='right' title='Tooltip on right') Tooltip on right
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading.hbuilt
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Popover
              .pug.panel-body
                .pug.text-center.m-b-md
                  h3.pug Popover
                  small.pug
                    span.pug A lightweight, extensible directive for fancy popover creation. The popover directive supports multiple placements, optional transition animation, and more.
                .pug.m.float-e-margins.text-center
                  .pug.tooltip-demo
                    button.pug.btn.btn-sm.btn-default(type='button' data-container='body' data-toggle='popover' data-placement='left' data-title='Title example' data-content='Vivamus sagittis lacus vel augue laoreet rutrum faucibus.')
                      span.pug Popover on left
                    button.pug.btn.btn-sm.btn-default(type='button' data-container='body' data-toggle='popover' data-placement='top' data-title='Title example' data-content='Vivamus sagittis lacus vel augue laoreet rutrum faucibus.')
                      span.pug Popover on top
                    br.pug
                    button.pug.btn.btn-sm.btn-default(type='button' data-container='body' data-toggle='popover' data-placement='bottom' data-title='Title example' data-content='Vivamus sagittis lacus vel augue laoreet rutrum faucibus.')
                      span.pug Popover on bottom
                    button.pug.btn.btn-sm.btn-default(type='button' data-container='body' data-toggle='popover' data-placement='right' data-title='Title example' data-content='Vivamus sagittis lacus vel augue laoreet rutrum faucibus.')
                      span.pug Popover on right
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              ul.pug.nav.nav-tabs
                li.pug.active
                  a.pug(data-toggle='tab' href='#tab-1')  This is tab
                li.pug
                  a.pug(data-toggle='tab' href='#tab-2') This is second tab
              .pug.tab-content
                .pug#tab-1.tab-pane.active
                  .pug.panel-body
                    strong.pug Lorem ipsum dolor sit amet, consectetuer adipiscing
                    p.pug
                      span.pug A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of
                      span.pug existence in this spot, which was created for the bliss of souls like mine.
                    p.pug
                      span.pug I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at
                      span.pug the present moment; and yet I feel that I never was a greater artist than now. When.
                .pug#tab-2.tab-pane
                  .pug.panel-body
                    strong.pug Donec quam felis
                    p.pug
                      span.pug Thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects
                      span.pug and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath
                    p.pug
                      span.pug I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite
                      span.pug sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet.
          .pug.col-lg-6
            .pug.hpanel
              ul.pug.nav.nav-tabs
                li.pug.active
                  a.pug(data-toggle='tab' href='#tab-3')
                    i.pug.fa.fa-laptop
                li.pug
                  a.pug(data-toggle='tab' href='#tab-4')
                    i.pug.fa.fa-desktop
                li.pug
                  a.pug(data-toggle='tab' href='#tab-5')
                    i.pug.fa.fa-database
              .pug.tab-content
                .pug#tab-3.tab-pane.active
                  .pug.panel-body
                    strong.pug Lorem ipsum dolor sit amet, consectetuer adipiscing
                    p.pug
                      span.pug A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of
                      span.pug existence in this spot, which was created for the bliss of souls like mine.
                    p.pug
                      span.pug I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at
                      span.pug the present moment; and yet I feel that I never was a greater artist than now. When.
                .pug#tab-4.tab-pane
                  .pug.panel-body
                    strong.pug Donec quam felis
                    p.pug
                      span.pug Thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects
                      span.pug and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath
                    p.pug
                      span.pug I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite
                      span.pug sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet.
                .pug#tab-5.tab-pane
                  .pug.panel-body
                    strong.pug Donec quam felis
                    p.pug
                      span.pug Thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects
                      span.pug and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath
                    p.pug
                      span.pug I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite
                      span.pug sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet.
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.tabs-left
                ul.pug.nav.nav-tabs
                  li.pug.active
                    a.pug(data-toggle='tab' href='#tab-6')  This is tab
                  li.pug
                    a.pug(data-toggle='tab' href='#tab-7') This is second tab
                .pug.tab-content
                  .pug#tab-6.tab-pane.active
                    .pug.panel-body
                      strong.pug Lorem ipsum dolor sit amet, consectetuer adipiscing
                      p.pug
                        span.pug A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of
                        span.pug existence in this spot, which was created for the bliss of souls like mine.
                      p.pug
                        span.pug I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at
                        span.pug the present moment; and yet I feel that I never was a greater artist than now. When.
                  .pug#tab-7.tab-pane
                    .pug.panel-body
                      strong.pug Donec quam felis
                      p.pug
                        span.pug Thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects
                        span.pug and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath
                      p.pug
                        span.pug I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite
                        span.pug sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet.
          .pug.col-lg-6
            .pug.hpanel
              .pug.tabs-right
                ul.pug.nav.nav-tabs
                  li.pug.active
                    a.pug(data-toggle='tab' href='#tab-8')  This is tab
                  li.pug
                    a.pug(data-toggle='tab' href='#tab-9') This is second tab
                .pug.tab-content
                  .pug#tab-8.tab-pane.active
                    .pug.panel-body
                      strong.pug Lorem ipsum dolor sit amet, consectetuer adipiscing
                      p.pug
                        span.pug A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of
                        span.pug existence in this spot, which was created for the bliss of souls like mine.
                      p.pug
                        span.pug I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at
                        span.pug the present moment; and yet I feel that I never was a greater artist than now. When.
                  .pug#tab-9.tab-pane
                    .pug.panel-body
                      strong.pug Donec quam felis
                      p.pug
                        span.pug Thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects
                        span.pug and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath
                      p.pug
                        span.pug I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite
                        span.pug sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet.
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading.hbuilt
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Progressbar
              .pug.panel-body
                .pug.text-center.m-b-md
                  h3.pug Progressbar
                  small.pug
                    span.pug A progress bar directive that is focused on providing feedback on the progress of a workflow or action.
                h5.pug Basic ProgressBars
                small.pug Light version of progress bar
                .pug.m
                  .pug.progress.m-t-xs
                    .pug.progress-bar.progress-bar-warning(style='width: 15%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='15' role='progressbar')
                      span.pug 15%
                  .pug.progress.m-t-xs
                    .pug.progress-bar.progress-bar-success(style='width: 30%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='30' role='progressbar')
                      span.pug 30%
                  .pug.progress.m-t-xs
                    .pug.progress-bar.progress-bar-info(style='width: 45%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='45' role='progressbar')
                      span.pug 45%
                  .pug.progress.m-t-xs
                    .pug.progress-bar.progress-bar-danger(style='width: 60%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='60' role='progressbar')
                      span.pug 60%
                h5.pug Striped Progressbars
                small.pug
                  span.pug Add 
                  code.pug .full
                  span.pug  class to get full background. Add 
                  code.pug .progress-striped
                  span.pug  to get striped version.
                .pug.m
                  .pug.progress.m-t-xs.full.progress-striped
                    .pug.progress-bar.progress-bar-warning(style='width: 75%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='75' role='progressbar')
                      span.pug 75%
                h5.pug Active Progressbars
                small.pug
                  span.pug Add 
                  code.pug .active
                  span.pug  to get active striped.
                .pug.m
                  .pug.progress.m-t-xs.full.progress-striped.active
                    .pug.progress-bar.progress-bar-success(style='width: 90%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='90' role='progressbar')
                      span.pug 90%
                h5.pug Mini version
                small.pug
                  span.pug Add 
                  code.pug .progress-small
                  span.pug  class to get mini version
                .pug.m
                  .pug.progress.m-t-xs.full.progress-small
                    .pug.progress-bar.progress-bar-warning(style='width: 20%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='60' role='progressbar')
                  .pug.progress.m-t-xs.full.progress-small
                    .pug.progress-bar.progress-bar-success(style='width: 50%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='50' role='progressbar')
                  .pug.progress.m-t-xs.full.progress-small
                    .pug.progress-bar.progress-bar-info(style='width: 75%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='75' role='progressbar')
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading.hbuilt
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Dropdown
              .pug.panel-body.h-200
                .pug.text-center.m-b-md
                  h3.pug Dropdown
                  small.pug
                    span.pug Dropdown is a simple directive which will toggle a dropdown menu on click or programmatically.
                .pug.row
                  .pug.dropdown.dropdown-example
                    ul.pug.dropdown-menu(role='menu')
                      li.pug
                        a.pug(href='') Action
                      li.pug
                        a.pug(href='') Another action
                      li.pug
                        a.pug(href='') Something else here
                      li.pug.divider
                      li.pug
                        a.pug(href='') Separated link
                  .pug.dropdown.dropdown-example
                    ul.pug.dropdown-menu(role='menu')
                      li.pug
                        a.pug(href='')
                          strong.pug Action
                      li.pug
                        a.pug(href='')
                          span.pug.text-success Another action
                      li.pug
                        a.pug(href='') Something else here
                      li.pug.divider
                      li.pug
                        a.pug(href='')
                          span.pug.text-muted Separated link
                  .pug.dropdown.dropdown-example
                    ul.pug.dropdown-menu(role='menu')
                      li.pug
                        a.pug(href='')
                          i.pug.fa.fa-pencil  
                          span.pug  Edit
                      li.pug
                        a.pug(href='')
                          i.pug.fa.fa-copy  
                          span.pug  Copy
                      li.pug
                        a.pug(href='')
                          i.pug.fa.fa-paste  
                          span.pug  paste
                      li.pug.divider
                      li.pug
                        a.pug(href='')
                          i.pug.fa.fa-trash  
                          span.pug  Remove
            .pug.hpanel
              .pug.panel-heading.hbuilt
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Rating
              .pug.panel-body.text-center
                .pug.m-b-xs
                  h3.pug Rating
                  small.pug Rating directive that will take care of visualising a star rating bar.
                input.pug#input-1.rating(data-min='0' data-max='5' data-step='1' data-size='xs' data-show-clear='false')
                p.pug.m-t-xs
                  span.pug More examples and full documentation you can find at: http://plugins.krajee.com/star-rating/demo
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
  
  
  
  
