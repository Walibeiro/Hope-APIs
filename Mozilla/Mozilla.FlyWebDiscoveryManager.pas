unit Mozilla.FlyWebDiscoveryManager;

interface

type
  JFlyWebDiscoveredService = class external 'FlyWebDiscoveredService'
  public
    serviceId: String;
    displayName: String;
    transport: String;
    serviceType: String;
    cert: String;
    path: String;
  end;

  JFlyWebPairedService = class external 'FlyWebPairedService'
  public
    discoveredService: JFlyWebDiscoveredService;
    hostname: String;
    uiUrl: String;
  end;

  JFlyWebPairingCallback = class external 'FlyWebPairingCallback'
  public
    procedure pairingSucceeded; overload;
    procedure pairingSucceeded(service: JFlyWebPairedService); overload;
    procedure pairingFailed(error: String);
  end;

  JFlyWebDiscoveryCallback = class external 'FlyWebDiscoveryCallback'
  public
    procedure onDiscoveredServicesChanged(serviceList: array of JFlyWebDiscoveredService);
  end;

  // ChromeOnly,ChromeConstructor,Exposed=( Window , System)
  JFlyWebDiscoveryManager = class external 'FlyWebDiscoveryManager'
  public
    function listServices: array of JFlyWebDiscoveredService;
    function startDiscovery(aCallback: JFlyWebDiscoveryCallback): Integer;
    procedure stopDiscovery(aId: Integer);
    procedure pairWithService(serviceId: String; Callback: JFlyWebPairingCallback);
  end;

implementation

end.
