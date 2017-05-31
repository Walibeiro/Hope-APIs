unit W3C.Bluetooth;

interface

uses
  ECMA.TypedArray, W3C.DOM4;

type
  TUUID = String;
  TBluetoothServiceUUID = Variant; // TODO
  TBluetoothCharacteristicUUID = Variant; // TODO
  TBluetoothDescriptorUUID = Variant; // TODO

  JBluetoothDataFilterInit = class external 'BluetoothDataFilterInit'
  public
    dataPrefix: Variant;
    dataPrefixAsArrayBuffer: JArrayBuffer; external 'dataPrefix';
    dataPrefixAsArrayBufferView: JArrayBufferView; external 'dataPrefix';
    mask: Variant;
    maskAsArrayBuffer: JArrayBuffer; external 'mask';
    maskAsArrayBufferView: JArrayBufferView; external 'mask';
  end;

  JBluetoothLEScanFilterInit = class external 'BluetoothLEScanFilterInit'
  public
    services: array of TBluetoothServiceUUID;
    &name: String;
    namePrefix: String;
    manufacturerData: Variant;
    serviceData: Variant;
  end;

  JRequestDeviceOptions = class external 'RequestDeviceOptions'
  public
    filters: array of JBluetoothLEScanFilterInit;
    optionalServices: array of TBluetoothServiceUUID;
    acceptAllDevices: Boolean;
  end;

  JBluetooth = partial class external 'Bluetooth'
  public
    onavailabilitychanged: TEventHandler; { SecureContext }
    function getAvailability: boolean; { SecureContext }
  end;

  JBluetoothPermissionDescriptor = class external 'BluetoothPermissionDescriptor' // TODO (JPermissionDescriptor)
  public
    deviceId: String;
    filters: array of JBluetoothLEScanFilterInit;
    optionalServices: array of TBluetoothServiceUUID;
    acceptAllDevices: Boolean;
  end;

  JAllowedBluetoothDevice = class external 'AllowedBluetoothDevice'
  public
    deviceId: String;
    mayUseGATT: Boolean;
// TODO    DOMString: JallowedServices;
  end;

  JBluetoothPermissionData = class external 'BluetoothPermissionData'
  public
    allowedDevices: array of JAllowedBluetoothDevice;
  end;

  JBluetoothPermissionResult = class external 'BluetoothPermissionResult' // TODO (JPermissionStatus)
  end;

  JValueEventInit = class external 'ValueEventInit' (JEventInit)
  public
    value: Variant;
  end;

  JValueEvent = class external 'ValueEvent' (JEvent)
  public
    value: Variant;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; initDict: JValueEventInit); overload;
  end;

  JBluetoothRemoteGATTServer = partial class external 'BluetoothRemoteGATTServer'
  public
    connected: Boolean;
  end;

  JBluetoothDevice = class external 'BluetoothDevice'
  public
    id: String;
    name: String;
    gatt: JBluetoothRemoteGATTServer;
    watchingAdvertisements: Boolean;
    procedure watchAdvertisements;
    procedure unwatchAdvertisements;
  end;

  JBluetoothManufacturerDataMap = class external 'BluetoothManufacturerDataMap'
  end;

  JBluetoothServiceDataMap = class external 'BluetoothServiceDataMap'
  end;

  JBluetoothAdvertisingEventInit = class external 'BluetoothAdvertisingEventInit' (JEventInit)
  public
    device: JBluetoothDevice;
    uuids: array of Variant; // TODO
    &name: String;
    appearance: Integer;
    txPower: Integer;
    rssi: Integer;
// TODO    manufacturerData: JMap;
// TODO    serviceData: JMap;
  end;

  JBluetoothAdvertisingEvent = class external 'BluetoothAdvertisingEvent' (JEvent)
  public
    device: JBluetoothDevice;
    name: String;
    appearance: Integer;
    txPower: Integer;
    rssi: Integer;
    manufacturerData: JBluetoothManufacturerDataMap;
    serviceData: JBluetoothServiceDataMap;
    constructor Create(&type: String; init: JBluetoothAdvertisingEventInit);
  end;

  JBluetoothRemoteGATTService = partial class external 'BluetoothRemoteGATTService'
  public
    device: JBluetoothDevice;
    uuid: TUUID;
    isPrimary: Boolean;
  end;

  JBluetoothCharacteristicProperties = class external 'BluetoothCharacteristicProperties'
  public
    broadcast: Boolean;
    read: Boolean;
    writeWithoutResponse: Boolean;
    write: Boolean;
    notify: Boolean;
    indicate: Boolean;
    authenticatedSignedWrites: Boolean;
    reliableWrite: Boolean;
    writableAuxiliaries: Boolean;
  end;

  JBluetoothRemoteGATTCharacteristic = partial class external 'BluetoothRemoteGATTCharacteristic'
  public
    value: JDataView;
  end;

  JBluetoothRemoteGATTDescriptor = class external 'BluetoothRemoteGATTDescriptor'
  public
    characteristic: JBluetoothRemoteGATTCharacteristic;
    uuid: TUUID;
    value: JDataView;
    function readValue: JDataView;
    procedure writeValue(value: JArrayBuffer); overload;
    procedure writeValue(value: JArrayBufferView); overload;
  end;

  JBluetoothRemoteGATTCharacteristic = partial class external 'BluetoothRemoteGATTCharacteristic'
  public
    service: JBluetoothRemoteGATTService;
    uuid: TUUID;
    properties: JBluetoothCharacteristicProperties;
    function getDescriptor(descriptor: TBluetoothDescriptorUUID): JBluetoothRemoteGATTDescriptor;
    function getDescriptors: array of JBluetoothRemoteGATTDescriptor; overload;
    function getDescriptors(descriptor: TBluetoothDescriptorUUID): array of JBluetoothRemoteGATTDescriptor; overload;
    function readValue: JDataView;
    procedure writeValue(value: JArrayBuffer); overload;
    procedure writeValue(value: JArrayBufferView); overload;
    function startNotifications: JBluetoothRemoteGATTCharacteristic;
    function stopNotifications: JBluetoothRemoteGATTCharacteristic;
  end;

  JBluetoothRemoteGATTService = partial class external 'BluetoothRemoteGATTService'
  public
    function getCharacteristic(characteristic: TBluetoothCharacteristicUUID): JBluetoothRemoteGATTCharacteristic;
    function getCharacteristics: array of JBluetoothRemoteGATTCharacteristic; overload;
    function getCharacteristics(characteristic: TBluetoothCharacteristicUUID): array of JBluetoothRemoteGATTCharacteristic; overload;
    function getIncludedService(service: TBluetoothServiceUUID): JBluetoothRemoteGATTService;
    function getIncludedServices: array of JBluetoothRemoteGATTService; overload;
    function getIncludedServices(service: TBluetoothServiceUUID): array of JBluetoothRemoteGATTService; overload;
  end;

  JBluetoothRemoteGATTServer = partial class external 'BluetoothRemoteGATTServer'
  public
    device: JBluetoothDevice;
    function connect: JBluetoothRemoteGATTServer;
    procedure disconnect;
    function getPrimaryService(service: TBluetoothServiceUUID): JBluetoothRemoteGATTService;
    function getPrimaryServices: array of JBluetoothRemoteGATTService; overload;
    function getPrimaryServices(service: TBluetoothServiceUUID): array of JBluetoothRemoteGATTService; overload;
  end;

  // NoInterfaceObject
  JCharacteristicEventHandlers = class external 'CharacteristicEventHandlers'
  public
    oncharacteristicvaluechanged: TEventHandler;
  end;

  // NoInterfaceObject
  JBluetoothDeviceEventHandlers = class external 'BluetoothDeviceEventHandlers'
  public
    ongattserverdisconnected: TEventHandler;
  end;

  // NoInterfaceObject
  JServiceEventHandlers = class external 'ServiceEventHandlers'
  public
    onserviceadded: TEventHandler;
    onservicechanged: TEventHandler;
    onserviceremoved: TEventHandler;
  end;

  JBluetooth = partial class external 'Bluetooth'
  public
    referringDevice: JBluetoothDevice; { SecureContext }
    function requestDevice: JBluetoothDevice; overload; { SecureContext }
    function requestDevice(options: JRequestDeviceOptions): JBluetoothDevice; overload; { SecureContext }
  end;

  JBluetoothUUID = class external 'BluetoothUUID'
  public
    function getService(&name: String): TUUID; overload;
    function getService(&name: Integer): TUUID; overload;
    function getCharacteristic(&name: String): TUUID; overload;
    function getCharacteristic(&name: Integer): TUUID; overload;
    function getDescriptor(&name: String): TUUID; overload;
    function getDescriptor(&name: Integer): TUUID; overload;
    function canonicalUUID(alias: Integer { EnforceRange } ): TUUID;
  end;

  JNavigator = partial class external 'Navigator'
  public
    bluetooth: JBluetooth;
  end;