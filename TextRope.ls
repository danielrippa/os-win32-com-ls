
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-text-rope = -> create-com-object 'Text.Rope'

    {
      create-text-rope
    }