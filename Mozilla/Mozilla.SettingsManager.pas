unit Mozilla.SettingsManager;

interface

type
  // JSImplementation=@mozilla.org/settingsLock;1,Pref=dom.mozSettings.enabled
  JSettingsLock = class external 'SettingsLock' (JEventTarget)
  public
    closed: Boolean;
    onsettingstransactionsuccess: JEventHandler;
    onsettingstransactionfailure: JEventHandler;
    function set(settings: Variant): JDOMRequest;
    function get(&name: String): JDOMRequest;
    function clear: JDOMRequest;
  end;

  JSettingChange = class external 'SettingChange'
  public
    settingName: String;
    settingValue: String;
  end;

  JSettingChangeCallback = procedure(setting: JSettingChange);

  // JSImplementation=@mozilla.org/settingsManager;1,NavigatorProperty=mozSettings,Pref=dom.mozSettings.enabled,ChromeOnly
  JSettingsManager = class external 'SettingsManager' (JEventTarget)
  public
    onsettingchange: JEventHandler;
    function createLock: JSettingsLock;
    procedure addObserver(&name: String; Callback: JSettingChangeCallback);
    procedure removeObserver(&name: String; Callback: JSettingChangeCallback);
  end;

implementation

end.
