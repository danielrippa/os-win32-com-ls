
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-filesystem = -> create-com-object 'Scripting.FileSystemObject'

    {
      create-filesystem
    }