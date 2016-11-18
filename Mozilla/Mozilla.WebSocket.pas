unit Mozilla.WebSocket;

interface

type
  JBinaryType = (btBlob, btArraybuffer);

  // Exposed=( Window , Worker),Constructor( DOMString url),Constructor( DOMString url , DOMString protocols),Constructor( DOMString url , sequence < DOMString > protocols)
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
    onopen: JEventHandler;
    onerror: JEventHandler;
    onclose: JEventHandler;
    extensions: String;
    protocol: String;
    onmessage: JEventHandler;
    binaryType: JBinaryType;
    procedure close; overload; { Throws } 
    procedure close(code: Integer { Clamp } ); overload; { Throws } 
    procedure close(code: Integer { Clamp } ; reason: String); overload; { Throws } 
    procedure send(data: String); { Throws } 
    procedure send(data: JBlob); { Throws } 
    procedure send(data: JArrayBuffer); { Throws } 
    procedure send(data: JArrayBufferView); { Throws } 
    function createServerWebSocket(url: String; protocols: array of String; transportProvider: JnsITransportProvider; negotiatedExtensions: String): JWebSocket; { ChromeOnly,NewObject,Throws } 
  end;

implementation

end.
