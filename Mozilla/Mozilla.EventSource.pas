unit Mozilla.EventSource;

interface

type
  // Constructor( USVString url , optional EventSourceInit eventSourceInitDict)
  JEventSource = class external 'EventSource' (JEventTarget)
  const 
    CONNECTING: Integer = 0;
    OPEN: Integer = 1;
    CLOSED: Integer = 2;
  public
    url: String; { Constant } 
    withCredentials: Boolean; { Constant } 
    readyState: Integer;
    onopen: JEventHandler;
    onmessage: JEventHandler;
    onerror: JEventHandler;
    procedure close;
  end;

  JEventSourceInit = class external 'EventSourceInit'
  public
    withCredentials: Boolean;
  end;

implementation

end.
