
  do ->

    { create-com-object } = dependency 'os.win32.com.ComObject'

    create-console-input = -> create-com-object 'Console.Input'

    mouse-event-types = <[ MouseMoved HorizontalWheel VerticalWheel MouseButtonReleased ]>

    window-event-types = <[ WindowFocus WindowResized ]>

    key-event-types = <[ KeyPressed KeyReleased ]>

    {
      create-console-input,
      mouse-event-types, window-event-types, key-event-types
    }