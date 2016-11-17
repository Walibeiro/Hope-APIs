unit W3C.ServerSent;

interface

uses
  W3C.DOM4;

type
  JEventSourceInit = class external 'EventSourceInit'
  public
    withCredentials: Boolean;
  end;

  JEventSource = class external 'EventSource' (JEventTarget)
  const
    CONNECTING: Integer = 0;
    OPEN: Integer = 1;
    CLOSED: Integer = 2;
  public
    url: String;
    withCredentials: Boolean;
    readyState: Integer;
    onopen: TEventHandler;
    onmessage: TEventHandler;
    onerror: TEventHandler;
    constructor Create(url: String; eventSourceInitDict: JEventSourceInit);
    procedure close;
  end;