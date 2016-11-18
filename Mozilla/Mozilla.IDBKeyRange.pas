unit Mozilla.IDBKeyRange;

interface

type
  // Exposed=( Window , Worker , System)
  JIDBKeyRange = class external 'IDBKeyRange'
  public
    lower: Variant; { Throws } 
    upper: Variant; { Throws } 
    lowerOpen: Boolean; { Constant } 
    upperOpen: Boolean; { Constant } 
    function includes(key: Variant): Boolean; { Throws } 
    function only(value: Variant): JIDBKeyRange; { NewObject,Throws } 
    function lowerBound(lower: Variant; open: Boolean = False): JIDBKeyRange; { NewObject,Throws } 
    function upperBound(upper: Variant; open: Boolean = False): JIDBKeyRange; { NewObject,Throws } 
    function bound(lower: Variant; upper: Variant; lowerOpen: Boolean = False; upperOpen: Boolean = False): JIDBKeyRange; { NewObject,Throws } 
  end;

  // Exposed=( Window , Worker , System),Func=mozilla::dom::IndexedDatabaseManager::ExperimentalFeaturesEnabled
  JIDBLocaleAwareKeyRange = class external 'IDBLocaleAwareKeyRange' (JIDBKeyRange)
  public
    function bound(lower: Variant; upper: Variant; lowerOpen: Boolean = False; upperOpen: Boolean = False): JIDBLocaleAwareKeyRange; { NewObject,Throws } 
  end;

implementation

end.
