unit Mozilla.CustomEvent;

interface

type
  // Constructor( DOMString type , optional CustomEventInit eventInitDict),Exposed=( Window , Worker)
  JCustomEvent = class external 'CustomEvent' (JEvent)
  public
    detail: Variant;
    procedure initCustomEvent(&type: String; canBubble: Boolean; cancelable: Boolean; detail: Variant); { Throws } 
  end;

  JCustomEventInit = class external 'CustomEventInit' (JEventInit)
  public
    detail: Variant;
  end;

implementation

end.
