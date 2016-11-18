unit Mozilla.StorageManager;

interface

type
  // Exposed=( Window , Worker),Func=mozilla::dom::StorageManager::PrefEnabled
  JStorageManager = class external 'StorageManager'
  public
    function estimate: StorageEstimate; { Throws } 
  end;

  JStorageEstimate = class external 'StorageEstimate'
  public
    usage: Integer;
    quota: Integer;
  end;

implementation

end.
