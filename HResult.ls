
  do ->

    facility-names = <[ general rpc dispatch storage interface win32 windows security-provider-interface idispatch control certificates ]>

    facilities = { [ code, facility-names[index] ] for code, index in [ 0x0 0x1 0x2 0x3 0x4 0x7 0x8 0x9 0xa 0xb 0x10 ] }

    hresult-from-error-number = (signed) ->

      unsigned = if signed < 0 then signed + 0x100000000 else signed

      severity = (unsigned .>>>. 31) .&. 0x1

      success = severity is 0

      customer-bit = (unsigned .>>>. 29) .&. 0x1

      microsoft-defined = customer-bit is 0

      facility = (unsigned .>>>. 16) .&. 0xfff

      code = unsigned .&. 0xffff

      facility-name = facilities[facility]

      { signed, unsigned, severity, success, customer-bit, microsoft-defined, facility, code, facility-name }

    {
      hresult-from-error-number
    }
