unit W3C.WebSockets;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.FileAPI;

type
  // Constructor( DOMString url , optional( DOMString or DOMString[])protocols)
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
    procedure close; overload;
    procedure close(code: Integer { Clamp } ); overload;
    procedure close(code: Integer { Clamp } ; reason: String); overload;
    procedure send(data: String); overload;
    procedure send(data: JBlob); overload;
    procedure send(data: JArrayBuffer); overload;
    procedure send(data: JArrayBufferView); overload;
  end;

  // Constructor( DOMString type , optional CloseEventInit eventInitDict)
  JCloseEvent = class external 'CloseEvent' (JEvent)
  public
    wasClean: Boolean;
    code: Integer;
    reason: String;
  end;

  JCloseEventInit = class external 'CloseEventInit' (JEventInit)
  public
    wasClean: Boolean;
    code: Integer;
    reason: String;
  end;
