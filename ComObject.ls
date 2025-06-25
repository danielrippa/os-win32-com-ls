
  do ->

    { type } = dependency 'reflection.Type'

    create-com-object = (automation-id) -> type '< String >' automation-id ; new ActiveXObject automation-id

    {
      create-com-object
    }