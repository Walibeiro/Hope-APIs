unit Mozilla.IDBFactory;

interface

type
  JIDBOpenDBOptions = class external 'IDBOpenDBOptions'
  public
    version: Integer; { EnforceRange } 
    storage: JStorageType;
  end;

  // Exposed=( Window , Worker , System)
  JIDBFactory = class external 'IDBFactory'
  public
    function open(&name: String; version: Integer { EnforceRange } ): JIDBOpenDBRequest; { Throws } 
    function open(&name: String): JIDBOpenDBRequest; overload; { Throws } 
    function open(&name: String; options: JIDBOpenDBOptions): JIDBOpenDBRequest; overload; { Throws } 
    function deleteDatabase(&name: String): JIDBOpenDBRequest; overload; { Throws } 
    function deleteDatabase(&name: String; options: JIDBOpenDBOptions): JIDBOpenDBRequest; overload; { Throws } 
    function cmp(first: Variant; second: Variant): Integer; { Throws } 
    function openForPrincipal(principal: JPrincipal; &name: String; version: Integer { EnforceRange } ): JIDBOpenDBRequest; { Throws,ChromeOnly } 
    function openForPrincipal(principal: JPrincipal; &name: String): JIDBOpenDBRequest; overload; { Throws,ChromeOnly } 
    function openForPrincipal(principal: JPrincipal; &name: String; options: JIDBOpenDBOptions): JIDBOpenDBRequest; overload; { Throws,ChromeOnly } 
    function deleteForPrincipal(principal: JPrincipal; &name: String): JIDBOpenDBRequest; overload; { Throws,ChromeOnly } 
    function deleteForPrincipal(principal: JPrincipal; &name: String; options: JIDBOpenDBOptions): JIDBOpenDBRequest; overload; { Throws,ChromeOnly } 
  end;

implementation

end.
