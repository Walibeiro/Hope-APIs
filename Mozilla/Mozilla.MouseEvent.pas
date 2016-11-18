unit Mozilla.MouseEvent;

interface

type
  // Constructor( DOMString typeArg , optional MouseEventInit mouseEventInitDict)
  JMouseEvent = class external 'MouseEvent' (JUIEvent)
  const 
    MOZ_SOURCE_UNKNOWN: Integer = 0;
    MOZ_SOURCE_MOUSE: Integer = 1;
    MOZ_SOURCE_PEN: Integer = 2;
    MOZ_SOURCE_ERASER: Integer = 3;
    MOZ_SOURCE_CURSOR: Integer = 4;
    MOZ_SOURCE_TOUCH: Integer = 5;
    MOZ_SOURCE_KEYBOARD: Integer = 6;
  public
    screenX: Integer;
    screenY: Integer;
    clientX: Integer;
    clientY: Integer;
    offsetX: Integer;
    offsetY: Integer;
    ctrlKey: Boolean;
    shiftKey: Boolean;
    altKey: Boolean;
    metaKey: Boolean;
    button: Integer;
    buttons: Integer;
    relatedTarget: JEventTarget;
    region: String;
    movementX: Integer;
    movementY: Integer;
    mozMovementX: Integer; { BinaryName=movementX,Pref=pointer-lock-api.prefixed.enabled } 
    mozMovementY: Integer; { BinaryName=movementY,Pref=pointer-lock-api.prefixed.enabled } 
    mozPressure: Float;
    mozInputSource: Integer;
    hitCluster: Boolean; { ChromeOnly } 
    procedure initMouseEvent(typeArg: String; canBubbleArg: Boolean; cancelableArg: Boolean; viewArg: JWindow; detailArg: Integer; screenXArg: Integer; screenYArg: Integer; clientXArg: Integer; clientYArg: Integer; ctrlKeyArg: Boolean; altKeyArg: Boolean; shiftKeyArg: Boolean; metaKeyArg: Boolean; buttonArg: Integer; relatedTargetArg: JEventTarget);
    function getModifierState(keyArg: String): Boolean;
    procedure initNSMouseEvent(typeArg: String; canBubbleArg: Boolean; cancelableArg: Boolean; viewArg: JWindow; detailArg: Integer; screenXArg: Integer; screenYArg: Integer; clientXArg: Integer; clientYArg: Integer; ctrlKeyArg: Boolean; altKeyArg: Boolean; shiftKeyArg: Boolean; metaKeyArg: Boolean; buttonArg: Integer; relatedTargetArg: JEventTarget; pressure: Float; inputSourceArg: Integer);
  end;

  JMouseEventInit = class external 'MouseEventInit' (JEventModifierInit)
  public
    screenX: Integer;
    screenY: Integer;
    clientX: Integer;
    clientY: Integer;
    button: Integer;
    buttons: Integer;
    relatedTarget: JEventTarget;
    movementX: Integer;
    movementY: Integer;
  end;

implementation

end.
