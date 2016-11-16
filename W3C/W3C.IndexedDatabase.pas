unit W3C.IndexedDatabase;

interface

uses
  W3C.DOM4;

type
  JIDBTransactionMode = String;
  JIDBTransactionModeHelper = strict helper for JIDBTransactionMode
    const ReadOnly = 'readonly';
    const ReadWrite = 'readwrite';
    const VersionChange = 'versionchange';
  end;

  JIDBRequestReadyState = String;
  JIDBRequestReadyStateHelper = strict helper for JIDBRequestReadyState
    const Pending = 'pending';
    const Done = 'done';
  end;

  JIDBKeyRange = class external 'IDBKeyRange'
  public
    lower: Variant;
    upper: Variant;
    lowerOpen: Boolean;
    upperOpen: Boolean;
    function only(value: Variant): JIDBKeyRange;
    function lowerBound(lower: Variant; open: Boolean = False): JIDBKeyRange;
    function upperBound(upper: Variant; open: Boolean = False): JIDBKeyRange;
    function bound(lower: Variant; upper: Variant; lowerOpen: Boolean = False; upperOpen: Boolean = False): JIDBKeyRange;
  end;

  JIDBCursorDirection = String;
  JIDBCursorDirectionHelper = strict helper for JIDBCursorDirection
    const next = 'next';
    const nextunique = 'nextunique';
    const prev = 'prev';
    const prevunique = 'prevunique';
  end;

  JIDBObjectStoreParameters = class external 'IDBObjectStoreParameters'
  public
    keyPath: Variant; // TODO
    autoIncrement: Boolean;
  end;

  JIDBIndexParameters = class external 'IDBIndexParameters'
  public
    unique: Boolean;
    multiEntry: Boolean;
  end;

  JIDBVersionChangeEventInit = class external 'IDBVersionChangeEventInit' (JEventInit)
  public
    oldVersion: Integer;
    newVersion: Integer;
  end;

  JIDBTransaction = partial class external 'IDBTransaction' (JEventTarget)
  public
    mode: JIDBTransactionMode;
    error: JDOMError;
    onabort: TEventHandler;
    oncomplete: TEventHandler;
    onerror: TEventHandler;
    procedure abort;
  end;

  JIDBRequest = class external 'IDBRequest' (JEventTarget)
  public
    result: Variant;
    error: JDOMError;
    source: Variant; // TODO
    transaction: JIDBTransaction;
    readyState: JIDBRequestReadyState;
    onsuccess: TEventHandler;
    onerror: TEventHandler;
  end;

  JIDBOpenDBRequest = class external 'IDBOpenDBRequest' (JIDBRequest)
  public
    onblocked: TEventHandler;
    onupgradeneeded: TEventHandler;
  end;

  JIDBVersionChangeEvent = class external 'IDBVersionChangeEvent' (JEvent)
  public
    oldVersion: Integer;
    newVersion: Integer;
    constructor Create(&type: String; eventInitDict: JIDBVersionChangeEventInit);
  end;

  JIDBFactory = class external 'IDBFactory'
  public
    function open(&name: String): JIDBOpenDBRequest; overload;
    function open(&name: String; version: Integer { EnforceRange } ): JIDBOpenDBRequest; overload;
    function deleteDatabase(&name: String): JIDBOpenDBRequest;
    function cmp(first: Variant; second: Variant): Integer;
  end;

  // NoInterfaceObject
  JIDBEnvironment = class external 'IDBEnvironment'
  public
    indexedDB: JIDBFactory;
  end;

  JIDBIndex = partial class external 'IDBIndex'
  public
    name: String;
    multiEntry: Boolean;
    unique: Boolean;
  end;

  JIDBObjectStore = class external 'IDBObjectStore'
  public
    name: String;
    keyPath: Variant;
    indexNames: JDOMStringList;
    transaction: JIDBTransaction;
    autoIncrement: Boolean;
    function put(value: Variant): JIDBRequest; overload;
    function put(value: Variant; key: Variant): JIDBRequest; overload;
    function add(value: Variant): JIDBRequest; overload;
    function add(value: Variant; key: Variant): JIDBRequest; overload;
    function delete(key: Variant): JIDBRequest;
    function get(key: Variant): JIDBRequest;
    function clear: JIDBRequest;
    function openCursor(direction: JIDBCursorDirection = 'next'): JIDBRequest; overload;
    function openCursor(range: Variant; direction: JIDBCursorDirection = 'next'): JIDBRequest; overload;
    function createIndex(&name: String; keyPath: Variant): JIDBIndex; overload; // TODO: keyPath
    function createIndex(&name: String; keyPath: Variant; optionalParameters: JIDBIndexParameters): JIDBIndex; overload; // TODO: keyPath
    function index(&name: String): JIDBIndex;
    procedure deleteIndex(indexName: String);
    function count: JIDBRequest; overload;
    function count(key: Variant): JIDBRequest; overload;
  end;

  JIDBDatabase = class external 'IDBDatabase' (JEventTarget)
  public
    name: String;
    version: Integer;
    objectStoreNames: JDOMStringList;
    onabort: TEventHandler;
    onerror: TEventHandler;
    onversionchange: TEventHandler;
    function createObjectStore(&name: String): JIDBObjectStore; overload;
    function createObjectStore(&name: String; optionalParameters: JIDBObjectStoreParameters): JIDBObjectStore; overload;
    procedure deleteObjectStore(&name: String);
    function transaction(storeNames: Variant; mode: JIDBTransactionMode = 'readonly'): JIDBTransaction; // TODO: storeNames
    procedure close;
  end;

  JIDBIndex = partial class external 'IDBIndex'
  public
    objectStore: JIDBObjectStore;
    keyPath: Variant;
    function openCursor(direction: JIDBCursorDirection = 'next'): JIDBRequest; overload;
    function openCursor(range: Variant; direction: JIDBCursorDirection = 'next'): JIDBRequest; overload;
    function openKeyCursor(direction: JIDBCursorDirection = 'next'): JIDBRequest; overload;
    function openKeyCursor(range: Variant; direction: JIDBCursorDirection = 'next'): JIDBRequest; overload;
    function get(key: Variant): JIDBRequest;
    function getKey(key: Variant): JIDBRequest;
    function count: JIDBRequest; overload;
    function count(key: Variant): JIDBRequest; overload;
  end;

  JIDBCursor = class external 'IDBCursor'
  public
    source: Variant; // TODO
    direction: JIDBCursorDirection;
    key: Variant;
    primaryKey: Variant;
    function update(value: Variant): JIDBRequest;
    procedure advance(count: Integer { EnforceRange } );
    procedure &continue; overload;
    procedure &continue(key: Variant); overload;
    function delete: JIDBRequest;
  end;

  JIDBCursorWithValue = class external 'IDBCursorWithValue' (JIDBCursor)
  public
    value: Variant;
  end;

  JIDBTransaction = partial class external 'IDBTransaction' (JEventTarget)
  public
    db: JIDBDatabase;
    function objectStore(&name: String): JIDBObjectStore;
  end;