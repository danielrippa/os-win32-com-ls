
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-console-color-palette = -> create-com-object 'Console.Palette'

    {
      create-console-color-palette
    }