unit Mozilla.NetworkInformation;

interface

type
  JConnectionType = (ctCellular, ctBluetooth, ctEthernet, ctWifi, ctOther, ctNone, ctUnknown);

  // Pref=dom.netinfo.enabled
  JNetworkInformation = class external 'NetworkInformation' (JEventTarget)
  public
    type: JConnectionType;
    ontypechange: JEventHandler;
  end;

implementation

end.
