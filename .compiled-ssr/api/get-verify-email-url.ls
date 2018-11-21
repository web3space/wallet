require! {
    \./config.json : { url }
}
module.exports = (emailkey)-> "#url/verify-email/#{emailkey}"