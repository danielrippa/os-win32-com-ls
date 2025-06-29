
  do ->

    { type } = dependency 'reflection.Type'

    each-enumeration-item = (enumerable, fn) !->

      type '< Object >' enumerable ; type '< Function >' fn

      e = new Enumerator enumerable ; index = 0

      loop

        break if e.at-end!

        break-flag = fn e.item!, index++, enumerable, e

        if break-flag isnt void => break if break-flag

        e.move-next!

    {
      each-enumeration-item
    }