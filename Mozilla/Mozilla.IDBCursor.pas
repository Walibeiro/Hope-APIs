unit Mozilla.IDBCursor;

interface

type
  JIDBCursorDirection = (next, nextunique, prev, prevunique);

  // Exposed=( Window , Worker , System)
  JIDBCursor = class external 'IDBCursor'
  public
    source: Union;
    direction: JIDBCursorDirection;
    key: Variant; { Throws } 
    primaryKey: Variant; { Throws } 
    function update(value: Variant): JIDBRequest; { Throws } 
    procedure advance(count: Integer { EnforceRange } ); { Throws } 
    procedure continue; overload; { Throws } 
    procedure continue(key: Variant); overload; { Throws } 
    procedure continuePrimaryKey(key: Variant; primaryKey: Variant); { Throws } 
    function delete: JIDBRequest; { Throws } 
  end;

  // Exposed=( Window , Worker , System)
  JIDBCursorWithValue = class external 'IDBCursorWithValue' (JIDBCursor)
  public
    value: Variant; { Throws } 
  end;

implementation

end.
