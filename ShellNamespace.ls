
  do ->

    { create-explorer-shell } = dependency 'os.win32.com.Explorer'
    { type } = dependency 'reflection.Type'

    get-namespace = -> create-explorer-shell!Namespace it

    number = -> type '< Number >' it

    get-shell-namespace-by-csidl = (csidl)-> get-namespace number csidl

    {
      get-namespace,
      get-shell-namespace-by-csidl
    }