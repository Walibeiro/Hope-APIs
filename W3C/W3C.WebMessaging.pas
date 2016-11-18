unit W3C.WebMessaging;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.HTML5;

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

  // Exposed = (Window, Worker)
  JMessageEvent = class external 'MessageEvent' (JEvent)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Variant;
    sourceAsMessagePort: JMessagePort; external 'source';
    sourceAsWindowProxy: JWindowProxy; external 'source';
    ports: array of JMessagePort;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JMessageEventInit); overload;
    procedure initMessageEvent(typeArg: String; canBubbleArg,
      cancelableArg: Boolean; dataArg: Variant; originArg,
      lastEventIdArg: String; sourceArg: JWindowProxy;
      portsArg: array of JMessagePort); overload;
    procedure initMessageEvent(typeArg: String; canBubbleArg,
      cancelableArg: Boolean; dataArg: Variant; originArg,
      lastEventIdArg: String; sourceArg: JMessagePort;
      portsArg: array of JMessagePort); overload;
  end;

  // Exposed = (Window, Worker)
  JMessageChannel = class external 'MessageChannel'
  public
    port1, port2: JMessagePort;
    constructor Create;
  end;