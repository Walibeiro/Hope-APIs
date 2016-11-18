unit Mozilla.PageTransitionEvent;

interface

type
  // Constructor( DOMString type , optional PageTransitionEventInit eventInitDict)
  JPageTransitionEvent = class external 'PageTransitionEvent' (JEvent)
  public
    persisted: Boolean;
  end;

  JPageTransitionEventInit = class external 'PageTransitionEventInit' (JEventInit)
  public
    persisted: Boolean;
  end;

implementation

end.
