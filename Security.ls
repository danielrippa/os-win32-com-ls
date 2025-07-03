
  do ->

    { object-from-array, object-member-pairs } = dependency 'unsafe.Object'
    { camel-case } = dependency 'unsafe.StringCase'
    { keep-array-items: keep, map-array-items: map } = dependency 'unsafe.Array'
    { is-function } = dependency 'unsafe.Function'
    { type } = dependency 'reflection.Type'
    { value-as-string } = dependency 'reflection.Value'
    { curly-brackets } = dependency 'unsafe.Circumfix'

    { impersonate } = impersonation-levels = object-from-array <[ anonymous identify impersonate delegate ]>

    { pkt-privacy } = authentication-levels = object-from-array map <[ default none connect call pkt pkt-integrity pkt-privacy ]> camel-case

    has-value = ([ key, value ]) -> (value isnt void) and (not is-function value)

    create-dcom-authority-descriptor = (protocol, domain) ->

      to-string = -> "#{ @protocol }:#{ @domain }"

      { protocol, domain, to-string }

    maybe-braces = -> if it is '' then '' else curly-brackets it

    create-dcom-security-descriptor = (authority, impersonation-level = impersonate, authentication-level) ->

      type '< Object Undefined >' authority
      type '< String Undefined >' impersonation-level ; type '< String Undefined >' authentication-level

      to-string = -> @ |> object-member-pairs |> keep _ , has-value |> map _ , (* '=') |> (* ',') |> maybe-braces

      { impersonation-level, authentication-level, authority, to-string }

    {
      impersonation-levels, authentication-levels,
      create-dcom-authority-descriptor,
      create-dcom-security-descriptor
    }