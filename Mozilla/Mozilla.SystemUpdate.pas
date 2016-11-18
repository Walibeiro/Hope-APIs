unit Mozilla.SystemUpdate;

interface

type
  JSystemUpdateProviderInfo = class external 'SystemUpdateProviderInfo'
  public
    &name: String;
    uuid: String;
  end;

  JSystemUpdatePackageInfo = class external 'SystemUpdatePackageInfo'
  public
    &type: String;
    version: String;
    description: String;
    buildDate: JDOMTimeStamp;
    size: Integer;
  end;

  // JSImplementation=@mozilla.org/system-update-provider;1,ChromeOnly,Pref=dom.system_update.enabled
  JSystemUpdateProvider = class external 'SystemUpdateProvider' (JEventTarget)
  public
    name: String;
    uuid: String;
    onupdateavailable: JEventHandler;
    onprogress: JEventHandler;
    onupdateready: JEventHandler;
    onerror: JEventHandler;
    procedure checkForUpdate;
    procedure startDownload;
    procedure stopDownload;
    procedure applyUpdate;
    function setParameter(&name: String; value: String): Boolean;
    function getParameter(&name: String): String;
  end;

  // NavigatorProperty=updateManager,JSImplementation=@mozilla.org/system-update-manager;1,ChromeOnly,Pref=dom.system_update.enabled
  JSystemUpdateManager = class external 'SystemUpdateManager'
  public
    function getProviders: array of SystemUpdateProviderInfo;
    function setActiveProvider(uuid: String): SystemUpdateProvider;
    function getActiveProvider: SystemUpdateProvider;
  end;

implementation

end.
