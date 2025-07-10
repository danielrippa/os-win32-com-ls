
  do ->

    { create-xml-document } = dependency 'os.win32.com.XmlDocument'

    create-xml-element = (tag-name) -> create-xml-document!create-element tag-name

    {
      create-xml-element
    }