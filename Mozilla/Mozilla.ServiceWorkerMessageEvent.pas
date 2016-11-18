unit Mozilla.ServiceWorkerMessageEvent;

interface

type
  // Pref=dom.serviceWorkers.enabled,Constructor( DOMString type , optional ServiceWorkerMessageEventInit eventInitDict),Exposed=Window
  JServiceWorkerMessageEvent = class external 'ServiceWorkerMessageEvent' (JEvent)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Union; { Constant } 
    ports: array of JMessagePort; { Constant,Cached,Frozen } 
  end;

  JServiceWorkerMessageEventInit = class external 'ServiceWorkerMessageEventInit' (JEventInit)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Union;
    ports: array of JMessagePort;
  end;

implementation

end.
