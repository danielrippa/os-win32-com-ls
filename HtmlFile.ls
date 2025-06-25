
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-htmlfile = -> create-com-object 'HTMLFile'

    {
      create-htmlfile
    }