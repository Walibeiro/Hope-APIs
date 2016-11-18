unit Mozilla.MozWifiStatusChangeEvent;

interface

type
  // Constructor( DOMString type , optional MozWifiStatusChangeEventInit eventInitDict)
  JMozWifiStatusChangeEvent = class external 'MozWifiStatusChangeEvent' (JEvent)
  public
    network: Variant;
    status: String;
  end;

  JMozWifiStatusChangeEventInit = class external 'MozWifiStatusChangeEventInit' (JEventInit)
  public
    network: Variant;
    status: String;
  end;

implementation

end.
