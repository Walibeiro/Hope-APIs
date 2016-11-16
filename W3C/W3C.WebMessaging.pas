unit W3C.WebMessaging;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.Html5;

type
  // Exposed = (Window, Worker)
  JMessagePort = class external 'MessagePort' (JEventTarget)
  public
    onmessage: TEventHandler;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of JArrayBuffer); overload;
    procedure postMessage(message: Variant; transfer: array of JMessagePort); overload;
    procedure start;
    procedure close;
  end;

  // Constructor( DOMString type , optional MessageEventInit eventInitDict),Exposed=( Window , Worker)
  JMessageEvent = class external 'MessageEvent' (JEvent)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Variant;
    sourceAsMessagePort: JMessagePort; external 'source';
    sourceAsWindowProxy: JWindowProxy; external 'source';
    ports: array of JMessagePort;
    procedure initMessageEvent(typeArg: String; canBubbleArg,
      cancelableArg: Boolean; dataArg: Variant; originArg,
      lastEventIdArg: String; sourceArg: JWindowProxy;
      portsArg: array of JMessagePort); overload;
    procedure initMessageEvent(typeArg: String; canBubbleArg,
      cancelableArg: Boolean; dataArg: Variant; originArg,
      lastEventIdArg: String; sourceArg: JMessagePort;
      portsArg: array of JMessagePort); overload;
  end;

  JMessageEventInit = class external 'MessageEventInit' (JEventInit)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Variant;
    sourceAsMessagePort: JMessagePort; external 'source';
    sourceAsWindowProxy: JWindowProxy; external 'source';
    ports: array of JMessagePort;
  end;

  // Constructor,Exposed=( Window , Worker)
  JMessageChannel = class external 'MessageChannel'
  public
    port1, port2: JMessagePort;
  end;