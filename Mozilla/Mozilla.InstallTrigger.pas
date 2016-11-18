unit Mozilla.InstallTrigger;

interface

type
  JInstallTriggerCallback = procedure(url: String; status: Integer);

  JInstallTriggerData = class external 'InstallTriggerData'
  public
    URL: String;
    IconURL: String;
    Hash: String;
  end;

  // ChromeOnly,JSImplementation=@mozilla.org/addons/installtrigger;1
  JInstallTriggerImpl = class external 'InstallTriggerImpl'
  const 
    SKIN: Integer = 1;
    LOCALE: Integer = 2;
    CONTENT: Integer = 4;
    PACKAGE: Integer = 7;
  public
    function enabled: Boolean;
    function updateEnabled: Boolean;
    function install(&<: JMozMap): Boolean;
    function installChrome(&type: Integer; url: String; skin: String): Boolean;
    function startSoftwareUpdate(url: String): Boolean; overload;
    function startSoftwareUpdate(url: String; &flags: Integer): Boolean; overload;
  end;

implementation

end.
