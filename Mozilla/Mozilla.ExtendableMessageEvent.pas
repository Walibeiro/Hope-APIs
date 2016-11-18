unit Mozilla.ExtendableMessageEvent;

interface

type
  // Constructor( DOMString type , optional ExtendableMessageEventInit eventInitDict),Exposed=( ServiceWorker)
  JExtendableMessageEvent = class external 'ExtendableMessageEvent' (JExtendableEvent)
  public
    data: Variant; { GetterThrows } 
    origin: String;
    lastEventId: String;
    source: Union;
    ports: array of JMessagePort; { Constant,Cached,Frozen } 
  end;

  JExtendableMessageEventInit = class external 'ExtendableMessageEventInit' (JExtendableEventInit)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Union;
    ports: array of JMessagePort;
  end;

implementation

end.
