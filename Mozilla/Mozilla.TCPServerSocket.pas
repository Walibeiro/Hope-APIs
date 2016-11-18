unit Mozilla.TCPServerSocket;

interface

type
  JServerSocketOptions = class external 'ServerSocketOptions'
  public
    binaryType: JTCPSocketBinaryType;
  end;

  // Constructor( unsigned short port , optional ServerSocketOptions options , optional unsigned short backlog = 0),Func=mozilla::dom::TCPSocket::ShouldTCPSocketExist,Exposed=( Window , System)
  JTCPServerSocket = class external 'TCPServerSocket' (JEventTarget)
  public
    localPort: Integer;
    onconnect: JEventHandler;
    onerror: JEventHandler;
    procedure close;
  end;

implementation

end.
