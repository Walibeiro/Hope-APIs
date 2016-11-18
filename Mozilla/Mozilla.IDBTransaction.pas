unit Mozilla.IDBTransaction;

interface

type
  JIDBTransactionMode = (readonly, readwrite, readwriteflush, cleanup, versionchange);

  // Exposed=( Window , Worker , System)
  JIDBTransaction = class external 'IDBTransaction' (JEventTarget)
  public
    mode: JIDBTransactionMode; { Throws } 
    db: JIDBDatabase;
    error: JDOMError;
    onabort: JEventHandler;
    oncomplete: JEventHandler;
    onerror: JEventHandler;
    objectStoreNames: JDOMStringList;
    function objectStore(&name: String): JIDBObjectStore; { Throws } 
    procedure abort; { Throws } 
  end;

implementation

end.
