unit W3C.Gamepad;

interface

uses
  W3C.DOM4, W3C.HighResolutionTime;

type
  JGamepadMappingType = String;
  JGamepadMappingTypeHelper = strict helper for JGamepadMappingType
    const _ = '_';
    const Standard = 'standard';
  end;

  JGamepadButton = class external 'GamepadButton'
  public
    pressed: Boolean;
    touched: Boolean;
    value: Float;
  end;

  JGamepad = partial class external 'Gamepad'
  public
    id: String;
    index: Integer;
    connected: Boolean;
    timestamp: TDOMHighResTimeStamp;
    mapping: JGamepadMappingType;
    axes: array of Float;
    buttons: array of JGamepadButton;
  end;

  JGamepadEventInit = class external 'GamepadEventInit' (JEventInit)
  public
    gamepad: JGamepad;
  end;

  JGamepadEvent = class external 'GamepadEvent' (JEvent)
  public
    gamepad: JGamepad;
    constructor Create(eventInitDict: JGamepadEventInit);
  end;

  JNavigator = partial class external 'Navigator'
  public
    function getGamepads: array of JGamepad;
  end;
