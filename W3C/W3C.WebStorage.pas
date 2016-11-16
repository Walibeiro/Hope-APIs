unit W3C.WebStorage;

interface

uses
  W3C.DOM4;

type
  JStorage = class external 'Storage'
  public
    length: Integer;
    function key(&index: Integer): String;
    function getItem(key: String): String;
    procedure setItem(key: String; value: String);
    procedure removeItem(key: String);
    procedure clear;
  end;

  // NoInterfaceObject
  JWindowSessionStorage = class external 'WindowSessionStorage'
  public
    sessionStorage: JStorage;
  end;

  // NoInterfaceObject
  JWindowLocalStorage = class external 'WindowLocalStorage'
  public
    localStorage: JStorage;
  end;

  // Constructor( DOMString type , optional StorageEventInit eventInitDict)
  JStorageEvent = class external 'StorageEvent' (JEvent)
  public
    key: String;
    oldValue: String;
    newValue: String;
    url: String;
    storageArea: JStorage;
  end;

  JStorageEventInit = class external 'StorageEventInit' (JEventInit)
  public
    key: String;
    oldValue: String;
    newValue: String;
    url: String;
    storageArea: JStorage;
  end;