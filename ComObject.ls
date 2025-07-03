
  do ->

    { type } = dependency 'reflection.Type'

    create-com-object = (automation-id) -> type '< String >' automation-id ; new ActiveXObject automation-id

    get-com-object = (automation-id) -> type '< String >' automation-id ; WScript.Echo "moniker: [#automation-id]"; GetObject automation-id

    {
      create-com-object, get-com-object
    }