unit Mozilla.PresentationDeviceInfoManager;

interface

type
  JPresentationDeviceInfo = class external 'PresentationDeviceInfo'
  public
    id: String;
    &name: String;
    &type: String;
  end;

  // NavigatorProperty=mozPresentationDeviceInfo,JSImplementation=@mozilla.org/presentation-device/deviceInfo;1,Pref=dom.presentation.enabled,ChromeOnly
  JPresentationDeviceInfoManager = class external 'PresentationDeviceInfoManager' (JEventTarget)
  public
    ondevicechange: JEventHandler;
    function getAll: array of PresentationDeviceInfo;
    procedure forceDiscovery;
  end;

implementation

end.
