unit Mozilla.MouseScrollEvent;

interface

type
  JMouseScrollEvent = class external 'MouseScrollEvent' (JMouseEvent)
  const 
    HORIZONTAL_AXIS: Integer = 1;
    VERTICAL_AXIS: Integer = 2;
  public
    axis: Integer;
    procedure initMouseScrollEvent(&type: String; canBubble: Boolean; cancelable: Boolean; view: JWindow; detail: Integer; screenX: Integer; screenY: Integer; clientX: Integer; clientY: Integer; ctrlKey: Boolean; altKey: Boolean; shiftKey: Boolean; metaKey: Boolean; button: Integer; relatedTarget: JEventTarget; axis: Integer);
  end;

implementation

end.
