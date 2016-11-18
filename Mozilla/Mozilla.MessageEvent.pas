unit Mozilla.MessageEvent;

interface

type
  // Constructor( DOMString type , optional MessageEventInit eventInitDict),Exposed=( Window , Worker , System)
  JMessageEvent = class external 'MessageEvent' (JEvent)
  public
    data: Variant; { GetterThrows } 
    origin: String;
    lastEventId: String;
    source: Union;
    ports: array of JMessagePort; { Pure,Cached,Frozen } 
    procedure initMessageEvent(&type: String; bubbles: Boolean; cancelable: Boolean; data: Variant; origin: String; lastEventId: String; source: Union; ports: array of JMessagePort);
  end;

  JMessageEventInit = class external 'MessageEventInit' (JEventInit)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Union;
    ports: array of JMessagePort;
  end;

implementation

end.
