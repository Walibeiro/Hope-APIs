unit Mozilla.MozWifiP2pManager;

interface

type
  JWPSMethod = (pbc, keypad, display);

  JWPSInfo = class external 'WPSInfo'
  public
    &method: JWPSMethod;
    pin: String;
  end;

  // JSImplementation=@mozilla.org/wifip2pgroupowner;1,Func=Navigator::HasWifiManagerSupport
  JMozWifiP2pGroupOwner = class external 'MozWifiP2pGroupOwner'
  public
    groupName: String;
    macAddress: String;
    ipAddress: String;
    passphrase: String;
    ssid: String;
    wpsCapabilities: Variant;
    freq: Integer;
    isLocal: Boolean;
  end;

  // JSImplementation=@mozilla.org/wifip2pmanager;1,NavigatorProperty=mozWifiP2pManager,Func=Navigator::HasWifiManagerSupport
  JMozWifiP2pManager = class external 'MozWifiP2pManager' (JEventTarget)
  public
    enabled: Boolean;
    groupOwner: JMozWifiP2pGroupOwner;
    onpeerinfoupdate: JEventHandler;
    onstatuschange: JEventHandler;
    onenabled: JEventHandler;
    ondisabled: JEventHandler;
    function setScanEnabled(enabled: Boolean): JDOMRequest;
    function connect(address: String; wpsMethod: JWPSMethod): JDOMRequest; overload;
    function connect(address: String; wpsMethod: JWPSMethod; goIntent: Integer): JDOMRequest; overload;
    function disconnect(address: String): JDOMRequest;
    function getPeerList: JDOMRequest;
    function setPairingConfirmation(accepted: Boolean): JDOMRequest; overload;
    function setPairingConfirmation(accepted: Boolean; pin: String): JDOMRequest; overload;
    function setDeviceName(deviceName: String): JDOMRequest;
  end;

implementation

end.
