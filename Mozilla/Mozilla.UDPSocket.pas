unit Mozilla.UDPSocket;

interface

type
  JUDPOptions = class external 'UDPOptions'
  public
    localAddress: String;
    localPort: Integer;
    remoteAddress: String;
    remotePort: Integer;
    addressReuse: Boolean;
    loopback: Boolean;
  end;

  // Constructor( optional UDPOptions options),Pref=dom.udpsocket.enabled,ChromeOnly
  JUDPSocket = class external 'UDPSocket' (JEventTarget)
  public
    localAddress: String;
    localPort: Integer;
    remoteAddress: String;
    remotePort: Integer;
    addressReuse: Boolean;
    loopback: Boolean;
    readyState: JSocketReadyState;
    opened: void;
    closed: void;
    onmessage: JEventHandler;
    function close: void;
    procedure joinMulticastGroup(multicastGroupAddress: String); { Throws } 
    procedure leaveMulticastGroup(multicastGroupAddress: String); { Throws } 
    function send(data: Union): Boolean; overload; { Throws } 
    function send(data: Union; remoteAddress: String): Boolean; overload; { Throws } 
    function send(data: Union; remoteAddress: String; remotePort: Integer): Boolean; overload; { Throws } 
  end;

implementation

end.
