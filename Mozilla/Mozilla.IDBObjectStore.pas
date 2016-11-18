unit Mozilla.IDBObjectStore;

interface

type
  JIDBObjectStoreParameters = class external 'IDBObjectStoreParameters'
  public
    keyPath: Union;
    autoIncrement: Boolean;
  end;

  // Exposed=( Window , Worker , System)
  JIDBObjectStore = class external 'IDBObjectStore'
  public
    name: String; { SetterThrows } 
    keyPath: Variant; { Throws } 
    indexNames: JDOMStringList;
    transaction: JIDBTransaction;
    autoIncrement: Boolean;
    function put(value: Variant): JIDBRequest; overload; { Throws } 
    function put(value: Variant; key: Variant): JIDBRequest; overload; { Throws } 
    function add(value: Variant): JIDBRequest; overload; { Throws } 
    function add(value: Variant; key: Variant): JIDBRequest; overload; { Throws } 
    function delete(key: Variant): JIDBRequest; { Throws } 
    function get(key: Variant): JIDBRequest; { Throws } 
    function getKey(key: Variant): JIDBRequest; { Throws } 
    function clear: JIDBRequest; { Throws } 
    function openCursor(; direction: JIDBCursorDirection = next): JIDBRequest; overload; { Throws } 
    function openCursor(range: Variant; direction: JIDBCursorDirection = next): JIDBRequest; overload; { Throws } 
    function createIndex(&name: String; keyPath: Union): JIDBIndex; overload; { Throws } 
    function createIndex(&name: String; keyPath: Union; optionalParameters: JIDBIndexParameters): JIDBIndex; overload; { Throws } 
    function index(&name: String): JIDBIndex; { Throws } 
    procedure deleteIndex(indexName: String); { Throws } 
    function count: JIDBRequest; overload; { Throws } 
    function count(key: Variant): JIDBRequest; overload; { Throws } 
    function mozGetAll: JIDBRequest; overload; { Throws } 
    function mozGetAll(key: Variant): JIDBRequest; overload; { Throws } 
    function mozGetAll(key: Variant; limit: Integer { EnforceRange } ): JIDBRequest; overload; { Throws } 
    function getAll: JIDBRequest; overload; { Throws } 
    function getAll(key: Variant): JIDBRequest; overload; { Throws } 
    function getAll(key: Variant; limit: Integer { EnforceRange } ): JIDBRequest; overload; { Throws } 
    function getAllKeys: JIDBRequest; overload; { Throws } 
    function getAllKeys(key: Variant): JIDBRequest; overload; { Throws } 
    function getAllKeys(key: Variant; limit: Integer { EnforceRange } ): JIDBRequest; overload; { Throws } 
    function openKeyCursor(; direction: JIDBCursorDirection = next): JIDBRequest; overload; { Throws } 
    function openKeyCursor(range: Variant; direction: JIDBCursorDirection = next): JIDBRequest; overload; { Throws } 
  end;

implementation

end.
