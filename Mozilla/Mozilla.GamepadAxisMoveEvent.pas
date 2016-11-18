unit Mozilla.GamepadAxisMoveEvent;

interface

type
  // Pref=dom.gamepad.non_standard_events.enabled,Constructor( DOMString type , optional GamepadAxisMoveEventInit eventInitDict)
  JGamepadAxisMoveEvent = class external 'GamepadAxisMoveEvent' (JGamepadEvent)
  public
    axis: Integer;
    value: Float;
  end;

  JGamepadAxisMoveEventInit = class external 'GamepadAxisMoveEventInit' (JGamepadEventInit)
  public
    axis: Integer;
    value: Float;
  end;

implementation

end.
