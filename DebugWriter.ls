
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-debug-writer = -> create-com-object 'Debug.Writer'

    {
      create-debug-writer
    }