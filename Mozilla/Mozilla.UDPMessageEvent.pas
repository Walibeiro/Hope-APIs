unit Mozilla.UDPMessageEvent;

interface

type
  // Constructor( DOMString type , optional UDPMessageEventInit eventInitDict),Pref=dom.udpsocket.enabled,ChromeOnly
  JUDPMessageEvent = class external 'UDPMessageEvent' (JEvent)
  public
    remoteAddress: String;
    remotePort: Integer;
    data: Variant;
  end;

  JUDPMessageEventInit = class external 'UDPMessageEventInit' (JEventInit)
  public
    remoteAddress: String;
    remotePort: Integer;
    data: Variant;
  end;

implementation

end.
