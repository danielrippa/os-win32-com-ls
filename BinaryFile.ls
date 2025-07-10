
  do ->

    { use-ado-stream, ado-stream-for-filepath } = dependency 'os.win32.com.AdoStream'
    { create-xml-element } = dependency 'os.win32.com.XmlElement'

    base64-element = create-xml-element 'data' => ..data-type = 'bin.base64'

    ado-stream-as-base64-text = (stream) -> base64-element => ..node-typed-value = stream.Read! ; return ..text

    filepath-as-base54-string = (filepath) ->

      ado-stream-for-filepath filepath, 1 |> use-ado-stream ado-stream-as-base64-text

    {
      filepath-as-base64-string
    }