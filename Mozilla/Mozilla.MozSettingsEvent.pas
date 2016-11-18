unit Mozilla.MozSettingsEvent;

interface

type
  // Constructor( DOMString type , optional MozSettingsEventInit eventInitDict),ChromeOnly
  JMozSettingsEvent = class external 'MozSettingsEvent' (JEvent)
  public
    settingName: String;
    settingValue: Variant;
  end;

  JMozSettingsEventInit = class external 'MozSettingsEventInit' (JEventInit)
  public
    settingName: String;
    settingValue: Variant;
  end;

implementation

end.
