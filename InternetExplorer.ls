
  do ->

    { create-htmlfile } = dependency 'os.win32.com.HtmlFile'
    { single-quotes, angle-brackets } = dependency 'unsafe.Circumfix'

    content = (version = 'edge') ->

      values = [ "X-UA-Compatible" "IE=#version" ]

      { [ key, values[index] ] for key, index in <[ http-equiv content ]> }

        |> -> [ ("#key=#{ single-quotes value }") for key, value of it ]

        |> -> <[ meta ]> ++ it |> (* ' ') |> angle-brackets

    #

    create-internetexplorer = (version) -> create-htmlfile! => ..write content version

    {
      create-internetexplorer
    }