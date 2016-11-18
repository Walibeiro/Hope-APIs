unit Mozilla.PopStateEvent;

interface

type
  // Constructor( DOMString type , optional PopStateEventInit eventInitDict)
  JPopStateEvent = class external 'PopStateEvent' (JEvent)
  public
    state: Variant;
  end;

  JPopStateEventInit = class external 'PopStateEventInit' (JEventInit)
  public
    state: Variant;
  end;

implementation

end.
