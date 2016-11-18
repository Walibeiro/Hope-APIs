unit Mozilla.TouchEvent;

interface

type
  JTouchEventInit = class external 'TouchEventInit' (JEventModifierInit)
  public
    touches: array of JTouch;
    targetTouches: array of JTouch;
    changedTouches: array of JTouch;
  end;

  // Constructor( DOMString type , optional TouchEventInit eventInitDict),Func=mozilla::dom::TouchEvent::PrefEnabled
  JTouchEvent = class external 'TouchEvent' (JUIEvent)
  public
    touches: JTouchList;
    targetTouches: JTouchList;
    changedTouches: JTouchList;
    altKey: Boolean;
    metaKey: Boolean;
    ctrlKey: Boolean;
    shiftKey: Boolean;
    procedure initTouchEvent(&type: String; canBubble: Boolean; cancelable: Boolean; view: JWindow; detail: Integer; ctrlKey: Boolean; altKey: Boolean; shiftKey: Boolean; metaKey: Boolean; touches: JTouchList; targetTouches: JTouchList; changedTouches: JTouchList);
  end;

implementation

end.
