
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-shell = -> create-com-object 'WScript.Shell'

    {
      create-shell
    }