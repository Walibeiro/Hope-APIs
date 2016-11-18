unit Mozilla.MozWifiP2pStatusChangeEvent;

interface

type
  // Constructor( DOMString type , optional MozWifiP2pStatusChangeEventInit eventInitDict),Func=Navigator::HasWifiManagerSupport
  JMozWifiP2pStatusChangeEvent = class external 'MozWifiP2pStatusChangeEvent' (JEvent)
  public
    peerAddress: String;
  end;

  JMozWifiP2pStatusChangeEventInit = class external 'MozWifiP2pStatusChangeEventInit' (JEventInit)
  public
    peerAddress: String;
  end;

implementation

end.
