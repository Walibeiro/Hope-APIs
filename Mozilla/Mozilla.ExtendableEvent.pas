unit Mozilla.ExtendableEvent;

interface

type
  // Constructor( DOMString type , optional ExtendableEventInit eventInitDict),Exposed=ServiceWorker
  JExtendableEvent = class external 'ExtendableEvent' (JEvent)
  public
    procedure waitUntil(p: any); { Throws } 
  end;

  JExtendableEventInit = class external 'ExtendableEventInit' (JEventInit)
  public
  end;

implementation

end.
