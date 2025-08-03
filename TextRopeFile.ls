
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-text-rope-file = -> create-com-object 'Text.RopeFile'

    {
      create-text-rope-file
    }