
  do ->

    moniker-to-string = ->

    create-com-moniker = (scheme, identifier, security, identifier-to-string) ->

      to-string = ->

        ""{ @scheme }:#{ identifier-string }"

      { scheme, identifier, security, to-string }

    {
      create-com-moniker
    }