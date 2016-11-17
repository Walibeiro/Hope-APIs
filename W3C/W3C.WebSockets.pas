unit W3C.WebSockets;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.FileAPI;

type
  JWebSocket = class external 'WebSocket' (JEventTarget)
  const
    CONNECTING: Integer = 0;
    OPEN: Integer = 1;
    CLOSING: Integer = 2;
    CLOSED: Integer = 3;
  public
    url: String;
    readyState: Integer;
    bufferedAmount: Integer;
    onopen: TEventHandler;
    onerror: TEventHandler;
    onclose: TEventHandler;
    extensions: String;
    protocol: String;
    onmessage: TEventHandler;
    binaryType: String;
    constructor Create(url: String); overload;
    constructor Create(url: String; protocols: String); overload;
    constructor Create(url: String; protocols: array of String); overload;
    procedure close; overload;
    procedure close(code: Integer { Clamp } ); overload;
    procedure close(code: Integer { Clamp } ; reason: String); overload;
    procedure send(data: String); overload;
    procedure send(data: JBlob); overload;
    procedure send(data: JArrayBuffer); overload;
    procedure send(data: JArrayBufferView); overload;
  end;

  JCloseEventInit = class external 'CloseEventInit' (JEventInit)
  public
    wasClean: Boolean;
    code: Integer;
    reason: String;
  end;

  JCloseEvent = class external 'CloseEvent' (JEvent)
  public
    wasClean: Boolean;
    code: Integer;
    reason: String;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JCloseEventInit); overload;
  end;