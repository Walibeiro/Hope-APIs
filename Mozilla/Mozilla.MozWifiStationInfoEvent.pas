unit Mozilla.MozWifiStationInfoEvent;

interface

type
  // Constructor( DOMString type , optional MozWifiStationInfoEventInit eventInitDict)
  JMozWifiStationInfoEvent = class external 'MozWifiStationInfoEvent' (JEvent)
  public
    station: Integer;
  end;

  JMozWifiStationInfoEventInit = class external 'MozWifiStationInfoEventInit' (JEventInit)
  public
    station: Integer;
  end;

implementation

end.
