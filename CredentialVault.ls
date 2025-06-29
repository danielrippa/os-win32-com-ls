
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'
    { object-values } = dependency 'unsafe.Object'
    { type-error } = dependency 'reflection.TypeError'

    persistence-types = logon: 1, machine: 2, enterprise: 3

    create-credential-vault = -> create-com-object 'Credential.GenericVault'

    is-valid-persistence-name = (persistence-name) -> persistence-name in object-values persistence-types

    invalid-persistence-name-message = (persistence-name) -> "Invalid persistence name #persistence-name" # TODO:

    collect-credential = (target-name, persistence-name) ->

      type '< String >' target-name ; type '< String >' persistence-name

      throw type-error invalid-persistence-name-message persistence-name \
        unless is-valid-persistence-name persistence-name

      succeeded = no

      switch create-credential-vault!CollectCredential target-name, persistence-types[persistence-name]

        # https://learn.microsoft.com/en-us/windows/win32/api/wincred/nf-wincred-credenumeratea#return-value

        | 0 => succeeded = yes

        | 1 => # target-name is null or empty
        | 2 => # user cancelled
        | 3 =>

          switch # GetLastError

            | 1004 => # ERROR_INVALID_FLAGS = A flag that is not valid was specified for the Flags parameter
            | 1168 => # ERROR_NOT_FOUND = No credential exists matching the specified Filter.
            | 1312 => # ERROR_NO_SUCH_LOGON_SESSION = The logon session does not exist or there is no credential set associated with this logon session.

        | 4 => # advapi.dll CredWrite failed

        else throw "" # TODO:

      succeeded

    read-credential = (target-name) ->

      type '< String >' target-name

      { Success, Value } = create-credential-vault!ReadCredential target-name ; return null unless Success

      Value

    {
      create-credential-vault,
      persistence-types,
      collect-credential, read-credential
    }
