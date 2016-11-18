unit Mozilla.TCPSocketEvent;

interface

type
  // Constructor( DOMString type , optional TCPSocketEventInit eventInitDict),Func=mozilla::dom::TCPSocket::ShouldTCPSocketExist,Exposed=( Window , System)
  JTCPSocketEvent = class external 'TCPSocketEvent' (JEvent)
  public
    data: Variant;
  end;

  JTCPSocketEventInit = class external 'TCPSocketEventInit' (JEventInit)
  public
    data: Variant;
  end;

implementation

end.
