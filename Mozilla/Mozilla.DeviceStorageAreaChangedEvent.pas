unit Mozilla.DeviceStorageAreaChangedEvent;

interface

type
  JDeviceStorageAreaChangedEventOperation = (dsaceoAdded, dsaceoRemoved, dsaceoUnknown);

  // Pref=device.storage.enabled,Constructor( DOMString type , optional DeviceStorageAreaChangedEventInit eventInitDict)
  JDeviceStorageAreaChangedEvent = class external 'DeviceStorageAreaChangedEvent' (JEvent)
  public
    operation: JDeviceStorageAreaChangedEventOperation;
    storageName: String;
  end;

  JDeviceStorageAreaChangedEventInit = class external 'DeviceStorageAreaChangedEventInit' (JEventInit)
  public
    operation: JDeviceStorageAreaChangedEventOperation;
    storageName: String;
  end;

implementation

end.
