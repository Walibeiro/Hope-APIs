unit Mozilla.KeyboardEvent;

interface

type
  // Constructor( DOMString typeArg , optional KeyboardEventInit keyboardEventInitDict)
  JKeyboardEvent = class external 'KeyboardEvent' (JUIEvent)
  const 
    DOM_KEY_LOCATION_STANDARD: Integer = 0;
    DOM_KEY_LOCATION_LEFT: Integer = 1;
    DOM_KEY_LOCATION_RIGHT: Integer = 2;
    DOM_KEY_LOCATION_NUMPAD: Integer = 3;
  public
    charCode: Integer;
    keyCode: Integer;
    altKey: Boolean;
    ctrlKey: Boolean;
    shiftKey: Boolean;
    metaKey: Boolean;
    location: Integer;
    repeat: Boolean;
    isComposing: Boolean;
    key: String;
    code: String; { Pref=dom.keyboardevent.code.enabled } 
    initDict: JKeyboardEventInit; { Cached,ChromeOnly,Constant } 
    function getModifierState(key: String): Boolean;
  end;

  JKeyboardEventInit = class external 'KeyboardEventInit' (JEventModifierInit)
  public
    key: String;
    code: String;
    location: Integer;
    &repeat: Boolean;
    isComposing: Boolean;
    charCode: Integer;
    keyCode: Integer;
    which: Integer;
  end;

implementation

end.
