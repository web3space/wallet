module.exports = (value)->
    return \... if not value?
    [head, dec] = value.to-string!.split(\.)
    return head if not dec?
    "#{head}.#{dec.substr 0, 8}"