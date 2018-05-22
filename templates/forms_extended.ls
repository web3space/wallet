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
              li.pug
                a.pug(href='forms_elements.html') Forms elements
              li.pug.active
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
                  span.pug Forms extended 
            h2.pug.font-light.m-b-xs
              span.pug Forms extended
            small.pug Examples of various extended form controls.
      .pug.content
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-body
                h3.pug Forms extended
                p.pug
                  span.pug Extra from controls for select, date, multiselect, inline edit and spin. All form controls automatically receive some global styling.
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                     X-editable
              .pug.panel-body
                p.pug
                  strong.pug X-editable
                  span.pug  library allows you to create editable elements on your page. It includes both popup and inline modes. Please try out demo below to see how it works.
                .pug.text-center
                  i.pug.fa.fa-angle-down.fa-2x
                div.pug
                  h5.pug How to use
                  p.pug
                    span.pug Markup elements that should be editable. Usually it is 
                    code.pug &lt;A&gt;
                    span.pug  element with additional 
                    code.pug data-*
                    span.pug  attributes
                  table.pug#user.table.table-bordered.table-striped(style='clear: both')
                    tbody.pug
                      tr.pug
                        td.pug(width='35%') Simple text field
                        td.pug(width='65%')
                          a.pug#username.editable.editable-click(href='#' data-type='text' data-pk='1' data-title='Enter username') superuser
                      tr.pug
                        td.pug Empty text field, required
                        td.pug
                          a.pug#firstname.editable.editable-click.editable-empty(href='#' data-type='text' data-pk='1' data-placement='right' data-placeholder='Required' data-title='Enter your firstname') Empty
                      tr.pug
                        td.pug Select, local array, custom display
                        td.pug
                          a.pug#sex.editable.editable-click(href='#' data-type='select' data-pk='1' data-value='' data-title='Select sex' style='color: gray;') not selected
                      tr.pug
                        td.pug Combodate (date)
                        td.pug
                          a.pug#dob.editable.editable-click(href='#' data-type='combodate' data-value='1984-05-15' data-format='YYYY-MM-DD' data-viewformat='DD/MM/YYYY' data-template='D / MMM / YYYY' data-pk='1' data-title='Select Date of birth') 15/05/1984
                      tr.pug
                        td.pug Combodate (datetime)
                        td.pug
                          a.pug#event.editable.editable-click.editable-empty(href='#' data-type='combodate' data-template='D MMM YYYY  HH:mm' data-format='YYYY-MM-DD HH:mm' data-viewformat='MMM D, YYYY, HH:mm' data-pk='1' data-title='Setup event date and time') Empty
                      tr.pug
                        td.pug
                          span.pug Textarea, buttons below. Submit by 
                          i.pug ctrl+enter
                        td.pug
                          a.pug#comments.editable.editable-pre-wrapped.editable-click(href='#' data-type='textarea' data-pk='1' data-placeholder='Your comments here...' data-title='Enter comments') awesome user!
                      tr.pug
                        td.pug Checklist
                        td.pug
                          a.pug#fruits.editable.editable-click(href='#' data-type='checklist' data-value='2,3' data-title='Select fruits')
                            span.pug peach
                            br.pug
                            span.pug apple
                  p.pug.m-t-lg
                    span.pug All examples and documentation you can find at: 
                    a.pug(href='http://vitalets.github.io/x-editable/' target='_blank') http://vitalets.github.io/x-editable/
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                     Select2
              .pug.panel-body
                p.pug
                  strong.pug Select2
                  span.pug  Select2 gives you a customizable select box with support for searching, tagging, remote data sets, infinite scrolling, and many other highly used options.
                h5.pug Bootstrap theme with Select 2 - basic example
                select.pug.js-source-states(style='width: 100%')
                  optgroup.pug(label='Alaskan/Hawaiian Time Zone')
                    option.pug(value='AK') Alaska
                    option.pug(value='HI') Hawaii
                  optgroup.pug(label='Pacific Time Zone')
                    option.pug(value='CA') California
                    option.pug(value='NV') Nevada
                    option.pug(value='OR') Oregon
                    option.pug(value='WA') Washington
                  optgroup.pug(label='Mountain Time Zone')
                    option.pug(value='AZ') Arizona
                    option.pug(value='CO') Colorado
                    option.pug(value='ID') Idaho
                    option.pug(value='MT') Montana
                    option.pug(value='NE') Nebraska
                    option.pug(value='NM') New Mexico
                    option.pug(value='ND') North Dakota
                    option.pug(value='UT') Utah
                    option.pug(value='WY') Wyoming
                  optgroup.pug(label='Central Time Zone')
                    option.pug(value='AL') Alabama
                    option.pug(value='AR') Arkansas
                    option.pug(value='IL') Illinois
                    option.pug(value='IA') Iowa
                    option.pug(value='KS') Kansas
                    option.pug(value='KY') Kentucky
                    option.pug(value='LA') Louisiana
                    option.pug(value='MN') Minnesota
                    option.pug(value='MS') Mississippi
                    option.pug(value='MO') Missouri
                    option.pug(value='OK') Oklahoma
                    option.pug(value='SD') South Dakota
                    option.pug(value='TX') Texas
                    option.pug(value='TN') Tennessee
                    option.pug(value='WI') Wisconsin
                  optgroup.pug(label='Eastern Time Zone')
                    option.pug(value='CT') Connecticut
                    option.pug(value='DE') Delaware
                    option.pug(value='FL') Florida
                    option.pug(value='GA') Georgia
                    option.pug(value='IN') Indiana
                    option.pug(value='ME') Maine
                    option.pug(value='MD') Maryland
                    option.pug(value='MA') Massachusetts
                    option.pug(value='MI') Michigan
                    option.pug(value='NH') New Hampshire
                    option.pug(value='NJ') New Jersey
                    option.pug(value='NY') New York
                    option.pug(value='NC') North Carolina
                    option.pug(value='OH') Ohio
                    option.pug(value='PA') Pennsylvania
                    option.pug(value='RI') Rhode Island
                    option.pug(value='SC') South Carolina
                    option.pug(value='VT') Vermont
                    option.pug(value='VA') Virginia
                    option.pug(value='WV') West Virginia
                h5.pug.m-t-md Multi Selection example
                select.pug.js-source-states-2(multiple='multiple' style='width: 100%')
                  option.pug(value='Blue') Blue
                  option.pug(value='Red') Red
                  option.pug(value='Green') Green
                  option.pug(value='Maroon') Maroon
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                     Bootstrap TouchSpin
              .pug.panel-body
                p.pug
                  strong.pug TouchSpin
                  span.pug  A mobile and touch friendly input spinner component for Bootstrap 3. It supports the mousewheel and the up/down keys.
                div.pug
                  h5.pug Basci example
                  input.pug#demo1(type='text' name='demo1' value='50')
                .pug.m-t-md
                  h5.pug Vertical button alignment:
                  input.pug#demo2(type='text' name='demo2' value='50')
                .pug.m-t-md
                  h5.pug Example with postfix 
                  input.pug#demo3(type='text' name='demo3' value='50')
                .pug.m-t-md
                  h5.pug Basci with button postfix 
                  input.pug#demo4(type='text' name='demo4' value='50')
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                     Bootstrap clockpicker
              .pug.panel-body
                h5.pug ClockPicker
                p.pug A clock-style timepicker for Bootstrap.
                .pug.form-group
                  .pug.input-group.clockpicker(data-autoclose='true')
                    input.pug.form-control(type='text' value='09:30')
                    span.pug.input-group-addon
                      span.pug.fa.fa-clock-o
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                     Bootstrap datetimepicker
              .pug.panel-body
                h5.pug Date/time picker
                p.pug Date/time picker widget based on twitter bootstrap
                .pug.form-group
                  .pug#datetimepicker1.input-group.date
                    span.pug.input-group-addon
                      span.pug.fa.fa-calendar
                    input.pug.form-control(type='text')
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                     Bootstrap datepicker
              .pug.panel-body
                p.pug
                  span.pug Bootstrap-datepicker provides a flexible datepicker widget in the Twitter bootstrap style.
                  span.pug http://bootstrap-datepicker.readthedocs.org/en/latest/index.html
                .pug.row
                  .pug.col-lg-3
                    strong.pug
                      span.pug Inline version
                    .pug#datepicker(data-date='12/03/2012')
                    input.pug#my_hidden_input(type='hidden')
                  .pug.col-lg-9
                    .pug.row
                      .pug.col-md-6
                        h5.pug
                          span.pug Input
                        p.pug
                          span.pug The simplest case: focusing the input (clicking or tabbing into it) will show the picker.
                        input.pug#datapicker2.form-control(type='text' value='02-16-2012')
                        h5.pug Component
                        p.pug
                          span.pug Adding the date class to an input-group bootstrap component will allow the input-group-addon elements to trigger the picker.
                        .pug.input-group.date
                          input.pug.form-control(type='text')
                          span.pug.input-group-addon
                            i.pug.glyphicon.glyphicon-th
                      .pug.col-md-6
                        h5.pug
                          span.pug Range
                        p.pug
                          span.pug Using the input-daterange construct with multiple child inputs will instantiate one picker per input and link them together to allow selecting ranges.
                        .pug#datepicker.input-daterange.input-group
                          input.pug.input-sm.form-control(type='text' name='start')
                          span.pug.input-group-addon to
                          input.pug.input-sm.form-control(type='text' name='end')
                        h5.pug Options
                        p.pug
                          span.pug There are many avalible options to datapicker, check: 
                          a.pug(href='https://bootstrap-datepicker.readthedocs.org/en/latest/options.html' target='_blank') https://bootstrap-datepicker.readthedocs.org/en/latest/options.html
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                     Awesome bootstrap checkbox
              .pug.panel-body
                p.pug
                  span.pug Font Awesome Bootstrap Checkboxes &amp; Radios. Pure css way to make inputs look prettier.
                  span.pug https://github.com/flatlogic/awesome-bootstrap-checkbox
                .pug.row
                  .pug.col-md-4
                    fieldset.pug
                      legend.pug
                        span.pug Basic
                      p.pug
                        span.pug Supports bootstrap brand colors: 
                        code.pug .checkbox-primary
                        span.pug , 
                        code.pug .checkbox-info
                        span.pug  etc.
                      .pug.checkbox
                        input.pug#checkbox1(type='checkbox')
                        label.pug(for='checkbox1')
                          span.pug Default
                      .pug.checkbox.checkbox-primary
                        input.pug#checkbox2(type='checkbox' checked='')
                        label.pug(for='checkbox2')
                          span.pug Primary
                      .pug.checkbox.checkbox-success
                        input.pug#checkbox3(type='checkbox')
                        label.pug(for='checkbox3')
                          span.pug Success
                      .pug.checkbox.checkbox-info
                        input.pug#checkbox4(type='checkbox')
                        label.pug(for='checkbox4')
                          span.pug Info
                      .pug.checkbox.checkbox-warning
                        input.pug#checkbox5(type='checkbox' checked='')
                        label.pug(for='checkbox5')
                          span.pug Warning
                      .pug.checkbox.checkbox-danger
                        input.pug#checkbox6(type='checkbox' checked='')
                        label.pug(for='checkbox6')
                          span.pug Check me out
                      p.pug Checkboxes without label text
                      .pug.checkbox
                        input.pug#singleCheckbox1(type='checkbox' value='option1' aria-label='Single checkbox One')
                        label.pug
                      .pug.checkbox.checkbox-primary
                        input.pug#singleCheckbox2(type='checkbox' value='option2' checked='' aria-label='Single checkbox Two')
                        label.pug
                      p.pug Inline checkboxes
                      .pug.checkbox.checkbox-inline
                        input.pug#inlineCheckbox1(type='checkbox' value='option1')
                        label.pug(for='inlineCheckbox1')  Inline One 
                      .pug.checkbox.checkbox-success.checkbox-inline
                        input.pug#inlineCheckbox2(type='checkbox' value='option1' checked='')
                        label.pug(for='inlineCheckbox2')  Inline Two 
                      .pug.checkbox.checkbox-inline
                        input.pug#inlineCheckbox3(type='checkbox' value='option1')
                        label.pug(for='inlineCheckbox3')  Inline Three 
                  .pug.col-md-4
                    fieldset.pug
                      legend.pug
                        span.pug Circled
                      p.pug
                        code.pug .checkbox-circle
                        span.pug  for roundness.
                      .pug.checkbox.checkbox-circle
                        input.pug#checkbox7(type='checkbox')
                        label.pug(for='checkbox7')
                          span.pug Simply Rounded
                      .pug.checkbox.checkbox-info.checkbox-circle
                        input.pug#checkbox8(type='checkbox' checked='')
                        label.pug(for='checkbox8')
                          span.pug Me too
                  .pug.col-md-4
                    fieldset.pug
                      legend.pug
                        span.pug Radio
                      p.pug
                        span.pug Supports bootstrap brand colors: 
                        code.pug .radio-primary
                        span.pug , 
                        code.pug .radio-danger
                        span.pug  etc.
                      .pug.row
                        .pug.col-sm-6
                          .pug.radio
                            input.pug#radio1(type='radio' name='radio1' value='option1' checked='')
                            label.pug(for='radio1')
                              span.pug Small
                          .pug.radio
                            input.pug#radio2(type='radio' name='radio1' value='option2')
                            label.pug(for='radio2')
                              span.pug Big
                        .pug.col-sm-6
                          .pug.radio.radio-danger
                            input.pug#radio3(type='radio' name='radio2' value='option1')
                            label.pug(for='radio3')
                              span.pug Next
                          .pug.radio.radio-danger
                            input.pug#radio4(type='radio' name='radio2' value='option2' checked='')
                            label.pug(for='radio4')
                              span.pug One
                      p.pug Radios without label text
                      .pug.radio
                        input.pug#singleRadio1(type='radio' value='option1' name='radioSingle1' aria-label='Single radio One')
                        label.pug
                      .pug.radio.radio-success
                        input.pug#singleRadio2(type='radio' value='option2' name='radioSingle1' checked='' aria-label='Single radio Two')
                        label.pug
                      p.pug Inline radios
                      .pug.radio.radio-info.radio-inline
                        input.pug#inlineRadio1(type='radio' value='option1' name='radioInline' checked='')
                        label.pug(for='inlineRadio1')  Inline One 
                      .pug.radio.radio-inline
                        input.pug#inlineRadio2(type='radio' value='option2' name='radioInline')
                        label.pug(for='inlineRadio2')  Inline Two 
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
  
  
  
  
