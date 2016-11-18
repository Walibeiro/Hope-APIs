unit Mozilla.IDBIndex;

interface

type
  JIDBIndexParameters = class external 'IDBIndexParameters'
  public
    unique: Boolean;
    multiEntry: Boolean;
    locale: String;
  end;

  // Exposed=( Window , Worker , System)
  JIDBIndex = class external 'IDBIndex'
  public
    name: String; { SetterThrows } 
    objectStore: JIDBObjectStore;
    keyPath: Variant; { Throws } 
    multiEntry: Boolean;
    unique: Boolean;
    locale: String; { Func=mozilla::dom::IndexedDatabaseManager::ExperimentalFeaturesEnabled } 
    isAutoLocale: Boolean; { Func=mozilla::dom::IndexedDatabaseManager::ExperimentalFeaturesEnabled } 
    function openCursor(; direction: JIDBCursorDirection = next): JIDBRequest; overload; { Throws } 
    function openCursor(range: Variant; direction: JIDBCursorDirection = next): JIDBRequest; overload; { Throws } 
    function openKeyCursor(; direction: JIDBCursorDirection = next): JIDBRequest; overload; { Throws } 
    function openKeyCursor(range: Variant; direction: JIDBCursorDirection = next): JIDBRequest; overload; { Throws } 
    function get(key: Variant): JIDBRequest; { Throws } 
    function getKey(key: Variant): JIDBRequest; { Throws } 
    function count: JIDBRequest; overload; { Throws } 
    function count(key: Variant): JIDBRequest; overload; { Throws } 
    function mozGetAll: JIDBRequest; overload; { Throws } 
    function mozGetAll(key: Variant): JIDBRequest; overload; { Throws } 
    function mozGetAll(key: Variant; limit: Integer { EnforceRange } ): JIDBRequest; overload; { Throws } 
    function mozGetAllKeys: JIDBRequest; overload; { Throws } 
    function mozGetAllKeys(key: Variant): JIDBRequest; overload; { Throws } 
    function mozGetAllKeys(key: Variant; limit: Integer { EnforceRange } ): JIDBRequest; overload; { Throws } 
    function getAll: JIDBRequest; overload; { Throws } 
    function getAll(key: Variant): JIDBRequest; overload; { Throws } 
    function getAll(key: Variant; limit: Integer { EnforceRange } ): JIDBRequest; overload; { Throws } 
    function getAllKeys: JIDBRequest; overload; { Throws } 
    function getAllKeys(key: Variant): JIDBRequest; overload; { Throws } 
    function getAllKeys(key: Variant; limit: Integer { EnforceRange } ): JIDBRequest; overload; { Throws } 
  end;

implementation

end.
