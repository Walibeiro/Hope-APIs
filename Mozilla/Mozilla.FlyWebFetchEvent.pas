unit Mozilla.FlyWebFetchEvent;

interface

type
  // Pref=dom.flyweb.enabled
  JFlyWebFetchEvent = class external 'FlyWebFetchEvent' (JEvent)
  public
    request: JRequest; { SameObject } 
    procedure respondWith(r: Response); { Throws } 
  end;

implementation

end.
