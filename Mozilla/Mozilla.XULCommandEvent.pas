unit Mozilla.XULCommandEvent;

interface

type
  // Func=IsChromeOrXBL
  JXULCommandEvent = class external 'XULCommandEvent' (JUIEvent)
  public
    ctrlKey: Boolean;
    shiftKey: Boolean;
    altKey: Boolean;
    metaKey: Boolean;
    sourceEvent: JEvent;
    procedure initCommandEvent(&type: String; canBubble: Boolean; cancelable: Boolean; view: JWindow; detail: Integer; ctrlKey: Boolean; altKey: Boolean; shiftKey: Boolean; metaKey: Boolean; sourceEvent: JEvent);
  end;