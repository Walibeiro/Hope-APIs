unit Mozilla.IDBVersionChangeEvent;

interface

type
  JIDBVersionChangeEventInit = class external 'IDBVersionChangeEventInit' (JEventInit)
  public
    oldVersion: Integer;
    newVersion: Integer;
  end;

  // Constructor( DOMString type , optional IDBVersionChangeEventInit eventInitDict),Exposed=( Window , Worker , System)
  JIDBVersionChangeEvent = class external 'IDBVersionChangeEvent' (JEvent)
  public
    oldVersion: Integer;
    newVersion: Integer;
  end;

implementation

end.
