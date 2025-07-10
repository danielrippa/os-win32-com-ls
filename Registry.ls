
  do ->

    { build-path } = dependency 'os.filesystem.Path'
    { create-shell } = dependency 'os.win32.com.Shell'
    { type } = dependency 'reflection.Type'
    { typed-value-as-string } = dependency 'reflection.Value'

    key-as-path = (key) -> type '< Array String >' key ; switch typeof key

      | 'string' => key
      else type '[ *:String ]' key ; build-path key

    string = -> type '< String >' it

    read-registry-value = (key, value-name) -> try create-shell!RegRead build-path [ (key-as-path key), (string value-name) ]

    {
      read-registry-value
    }