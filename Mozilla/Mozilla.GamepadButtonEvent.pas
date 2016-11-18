unit Mozilla.GamepadButtonEvent;

interface

type
  // Pref=dom.gamepad.non_standard_events.enabled,Constructor( DOMString type , optional GamepadButtonEventInit eventInitDict)
  JGamepadButtonEvent = class external 'GamepadButtonEvent' (JGamepadEvent)
  public
    button: Integer;
  end;

  JGamepadButtonEventInit = class external 'GamepadButtonEventInit' (JGamepadEventInit)
  public
    button: Integer;
  end;

implementation

end.
