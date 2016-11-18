unit Mozilla.MozWifiManager;

interface

type
  JWifiWPSMethod = (pbc, pin, cancel);

  JConnectionStatus = (csConnecting, csAuthenticating, csAssociated, csConnected, csDisconnected, csWps-timedout, csWps-failed, csWps-overlapped, csConnectingfailed);

  JWifiWPSInfo = class external 'WifiWPSInfo'
  public
    &method: JWifiWPSMethod;
    pin: String;
    bssid: String;
  end;

  JNetworkProperties = class external 'NetworkProperties'
  public
    ssid: String;
    mode: Integer;
    frequency: Integer;
    security: array of String;
    capabilities: array of String;
    known: Boolean;
    connected: Boolean;
    hidden: Boolean;
    bssid: String;
    signalStrength: String;
    relSignalStrength: Integer;
    psk: String;
    wep: String;
    wep_key0: String;
    wep_key1: String;
    wep_key2: String;
    wep_key3: String;
    wep_tx_keyidx: Integer;
    priority: Integer;
    scan_ssid: Integer;
    keyManagement: String;
    identity: String;
    password: String;
    auth_alg: String;
    phase1: String;
    phase2: String;
    eap: String;
    pin: String;
    dontConnect: Boolean;
    serverCertificate: String;
    subjectMatch: String;
    userCertificate: String;
  end;

  // Constructor( optional NetworkProperties properties),JSImplementation=@mozilla.org/mozwifinetwork;1,Func=Navigator::HasWifiManagerSupport
  JMozWifiNetwork = class external 'MozWifiNetwork'
  public
    ssid: String;
    mode: Integer;
    frequency: Integer;
    security: array of String; { Constant,Cached } 
    capabilities: array of String; { Constant,Cached } 
    known: Boolean;
    connected: Boolean;
    hidden: Boolean;
    bssid: String;
    signalStrength: String;
    relSignalStrength: Integer;
    psk: String;
    wep: String;
    wep_key0: String;
    wep_key1: String;
    wep_key2: String;
    wep_key3: String;
    wep_tx_keyidx: Integer;
    priority: Integer;
    scan_ssid: Integer;
    keyManagement: String;
    identity: String;
    password: String;
    auth_alg: String;
    phase1: String;
    phase2: String;
    eap: String;
    pin: String;
    dontConnect: Boolean;
    serverCertificate: String;
    subjectMatch: String;
    userCertificate: String;
  end;

  // JSImplementation=@mozilla.org/mozwificonnection;1,ChromeOnly
  JMozWifiConnection = class external 'MozWifiConnection'
  public
    status: JConnectionStatus;
    network: JMozWifiNetwork;
  end;

  // JSImplementation=@mozilla.org/mozwificonnectioninfo;1,ChromeOnly
  JMozWifiConnectionInfo = class external 'MozWifiConnectionInfo'
  public
    signalStrength: Integer;
    relSignalStrength: Integer;
    linkSpeed: Integer;
    ipAddress: String;
  end;

  JIPConfiguration = class external 'IPConfiguration'
  public
    enabled: Boolean;
    ipaddr: String;
    proxy: String;
    maskLength: Integer;
    gateway: String;
    dns1: String;
    dns2: String;
  end;

  // JSImplementation=@mozilla.org/wifimanager;1,NavigatorProperty=mozWifiManager,Func=Navigator::HasWifiManagerSupport,UnsafeInPrerendering
  JMozWifiManager = class external 'MozWifiManager' (JEventTarget)
  public
    enabled: Boolean;
    macAddress: String;
    connection: JMozWifiConnection;
    connectionInformation: JMozWifiConnectionInfo;
    capabilities: JMozWifiCapabilities;
    onstatuschange: JEventHandler;
    onconnectioninfoupdate: JEventHandler;
    onenabled: JEventHandler;
    ondisabled: JEventHandler;
    onstationinfoupdate: JEventHandler;
    function setWifiEnabled(enabled: Boolean): JDOMRequest;
    function getNetworks: JDOMRequest;
    function getKnownNetworks: JDOMRequest;
    function associate(network: JMozWifiNetwork): JDOMRequest;
    function forget(network: JMozWifiNetwork): JDOMRequest;
    function wps: JDOMRequest; overload;
    function wps(detail: JWifiWPSInfo): JDOMRequest; overload;
    function setPowerSavingMode(enabled: Boolean): JDOMRequest;
    function setStaticIpMode(network: JMozWifiNetwork): JDOMRequest; overload;
    function setStaticIpMode(network: JMozWifiNetwork; info: JIPConfiguration): JDOMRequest; overload;
    function setHttpProxy(network: JMozWifiNetwork; info: Variant): JDOMRequest;
    function importCert(certBlob: JBlob; certPassword: String; certNickname: String): JDOMRequest;
    function getImportedCerts: JDOMRequest;
    function deleteCert(certNickname: String): JDOMRequest;
  end;

implementation

end.
