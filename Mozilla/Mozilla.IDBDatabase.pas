unit Mozilla.IDBDatabase;

interface

type
  // Exposed=( Window , Worker , System)
  JIDBDatabase = class external 'IDBDatabase' (JEventTarget)
  public
    name: String;
    version: Integer;
    objectStoreNames: JDOMStringList;
    onabort: JEventHandler;
    onclose: JEventHandler;
    onerror: JEventHandler;
    onversionchange: JEventHandler;
    storage: JStorageType; { Func=mozilla::dom::IndexedDatabaseManager::ExperimentalFeaturesEnabled } 
    function createObjectStore(&name: String): JIDBObjectStore; overload; { Throws } 
    function createObjectStore(&name: String; optionalParameters: JIDBObjectStoreParameters): JIDBObjectStore; overload; { Throws } 
    procedure deleteObjectStore(&name: String); { Throws } 
    function transaction(storeNames: Union; mode: JIDBTransactionMode = readonly): JIDBTransaction; { Throws } 
    procedure close;
    function createMutableFile(&name: String): JIDBRequest; overload; { Exposed=Window,Throws } 
    function createMutableFile(&name: String; &type: String): JIDBRequest; overload; { Exposed=Window,Throws } 
    function mozCreateFileHandle(&name: String): JIDBRequest; overload; { Exposed=Window,Throws } 
    function mozCreateFileHandle(&name: String; &type: String): JIDBRequest; overload; { Exposed=Window,Throws } 
  end;

implementation

end.
