
  do ->

    { create-com-object } = dependency 'os.win32.ComObject'

    create-ado-stream = (type = 2, charset = 'x-user-defined') ->

      create-com-object 'ADODB.Stream' => ..Type = type ; ..Charset = charset

    use-ado-stream = (fn) ->

      result = error = null

      try stream = create-ado-stream! => ..Open! result = fn ..
      catch => error = e.message
      finally => if stream and stream.State is 1 => stream.Close!

      { result, error }

    string-byte-length = (string, charset = 'UTF-8') ->

      type '< String >' string

      stream-byte-length = (stream) ->

        stream => ..Charset = charset ; ..WriteText string ; ..Position = 0 ; ..Type = 1 ; return ..Size

      use-ado-stream stream-byte-length .result

    {
      create-ado-stream,
      use-ado-stream,
      string-byte-length
    }