unit Mozilla.FlyWebWebSocketEvent;

interface

type
  // Pref=dom.flyweb.enabled
  JFlyWebWebSocketEvent = class external 'FlyWebWebSocketEvent' (JEvent)
  public
    request: JRequest; { SameObject } 
    function accept: JWebSocket; overload; { Throws } 
    function accept(protocol: String): JWebSocket; overload; { Throws } 
    procedure respondWith(r: Response); { Throws } 
  end;

implementation

end.
