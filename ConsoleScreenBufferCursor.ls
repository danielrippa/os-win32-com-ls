
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-console-screen-buffer-cursor = -> create-com-object 'Console.Cursor'

    {
      create-console-screen-buffer-cursor
    }