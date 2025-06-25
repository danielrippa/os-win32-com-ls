
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-xml-http = -> create-com-object 'MSXML2.XMLHTTP.6.0'

    {
      create-xml-http
    }