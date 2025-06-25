
  do ->

    { type } = dependency 'reflection.Type'

    each-enumeration-item = (enumerable, fn) !->

      type '< Object >' enumerable ; type '< Function >' fn

      new Enumerator enumerable ; index = 0

        loop

          break if ..at-end!

          break-flag = fn ..item!, index++, enumerable, ..

          if break-flag isnt void => break if break-flag

          ..move-next!

    {
      each-enumeration-item
    }