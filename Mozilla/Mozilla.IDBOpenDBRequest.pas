unit Mozilla.IDBOpenDBRequest;

interface

type
  // Exposed=( Window , Worker , System)
  JIDBOpenDBRequest = class external 'IDBOpenDBRequest' (JIDBRequest)
  public
    onblocked: JEventHandler;
    onupgradeneeded: JEventHandler;
  end;

implementation

end.
