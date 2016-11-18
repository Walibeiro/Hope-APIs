unit Mozilla.StorageEvent;

interface

type
  // Constructor( DOMString type , optional StorageEventInit eventInitDict)
  JStorageEvent = class external 'StorageEvent' (JEvent)
  public
    key: String;
    oldValue: String;
    newValue: String;
    url: String;
    storageArea: JStorage;
    procedure initStorageEvent(&type: String; canBubble: Boolean; cancelable: Boolean; key: String; oldValue: String; newValue: String; url: String; storageArea: JStorage);
  end;

  JStorageEventInit = class external 'StorageEventInit' (JEventInit)
  public
    key: String;
    oldValue: String;
    newValue: String;
    url: String;
    storageArea: JStorage;
  end;

implementation

end.
