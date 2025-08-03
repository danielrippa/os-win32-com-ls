
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-mailslot-client = -> create-com-object 'Mailslot.Client'

    {
      create-mailslot-client
    }