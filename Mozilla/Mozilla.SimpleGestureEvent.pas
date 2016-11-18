unit Mozilla.SimpleGestureEvent;

interface

type
  JSimpleGestureEvent = class external 'SimpleGestureEvent' (JMouseEvent)
  const 
    DIRECTION_UP: Integer = 1;
    DIRECTION_DOWN: Integer = 2;
    DIRECTION_LEFT: Integer = 4;
    DIRECTION_RIGHT: Integer = 8;
    ROTATION_COUNTERCLOCKWISE: Integer = 1;
    ROTATION_CLOCKWISE: Integer = 2;
  public
    allowedDirections: Integer;
    direction: Integer;
    delta: Float;
    clickCount: Integer;
    procedure initSimpleGestureEvent(typeArg: String; canBubbleArg: Boolean; cancelableArg: Boolean; viewArg: JWindow; detailArg: Integer; screenXArg: Integer; screenYArg: Integer; clientXArg: Integer; clientYArg: Integer; ctrlKeyArg: Boolean; altKeyArg: Boolean; shiftKeyArg: Boolean; metaKeyArg: Boolean; buttonArg: Integer; relatedTargetArg: JEventTarget; allowedDirectionsArg: Integer; directionArg: Integer; deltaArg: Float; clickCount: Integer);
  end;

implementation

end.
