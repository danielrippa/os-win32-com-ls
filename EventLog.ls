
  do ->

    { create-shell } = dependency 'os.win32.com.Shell'
    { type } = dependency 'reflection.Type'

    shell = create-shell! ; event-types = success: 0, error: 1, warning: 2, information: 4

    log-event = (message, event-type = event-types.information) ->

      type '< String >' message ; type '< Number >' event-type

      shell.LogEvent event-type, message

    log-success = -> log-event it, event-types.success

    log-error = -> log-event it, event-types.error

    log-warning = -> log-event it, event-types.warning

    log-information = -> log-event it, event-types.information

    {
      event-types, log-event,
      log-success, log-error, log-warning, log-information
    }