unit Mozilla.DeviceStorage;

interface

type
  JDeviceStorageEnumerationParameters = class external 'DeviceStorageEnumerationParameters'
  public
    since: JDate;
  end;

  // Pref=device.storage.enabled
  JDeviceStorage = class external 'DeviceStorage' (JEventTarget)
  public
    onchange: JEventHandler;
    storageName: String;
    canBeMounted: Boolean;
    canBeShared: Boolean;
    canBeFormatted: Boolean;
    default: Boolean;
    isRemovable: Boolean;
    lowDiskSpace: Boolean;
    function add(aBlob: JBlob): JDOMRequest; { Throws } 
    function addNamed(aBlob: JBlob; aName: String): JDOMRequest; { Throws } 
    function appendNamed(aBlob: JBlob; aName: String): JDOMRequest; { Throws } 
    function get(aName: String): JDOMRequest; { Throws } 
    function getEditable(aName: String): JDOMRequest; { Throws } 
    function delete(aName: String): JDOMRequest; { Throws } 
    function enumerate: JDOMCursor; overload; { Throws } 
    function enumerate(options: JDeviceStorageEnumerationParameters): JDOMCursor; overload; { Throws } 
    function enumerate(path: String): JDOMCursor; overload; { Throws } 
    function enumerate(path: String; options: JDeviceStorageEnumerationParameters): JDOMCursor; overload; { Throws } 
    function enumerateEditable: JDOMCursor; overload; { Throws } 
    function enumerateEditable(options: JDeviceStorageEnumerationParameters): JDOMCursor; overload; { Throws } 
    function enumerateEditable(path: String): JDOMCursor; overload; { Throws } 
    function enumerateEditable(path: String; options: JDeviceStorageEnumerationParameters): JDOMCursor; overload; { Throws } 
    function freeSpace: JDOMRequest; { Throws } 
    function usedSpace: JDOMRequest; { Throws } 
    function available: JDOMRequest; { Throws } 
    function storageStatus: JDOMRequest; { Throws } 
    function format: JDOMRequest; { Throws } 
    function mount: JDOMRequest; { Throws } 
    function unmount: JDOMRequest; { Throws } 
    function getRoot: any; { NewObject } 
  end;

implementation

end.
