unit Mozilla.WheelEvent;

interface

type
  // Constructor( DOMString type , optional WheelEventInit eventInitDict)
  JWheelEvent = class external 'WheelEvent' (JMouseEvent)
  const 
    DOM_DELTA_PIXEL: Integer = 0;
    DOM_DELTA_LINE: Integer = 1;
    DOM_DELTA_PAGE: Integer = 2;
  public
    deltaX: Float;
    deltaY: Float;
    deltaZ: Float;
    deltaMode: Integer;
  end;

  JWheelEventInit = class external 'WheelEventInit' (JMouseEventInit)
  public
    deltaX: Float;
    deltaY: Float;
    deltaZ: Float;
    deltaMode: Integer;
  end;

implementation

end.
