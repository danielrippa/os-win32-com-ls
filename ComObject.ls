
  do ->

    { type } = dependency 'reflection.Type'

    create-com-object = (automation-id) -> type '< String >' automation-id ; new ActiveXObject automation-id

    get-com-object = (automation-id) -> type '< String >' automation-id ; GetObject automation-id

    {
      create-com-object, get-com-object
    }