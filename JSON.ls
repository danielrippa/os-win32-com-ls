
  do ->

    { create-window } = dependency 'os.win32.com.HtmlWindow'

    JSON = -> create-window!JSON

    stringify = -> JSON!stringify it
    parse = -> JSON!parse it

    {
      stringify, parse
    }


