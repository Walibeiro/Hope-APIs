unit Mozilla.DeviceStorageAreaListener;

interface

type
  // Pref=device.storage.enabled
  JDeviceStorageAreaListener = class external 'DeviceStorageAreaListener' (JEventTarget)
  public
    onstorageareachanged: JEventHandler;
  end;

implementation

end.
