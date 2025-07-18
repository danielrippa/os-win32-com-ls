
  do ->

    { get-shell-namespace-by-csidl } = dependency 'os.win32.com.ShellNamespace'

    get-desktop-folder-namespace = -> get-shell-namespace-by-csidl 0 .Self

    {
      get-desktop-folder-namespace
    }