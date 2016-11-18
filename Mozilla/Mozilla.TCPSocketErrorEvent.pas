unit Mozilla.TCPSocketErrorEvent;

interface

type
  // Constructor( DOMString type , optional TCPSocketErrorEventInit eventInitDict),Func=mozilla::dom::TCPSocket::ShouldTCPSocketExist,Exposed=( Window , System)
  JTCPSocketErrorEvent = class external 'TCPSocketErrorEvent' (JEvent)
  public
    name: String;
    message: String;
  end;

  JTCPSocketErrorEventInit = class external 'TCPSocketErrorEventInit' (JEventInit)
  public
    &name: String;
    message: String;
  end;

implementation

end.
