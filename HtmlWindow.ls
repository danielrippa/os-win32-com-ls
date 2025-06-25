
  do ->

    { create-internetexplorer } = dependency 'os.win32.com.InternetExplorer'

    create-window = -> create-internetexplorer!parent-window

    {
      create-window
    }