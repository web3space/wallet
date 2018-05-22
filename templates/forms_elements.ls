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
          li.pug.active
            a.pug(href='#')
              span.pug.nav-label Forms
              span.pug.fa.arrow
            ul.pug.nav.nav-second-level
              li.pug.active
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
      .pug.small-header
        .pug.hpanel
          .pug.panel-body
            .pug#hbreadcrumb.pull-right
              ol.pug.hbreadcrumb.breadcrumb
                li.pug
                  a.pug(href='index.html') Dashboard
                li.pug
                  span.pug Forms
                li.pug.active
                  span.pug Forms elements 
            h2.pug.font-light.m-b-xs
              span.pug Forms elements
            small.pug Examples of various form controls.
      .pug.content
        div.pug
          .pug.row
            .pug.col-lg-12
              .pug.hpanel
                .pug.panel-body
                  h3.pug Forms
                  p.pug
                    span.pug Individual form controls automatically receive some global styling. All textual 
                    code.pug &lt;input&gt;
                    span.pug , 
                    code.pug &lt;textarea&gt;
                    span.pug , and 
                    code.pug &lt;select&gt;
                    span.pug  elements with 
                    code.pug .form-control
                    span.pug  are set to 
                    code.pug width: 100%;
                    span.pug  by default. Wrap labels and controls in 
                    code.pug .form-group
                    span.pug  for optimum spacing.
          .pug.row
            .pug.col-lg-5
              .pug.hpanel
                .pug.panel-heading
                  .pug.panel-tools
                    a.pug.showhide
                      i.pug.fa.fa-chevron-up
                    a.pug.closebox
                      i.pug.fa.fa-times
                  span.pug                     Basic elements
                .pug.panel-body
                  form.pug.form-horizontal(method='get')
                    .pug.form-group
                      label.pug.col-sm-2.control-label Normal
                      .pug.col-sm-10
                        input.pug.form-control(type='text')
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Help text
                      .pug.col-sm-10
                        input.pug.form-control(type='text')
                        span.pug.help-block.m-b-none A block of help text that breaks onto a new line and may extend beyond one line.
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Password
                      .pug.col-sm-10
                        input.pug.form-control(type='password' name='password')
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Placeholder
                      .pug.col-sm-10
                        input.pug.form-control(type='text' placeholder='placeholder')
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-lg-2.control-label Disabled
                      .pug.col-lg-10
                        input.pug.form-control(type='text' disabled='' placeholder='Disabled input here...')
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-lg-2.control-label Static control
                      .pug.col-lg-10
                        p.pug.form-control-static email@example.com
                    .pug.hr-line-dashed
                    .pug.form-group
                      .pug.col-sm-8.col-sm-offset-2
                        button.pug.btn.btn-default(type='submit') Cancel
                        button.pug.btn.btn-primary(type='submit') Save changes
            .pug.col-lg-7
              .pug.hpanel
                .pug.panel-heading
                  .pug.panel-tools
                    a.pug.showhide
                      i.pug.fa.fa-chevron-up
                    a.pug.closebox
                      i.pug.fa.fa-times
                  span.pug             Checkbox and radios
                .pug.panel-body
                  form.pug.form-horizontal(method='get')
                    .pug.form-group
                      label.pug.col-sm-2.control-label
                        span.pug Checkboxes and radios 
                        br.pug
                      .pug.col-sm-10
                        .pug.checkbox
                          label.pug
                            input.pug(type='checkbox' value='')
                            span.pug  Option one is this and that&mdash;be sure to include why it&apos;s great
                        .pug.radio
                          label.pug
                            input.pug#optionsRadios1(type='radio' checked='' value='option1' name='optionsRadios')
                            span.pug  Option one is this and that&mdash;be sure to
                            span.pug                             include why it&apos;s great
                        .pug.radio
                          label.pug
                            input.pug#optionsRadios2(type='radio' value='option2' name='optionsRadios')
                            span.pug  Option two can be something else and selecting it will
                            span.pug                             deselect option one
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Inline checkboxes
                      .pug.col-sm-10
                        label.pug.checkbox-inline
                          input.pug#inlineCheckbox1(type='checkbox' value='option1')
                          span.pug  a
                        label.pug.checkbox-inline
                          input.pug#inlineCheckbox2(type='checkbox' value='option2')
                          span.pug  b
                        label.pug.checkbox-inline
                          input.pug#inlineCheckbox3(type='checkbox' value='option3')
                          span.pug  c
                    .pug.form-group
                      label.pug.col-sm-2.control-label
                        span.pug Checkboxes &amp; radios 
                        br.pug
                        small.pug.text-navy Custom elements
                      .pug.col-sm-10
                        div.pug
                          label.pug
                            input.pug.i-checks(type='checkbox')
                            span.pug  Option one
                        div.pug
                          label.pug
                            input.pug.i-checks(type='checkbox' checked='')
                            span.pug  Option two checked
                        div.pug
                          label.pug
                            input.pug.i-checks(type='checkbox' checked='' disabled='')
                            span.pug  Option three checked and disabled
                        div.pug
                          label.pug
                            input.pug.i-checks(type='checkbox' disabled='')
                            span.pug  Option four disabled
                        div.pug
                          label.pug
                            input.pug.i-checks(type='radio')
                            span.pug  Option one
                        div.pug
                          label.pug
                            input.pug.i-checks(type='radio' checked='')
                            span.pug  Option two checked
                        div.pug
                          label.pug
                            input.pug.i-checks(type='radio' disabled='')
                            span.pug  Option four disabled
                        div.pug
                          label.pug
                            input.pug.i-checks(type='radio' checked='' disabled='')
                            span.pug  Option three checked and disabled
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Inline checkboxes
                      .pug.col-sm-10
                        label.pug
                          input.pug.i-checks(type='checkbox' checked='')
                          span.pug  a
                        label.pug
                          input.pug.i-checks(type='checkbox')
                          span.pug  b
                        label.pug
                          input.pug.i-checks(type='checkbox')
                          span.pug  c
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Select
                      .pug.col-sm-10
                        select.pug.form-control.m-b(name='account')
                          option.pug option 1
                          option.pug option 2
                          option.pug option 3
                          option.pug option 4
                    .pug.hr-line-dashed
                    .pug.form-group
                      .pug.col-sm-8.col-sm-offset-2
                        button.pug.btn.btn-default(type='submit') Cancel
                        button.pug.btn.btn-primary(type='submit') Save changes
          .pug.row
            .pug.col-lg-12
              .pug.hpanel
                .pug.panel-heading
                  .pug.panel-tools
                    a.pug.showhide
                      i.pug.fa.fa-chevron-up
                    a.pug.closebox
                      i.pug.fa.fa-times
                  span.pug             Form elements options
                .pug.panel-body
                  form.pug.form-horizontal(method='get')
                    .pug.form-group
                      label.pug.col-sm-2.control-label Control sizing
                      .pug.col-sm-10
                        input.pug.form-control.input-lg.m-b(type='text' placeholder='.input-lg')
                        input.pug.form-control.m-b(type='text' placeholder='Default input')
                        input.pug.form-control.input-sm(type='text' placeholder='.input-sm')
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Column sizing
                      .pug.col-sm-10
                        .pug.row
                          .pug.col-md-2
                            input.pug.form-control(type='text' placeholder='.col-md-2')
                          .pug.col-md-3
                            input.pug.form-control(type='text' placeholder='.col-md-3')
                          .pug.col-md-4
                            input.pug.form-control(type='text' placeholder='.col-md-4')
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Input groups
                      .pug.col-sm-10
                        .pug.input-group.m-b
                          span.pug.input-group-addon @
                          input.pug.form-control(type='text' placeholder='Username')
                        .pug.input-group.m-b
                          input.pug.form-control(type='text')
                          span.pug.input-group-addon .00
                        .pug.input-group.m-b
                          span.pug.input-group-addon $
                          input.pug.form-control(type='text')
                          span.pug.input-group-addon .00
                        .pug.input-group.m-b
                          span.pug.input-group-addon
                            input.pug(type='checkbox')
                          input.pug.form-control(type='text')
                        .pug.input-group
                          span.pug.input-group-addon
                            input.pug(type='radio')
                          input.pug.form-control(type='text')
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Button addons
                      .pug.col-sm-10
                        .pug.input-group.m-b
                          span.pug.input-group-btn
                            button.pug.btn.btn-primary(type='button') Go!
                          input.pug.form-control(type='text')
                        .pug.input-group
                          input.pug.form-control(type='text')
                          span.pug.input-group-btn
                            button.pug.btn.btn-primary(type='button')
                              span.pug Go!
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label With dropdowns
                      .pug.col-sm-10
                        .pug.input-group.m-b
                          .pug.input-group-btn
                            button.pug.btn.btn-default.dropdown-toggle(data-toggle='dropdown' type='button')
                              span.pug Action 
                              span.pug.caret
                            ul.pug.dropdown-menu
                              li.pug
                                a.pug(href='') Action
                              li.pug
                                a.pug(href='') Another action
                              li.pug
                                a.pug(href='') Something else here
                              li.pug.divider
                              li.pug
                                a.pug(href='') Separated link
                          input.pug.form-control(type='text')
                        .pug.input-group
                          input.pug.form-control(type='text')
                          .pug.input-group-btn
                            button.pug.btn.btn-default.dropdown-toggle(data-toggle='dropdown' type='button')
                              span.pug Action 
                              span.pug.caret
                            ul.pug.dropdown-menu.pull-right
                              li.pug
                                a.pug(href='') Action
                              li.pug
                                a.pug(href='') Another action
                              li.pug
                                a.pug(href='') Something else here
                              li.pug.divider
                              li.pug
                                a.pug(href='') Separated link
                    .pug.hr-line-dashed
                    .pug.form-group
                      label.pug.col-sm-2.control-label Segmented
                      .pug.col-sm-10
                        .pug.input-group.m-b
                          .pug.input-group-btn
                            button.pug.btn.btn-default(tabindex='-1' type='button') Action
                            button.pug.btn.btn-default.dropdown-toggle(data-toggle='dropdown' type='button')
                              span.pug.caret
                            ul.pug.dropdown-menu
                              li.pug
                                a.pug(href='') Action
                              li.pug
                                a.pug(href='') Another action
                              li.pug
                                a.pug(href='') Something else here
                              li.pug.divider
                              li.pug
                                a.pug(href='') Separated link
                          input.pug.form-control(type='text')
                        .pug.input-group
                          input.pug.form-control(type='text')
                          .pug.input-group-btn
                            button.pug.btn.btn-default(tabindex='-1' type='button') Action
                            button.pug.btn.btn-default.dropdown-toggle(data-toggle='dropdown' type='button')
                              span.pug.caret
                            ul.pug.dropdown-menu.pull-right
                              li.pug
                                a.pug(href='') Action
                              li.pug
                                a.pug(href='') Another action
                              li.pug
                                a.pug(href='') Something else here
                              li.pug.divider
                              li.pug
                                a.pug(href='') Separated link
                    .pug.hr-line-dashed
                    .pug.form-group
                      .pug.col-sm-8.col-sm-offset-2
                        button.pug.btn.btn-default(type='submit') Cancel
                        button.pug.btn.btn-primary(type='submit') Save changes
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
  
  
  
  
