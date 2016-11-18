unit Mozilla.PointerEvent;

interface

type
  // Pref=dom.w3c_pointer_events.enabled,Constructor( DOMString type , optional PointerEventInit eventInitDict)
  JPointerEvent = class external 'PointerEvent' (JMouseEvent)
  public
    pointerId: Integer;
    width: Integer;
    height: Integer;
    pressure: Float;
    tiltX: Integer;
    tiltY: Integer;
    pointerType: String;
    isPrimary: Boolean;
  end;

  JPointerEventInit = class external 'PointerEventInit' (JMouseEventInit)
  public
    pointerId: Integer;
    width: Integer;
    height: Integer;
    pressure: Float;
    tiltX: Integer;
    tiltY: Integer;
    pointerType: String;
    isPrimary: Boolean;
  end;

implementation

end.
