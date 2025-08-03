
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-console-window = -> create-com-object 'Console.Window'

    {
      create-console-window
    }