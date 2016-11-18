unit Mozilla.InputEvent;

interface

type
  // Constructor( DOMString type , optional InputEventInit eventInitDict)
  JInputEvent = class external 'InputEvent' (JUIEvent)
  public
    isComposing: Boolean;
  end;

  JInputEventInit = class external 'InputEventInit' (JUIEventInit)
  public
    isComposing: Boolean;
  end;

implementation

end.
