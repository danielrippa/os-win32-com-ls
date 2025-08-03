
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-console-screen-buffer = -> create-com-object 'Console.ScreenBuffer'

    {
      create-console-screen-buffer
    }