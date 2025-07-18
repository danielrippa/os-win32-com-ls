
  do ->

    { create-window } = dependency 'os.win32.com.HtmlWindow'
    { create-json-serializer: serializer } = dependency 'os.win32.com.JsonSerializer'

    JSON = -> create-window!JSON

    stringify = -> JSON!stringify it
    parse = -> JSON!parse it

    serialize = -> serializer!Serialize it

    deserialize = -> eval "(#it)"

    {
      stringify, parse,
      serialize, deserialize
    }


