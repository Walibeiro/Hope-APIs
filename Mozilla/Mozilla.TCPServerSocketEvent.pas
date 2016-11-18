unit Mozilla.TCPServerSocketEvent;

interface

type
  // Constructor( DOMString type , optional TCPServerSocketEventInit eventInitDict),Func=mozilla::dom::TCPSocket::ShouldTCPSocketExist,Exposed=( Window , System)
  JTCPServerSocketEvent = class external 'TCPServerSocketEvent' (JEvent)
  public
    socket: JTCPSocket;
  end;

  JTCPServerSocketEventInit = class external 'TCPServerSocketEventInit' (JEventInit)
  public
    socket: JTCPSocket;
  end;

implementation

end.
