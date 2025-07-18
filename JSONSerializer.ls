
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-json-serializer = -> create-com-object 'JSON.Serializer'

    {
      create-json-serializer
    }