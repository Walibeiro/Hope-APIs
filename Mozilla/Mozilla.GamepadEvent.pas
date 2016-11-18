unit Mozilla.GamepadEvent;

interface

type
  // Pref=dom.gamepad.enabled,Constructor( DOMString type , optional GamepadEventInit eventInitDict)
  JGamepadEvent = class external 'GamepadEvent' (JEvent)
  public
    gamepad: JGamepad;
  end;

  JGamepadEventInit = class external 'GamepadEventInit' (JEventInit)
  public
    gamepad: JGamepad;
  end;

implementation

end.
