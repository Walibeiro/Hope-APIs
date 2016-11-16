unit W3C.UIEvents;

interface

uses
  W3C.DOM4;

type
  JUIEventInit = class external 'UIEventInit' (JEventInit)
  public
    view: JWindow;
    detail: Integer;
  end;

  JUIEvent = class external 'UIEvent' (JEvent)
  public
    view: JWindow;
    detail: Integer;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JUIEventInit); overload;
  end;

  JFocusEventInit = class external 'FocusEventInit' (JUIEventInit)
  public
    relatedTarget: JEventTarget;
  end;

  JFocusEvent = class external 'FocusEvent' (JUIEvent)
  public
    relatedTarget: JEventTarget;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JFocusEventInit); overload;
  end;

  JEventModifierInit = class external 'EventModifierInit' (JUIEventInit)
  public
    ctrlKey, shiftKey, altKey, metaKey: Boolean;
    modifierAltGraph: Boolean;
    modifierCapsLock: Boolean;
    modifierFn: Boolean;
    modifierFnLock: Boolean;
    modifierHyper: Boolean;
    modifierNumLock: Boolean;
    modifierScrollLock: Boolean;
    modifierSuper: Boolean;
    modifierSymbol: Boolean;
    modifierSymbolLock: Boolean;
  end;

  JMouseEventInit = class external 'MouseEventInit' (JEventModifierInit)
  public
    screenX, screenY: Integer;
    clientX, clientY: Integer;
    button: Integer;
    buttons: Integer;
    relatedTarget: JEventTarget;
  end;

  JMouseEvent = class external 'MouseEvent' (JUIEvent)
  public
    screenX, screenY: Integer;
    clientX, clientY: Integer;
    ctrlKey, shiftKey, altKey, metaKey: Boolean;
    button: Integer;
    buttons: Integer;
    relatedTarget: JEventTarget;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JMouseEventInit); overload;
    function getModifierState(keyArg: String): Boolean;
  end;

  JWheelEventInit = class external 'WheelEventInit' (JMouseEventInit)
  public
    deltaX, deltaY, deltaZ: Float;
    deltaMode: Integer;
  end;

  JWheelEvent = class external 'WheelEvent' (JMouseEvent)
  const
    DOM_DELTA_PIXEL: Integer = 0;
    DOM_DELTA_LINE: Integer = 1;
    DOM_DELTA_PAGE: Integer = 2;
  public
    deltaX, deltaY, deltaZ: Float;
    deltaMode: Integer;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JWheelEventInit); overload;
  end;

  JInputEventInit = class external 'InputEventInit' (JUIEventInit)
  public
    data: String;
    isComposing: Boolean;
  end;

  JInputEvent = class external 'InputEvent' (JUIEvent)
  public
    data: String;
    isComposing: Boolean;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JInputEventInit); overload;
  end;

  JKeyboardEventInit = class external 'KeyboardEventInit' (JEventModifierInit)
  public
    key: String;
    code: String;
    location: Integer;
    &repeat: Boolean;
    isComposing: Boolean;
  end;

  JKeyboardEvent = class external 'KeyboardEvent' (JUIEvent)
  const
    DOM_KEY_LOCATION_STANDARD: Integer = 0;
    DOM_KEY_LOCATION_LEFT: Integer = 1;
    DOM_KEY_LOCATION_RIGHT: Integer = 2;
    DOM_KEY_LOCATION_NUMPAD: Integer = 3;
  public
    key: String;
    code: String;
    location: Integer;
    ctrlKey, shiftKey, altKey, metaKey: Boolean;
    &repeat: Boolean;
    isComposing: Boolean;
    charCode: Integer;
    keyCode: Integer;
    which: Integer;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JKeyboardEventInit); overload;
    function getModifierState(keyArg: String): Boolean;
  end;

  JCompositionEventInit = class external 'CompositionEventInit' (JUIEventInit)
  public
    data: String;
  end;

  JCompositionEvent = class external 'CompositionEvent' (JUIEvent)
  public
    data: String;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JCompositionEventInit); overload;
  end;