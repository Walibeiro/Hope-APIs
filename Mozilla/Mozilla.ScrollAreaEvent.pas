unit Mozilla.ScrollAreaEvent;

interface

type
  JScrollAreaEvent = class external 'ScrollAreaEvent' (JUIEvent)
  public
    x: Float;
    y: Float;
    width: Float;
    height: Float;
    procedure initScrollAreaEvent(&type: String; canBubble: Boolean; cancelable: Boolean; view: JWindow; detail: Integer; x: Float; y: Float; width: Float; height: Float);
  end;

implementation

end.
