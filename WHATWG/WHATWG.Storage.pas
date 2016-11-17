unit WHATWG.Storage;

interface

type
  JStorageEstimate = class external 'StorageEstimate'
  public
    usage: Integer;
    quota: Integer;
  end;

  // SecureContext, Exposed = (Window, Worker)
  JStorageManager = class external 'StorageManager'
  public
    function persisted: boolean;
    function persist: boolean; { Exposed=Window }
    function estimate: JStorageEstimate;
  end;

  // SecureContext, NoInterfaceObject, Exposed = (Window, Worker)
  JNavigatorStorage = class external 'NavigatorStorage'
  public
    storage: JStorageManager;
  end;