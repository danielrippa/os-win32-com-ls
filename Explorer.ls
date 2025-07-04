
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-explorer-shell = -> create-com-object 'Shell.Application'

    {
      create-explorer-shell
    }