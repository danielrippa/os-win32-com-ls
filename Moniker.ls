
  do ->

    { type } = dependency 'reflection.Type'

    create-com-moniker = (scheme, identifier) ->

      type '< String >' scheme ; type '< Object String >' identifier

      to-string = -> "{ @scheme }:#{ @identifier }"

      { scheme, identifier, to-string }

    {
      create-com-moniker
    }