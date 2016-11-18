unit Mozilla.MozWifiConnectionInfoEvent;

interface

type
  // Constructor( DOMString type , optional MozWifiConnectionInfoEventInit eventInitDict)
  JMozWifiConnectionInfoEvent = class external 'MozWifiConnectionInfoEvent' (JEvent)
  public
    network: Variant;
    signalStrength: Integer;
    relSignalStrength: Integer;
    linkSpeed: Integer;
    ipAddress: String;
  end;

  JMozWifiConnectionInfoEventInit = class external 'MozWifiConnectionInfoEventInit' (JEventInit)
  public
    network: Variant;
    signalStrength: Integer;
    relSignalStrength: Integer;
    linkSpeed: Integer;
    ipAddress: String;
  end;

implementation

end.
