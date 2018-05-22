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
              li.pug.active
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
                  span.pug Modals 
            h2.pug.font-light.m-b-xs
              span.pug Modals
            small.pug Modal window examples
      .pug.content
        .pug.row
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Homer modal windows
              .pug.panel-body
                p.pug
                  span.pug Modals are streamlined, but flexible, dialog prompts with the minimum required functionality and smart defaults.
                p.pug
                  span.pug Modal contains title, content and footer
                .pug.text-center
                  button.pug.btn.btn-success(type='button' data-toggle='modal' data-target='#myModal')
                    span.pug Launch demo modal
                  .pug#myModal.modal.fade(tabindex='-1' role='dialog' aria-hidden='true')
                    .pug.modal-dialog
                      .pug.modal-content
                        .pug.color-line
                        .pug.modal-header.text-center
                          h4.pug.modal-title Modal title
                          small.pug.font-bold Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        .pug.modal-body
                          p.pug
                            strong.pug Lorem Ipsum is simply dummy
                            span.pug  text of the printing and typesetting industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since the 1500s, when an unknown
                            span.pug                                         printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
                            span.pug                                         remaining essentially unchanged.
                        .pug.modal-footer
                          button.pug.btn.btn-default(type='button' data-dismiss='modal') Close
                          button.pug.btn.btn-primary(type='button') Save changes
                .pug.m-t-md
                  pre.pug.
                    \n
                    <button type="button" class="btn btn-success"
                            data-toggle.pug="modal" data-target="#myModal">
                            Launch demo modal
                    </button>
                                                            
          .pug.col-lg-6
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Optional size and colors
              .pug.panel-body
                p.pug
                  span.pug Modals have two optional sizes, available via modifier classes to be placed on a .modal-dialog
                .pug.text-center.m-b-md
                  button.pug.btn.btn-primary(type='button' data-toggle='modal' data-target='#myModal5')
                    span.pug Large Modal
                  button.pug.btn.btn-primary(type='button' data-toggle='modal' data-target='#myModal6')
                    span.pug Small Modal
                  .pug#myModal5.modal.fade(tabindex='-1' role='dialog' aria-hidden='true')
                    .pug.modal-dialog.modal-lg
                      .pug.modal-content
                        .pug.color-line
                        .pug.modal-header
                          h4.pug.modal-title Modal title
                          small.pug.font-bold Lorem Ipsum is simply dummy text.
                        .pug.modal-body
                          p.pug
                            strong.pug Lorem Ipsum is simply dummy
                            span.pug  text of the printing and typesetting industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since the 1500s, when an unknown
                            span.pug                                         printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
                            span.pug                                         remaining essentially unchanged.
                        .pug.modal-footer
                          button.pug.btn.btn-default(type='button' data-dismiss='modal') Close
                          button.pug.btn.btn-primary(type='button') Save changes
                  .pug#myModal6.modal.fade(tabindex='-1' role='dialog' aria-hidden='true')
                    .pug.modal-dialog.modal-sm
                      .pug.modal-content
                        .pug.color-line
                        .pug.modal-header
                          h4.pug.modal-title Modal title
                          small.pug.font-bold Lorem Ipsum is simply dummy text.
                        .pug.modal-body
                          p.pug
                            strong.pug Lorem Ipsum is simply dummy
                            span.pug  text of the printing and typesetting industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since the 1500s, when an unknown
                            span.pug                                         printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
                            span.pug                                         remaining essentially unchanged.
                        .pug.modal-footer
                          button.pug.btn.btn-default(type='button' data-dismiss='modal') Close
                          button.pug.btn.btn-primary(type='button') Save changes
                p.pug
                  span.pug You can add extra class to color your modal window avalible class (
                  code.pug hmodal-info
                  span.pug , 
                  code.pug hmodal-warning
                  span.pug , 
                  code.pug hmodal-success
                  span.pug , 
                  code.pug hmodal-danger
                  span.pug )
                .pug.text-center.m-t-md
                  button.pug.btn.btn-success(type='button' data-toggle='modal' data-target='#myModal7') Success
                  button.pug.btn.btn-info(type='button' data-toggle='modal' data-target='#myModal8') Info
                  button.pug.btn.btn-warning(type='button' data-toggle='modal' data-target='#myModal9') Warning
                  button.pug.btn.btn-danger(type='button' data-toggle='modal' data-target='#myModal10') Danger
                .pug#myModal7.modal.fade.hmodal-success(tabindex='-1' role='dialog' aria-hidden='true')
                  .pug.modal-dialog
                    .pug.modal-content
                      .pug.color-line
                      .pug.modal-header
                        h4.pug.modal-title Modal title
                        small.pug.font-bold Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                      .pug.modal-body
                        p.pug
                          strong.pug Lorem Ipsum is simply dummy
                          span.pug  text of the printing and typesetting industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since the 1500s, when an unknown
                          span.pug                                     printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
                          span.pug                                     remaining essentially unchanged.
                      .pug.modal-footer
                        button.pug.btn.btn-default(type='button' data-dismiss='modal') Close
                        button.pug.btn.btn-primary(type='button') Save changes
                .pug#myModal8.modal.fade.hmodal-info(tabindex='-1' role='dialog' aria-hidden='true')
                  .pug.modal-dialog
                    .pug.modal-content
                      .pug.color-line
                      .pug.modal-header
                        h4.pug.modal-title Modal title
                        small.pug.font-bold Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                      .pug.modal-body
                        p.pug
                          strong.pug Lorem Ipsum is simply dummy
                          span.pug  text of the printing and typesetting industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since the 1500s, when an unknown
                          span.pug                                     printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
                          span.pug                                     remaining essentially unchanged.
                      .pug.modal-footer
                        button.pug.btn.btn-default(type='button' data-dismiss='modal') Close
                        button.pug.btn.btn-primary(type='button') Save changes
                .pug#myModal9.modal.fade.hmodal-warning(tabindex='-1' role='dialog' aria-hidden='true')
                  .pug.modal-dialog
                    .pug.modal-content
                      .pug.color-line
                      .pug.modal-header
                        h4.pug.modal-title Modal title
                        small.pug.font-bold Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                      .pug.modal-body
                        p.pug
                          strong.pug Lorem Ipsum is simply dummy
                          span.pug  text of the printing and typesetting industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since the 1500s, when an unknown
                          span.pug                                     printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
                          span.pug                                     remaining essentially unchanged.
                      .pug.modal-footer
                        button.pug.btn.btn-default(type='button' data-dismiss='modal') Close
                        button.pug.btn.btn-primary(type='button') Save changes
                .pug#myModal10.modal.fade.hmodal-danger(tabindex='-1' role='dialog' aria-hidden='true')
                  .pug.modal-dialog
                    .pug.modal-content
                      .pug.color-line
                      .pug.modal-header
                        h4.pug.modal-title Modal title
                        small.pug.font-bold Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                      .pug.modal-body
                        p.pug
                          strong.pug Lorem Ipsum is simply dummy
                          span.pug  text of the printing and typesetting industry. Lorem Ipsum has been the industry&apos;s standard dummy text ever since the 1500s, when an unknown
                          span.pug                                     printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
                          span.pug                                     remaining essentially unchanged.
                      .pug.modal-footer
                        button.pug.btn.btn-default(type='button' data-dismiss='modal') Close
                        button.pug.btn.btn-primary(type='button') Save changes
                .pug.m-t-md
                  pre.pug.
                    \nvar modalInstance = $modal.open({
                           template.pugUrl: 'views/modal/modal_example2.html'
                           controller.pug: ModalInstanceCtrl,
                           window.pugClass: "hmodal-success"
                    });                     
        .pug.row
          .pug.col-lg-12
            .pug.hpanel
              .pug.panel-heading
                .pug.panel-tools
                  a.pug.showhide
                    i.pug.fa.fa-chevron-up
                  a.pug.closebox
                    i.pug.fa.fa-times
                span.pug                 Options
              .pug.panel-body
                p.pug
                  span.pug Options can be passed via data attributes or JavaScript. For data attributes, append the option name to 
                  code.pug data-
                  span.pug , as in 
                  code.pug data-backdrop=&quot;&quot;
                  span.pug .
                .pug.table-responsive
                  table.pug.table.table-bordered.table-striped
                    thead.pug
                      tr.pug
                        th.pug(style='width: 100px;') Name
                        th.pug(style='width: 50px;') type
                        th.pug(style='width: 50px;') default
                        th.pug description
                    tbody.pug
                      tr.pug
                        td.pug backdrop
                        td.pug
                          span.pug boolean or the string 
                          code.pug &apos;static&apos;
                        td.pug true
                        td.pug
                          span.pug Includes a modal-backdrop element. Alternatively, specify 
                          code.pug static
                          span.pug  for a backdrop which doesn&apos;t close the modal on click.
                      tr.pug
                        td.pug keyboard
                        td.pug boolean
                        td.pug true
                        td.pug Closes the modal when escape key is pressed
                      tr.pug
                        td.pug show
                        td.pug boolean
                        td.pug true
                        td.pug Shows the modal when initialized.
                      tr.pug
                        td.pug remote
                        td.pug path
                        td.pug false
                        td.pug
                          p.pug
                            strong.pug.text-danger This option is deprecated since v3.3.0 and will be removed in v4.
                            span.pug  We recommend instead using client-side templating or a data binding framework, or calling 
                            a.pug(href='http://api.jquery.com/load/') jQuery.load
                            span.pug  yourself.
                          p.pug
                            span.pug If a remote URL is provided, 
                            strong.pug content will be loaded one time
                            span.pug  via jQuery&apos;s 
                            code.pug load
                            span.pug  method and injected into the 
                            code.pug .modal-content
                            span.pug  div. If you&apos;re using the data-api, you may alternatively use the 
                            code.pug href
                            span.pug  attribute to specify the remote source. An example of this is shown below:
                          .pug.zero-clipboard
                            span.pug.btn-clipboard Copy
                          .pug.highlight
                            pre.pug.
                              
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
  
  
  
  
