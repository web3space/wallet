require! {
    \react
    \./logo.ls
}
module.exports = ->
    .pug#header
        .color-line.pug
        .pug#logo.light-version
            span.pug Homer Theme
        nav.pug(role='navigation')
            .pug.header-link.hide-menu
                i.pug.fa.fa-bars
            .small-logo.pug
                span.pug.text-primary HOMER APP
            form.pug.navbar-form-custom(role='search' method='post' action='#')
                .pug.form-group
                    input.pug.form-control(type='text' placeholder='Search something special' name='search')
            .mobile-menu.pug
                button.pug.navbar-toggle.mobile-menu-toggle(type='button' data-toggle='collapse' data-target='#mobile-collapse')
            i.pug.fa.fa-chevron-down
                .pug#mobile-collapse.pug.collapse.mobile-navbar
            ul.pug.nav.navbar-nav
                li.pug
                    a.pug(href='login.html') Login
                li.pug
                    a.pug(href='login.html') Logout
                li.pug
                    a.pug(href='profile.html') Profile
            .navbar-right.pug
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
                            span.pug There are many variations.
                    li.pug
                        a.pug
                            span.pug.label.label-danger ERR
                            span.pug  Contrary to popular belief.
                    li.pug.summary
                        a.pug(href='#') See all notifications
            li.pug.dropdown
                a.pug.dropdown-toggle(data-toggle='dropdown')
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
                    .pug.title You have 4 new messages
                    li.pug
                        a.pug It is a long established.
                    li.pug
                        a.pug There are many variations.
                    li.pug
                        a.pug Lorem Ipsum is simply dummy.
                    li.pug
                        a.pug Contrary to popular belief.
                    li.pug.summary
                        a.pug(href='#') See All Messages
            li.pug
                a.pug#sidebar.right-sidebar-toggle(href='#')
                    i.pug.pe-7s-upload.pe-7s-news-paper
            li.pug.dropdown
                a.pug(href='login.html')
                    i.pug.pe-7s-upload.pe-rotate-90