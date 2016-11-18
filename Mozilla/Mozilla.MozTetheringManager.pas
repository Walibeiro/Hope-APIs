unit Mozilla.MozTetheringManager;

interface

type
  JTetheringType = (ttBluetooth, ttUsb, ttWifi);

  JSecurityType = (stOpen, stWpa-psk, stWpa2-psk);

  JWifiTetheringConfig = class external 'WifiTetheringConfig'
  public
    ssid: String;
    security: JSecurityType;
    key: String;
  end;

  JTetheringConfiguration = class external 'TetheringConfiguration'
  public
    ip: String;
    prefix: String;
    startIp: String;
    endIp: String;
    dns1: String;
    dns2: String;
    wifiConfig: JWifiTetheringConfig;
  end;

  // JSImplementation=@mozilla.org/tetheringmanager;1,NavigatorProperty=mozTetheringManager,ChromeOnly
  JMozTetheringManager = class external 'MozTetheringManager'
  public
    function setTetheringEnabled(enabled: Boolean; &type: JTetheringType): any; overload;
    function setTetheringEnabled(enabled: Boolean; &type: JTetheringType; config: JTetheringConfiguration): any; overload;
  end;

implementation

end.
