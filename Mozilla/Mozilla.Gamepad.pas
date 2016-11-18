unit Mozilla.Gamepad;

interface

type
  // Pref=dom.gamepad.enabled
  JGamepadButton = class external 'GamepadButton'
  public
    pressed: Boolean;
    value: Float;
  end;

  JGamepadMappingType = (, gmtStandard);

  // Pref=dom.gamepad.enabled
  JGamepad = class external 'Gamepad'
  public
    id: String;
    index: Integer;
    mapping: JGamepadMappingType;
    connected: Boolean;
    buttons: array of JGamepadButton; { Pure,Cached,Frozen } 
    axes: array of Float; { Pure,Cached,Frozen } 
    timestamp: JDOMHighResTimeStamp;
    pose: JGamepadPose; { Pref=dom.gamepad.extensions.enabled } 
  end;

implementation

end.
