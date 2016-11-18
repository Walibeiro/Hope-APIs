unit Mozilla.DeviceStorageChangeEvent;

interface

type
  // Constructor( DOMString type , optional DeviceStorageChangeEventInit eventInitDict),Pref=device.storage.enabled
  JDeviceStorageChangeEvent = class external 'DeviceStorageChangeEvent' (JEvent)
  public
    path: String;
    reason: String;
  end;

  JDeviceStorageChangeEventInit = class external 'DeviceStorageChangeEventInit' (JEventInit)
  public
    path: String;
    reason: String;
  end;

implementation

end.
