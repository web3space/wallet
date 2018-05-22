require! {
  \react
  \./head.ls
  \./foot.ls
}
module.exports = ->
  head!
  body.pug(bgcolor='#f7f9fa')
    table.pug.body-wrap(bgcolor='#f7f9fa')
      tr.pug
        td.pug
        td.pug.container(bgcolor='#FFFFFF')
          .pug.content
            table.pug
              tr.pug
                td.pug
                  strong.pug Welcome in email template
                  p.pug
                    span.pug Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &apos;lorem ipsum&apos; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                  p.pug
                    span.pug It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                  p.pug
                    span.pug There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised.
                  table.pug.btn-primary(cellpadding='0' cellspacing='0' border='0')
                    tr.pug
                      td.pug
                        a.pug(href='#') Simple button
                  p.pug
                    span.pug All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary
                  p.pug
                    a.pug(href='#') Follow @email_template on Twitter
        td.pug
    table.pug.footer-wrap
      tr.pug
        td.pug
        td.pug.container
          .pug.content
            table.pug
              tr.pug
                td.pug(align='center')
                  p.pug
                    span.pug Don&apos;t like these annoying emails? 
                    a.pug(href='#')
                      unsubscribe.pug Unsubscribe
                    span.pug .
        td.pug
  
  
  
  
  
