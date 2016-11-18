unit Mozilla.IDBRequest;

interface

type
  JIDBRequestReadyState = (pending, done);

  // Exposed=( Window , Worker , System)
  JIDBRequest = class external 'IDBRequest' (JEventTarget)
  public
    result: Variant; { Throws } 
    error: JDOMError; { Throws } 
    source: Union;
    transaction: JIDBTransaction;
    readyState: JIDBRequestReadyState;
    onsuccess: JEventHandler;
    onerror: JEventHandler;
  end;

implementation

end.
