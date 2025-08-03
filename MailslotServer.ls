
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-mailslot-server = -> create-com-object 'Mailslot.Server'

    {
      create-mailslot-server
    }