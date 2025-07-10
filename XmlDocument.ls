
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-xml-document = -> create-com-object 'MSXML2.DOMDocument.6.0"'

    {
      create-xml-document
    }