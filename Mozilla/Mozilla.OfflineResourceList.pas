unit Mozilla.OfflineResourceList;

interface

type
  JOfflineResourceList = class external 'OfflineResourceList' (JEventTarget)
  const 
    UNCACHED: Integer = 0;
    IDLE: Integer = 1;
    CHECKING: Integer = 2;
    DOWNLOADING: Integer = 3;
    UPDATEREADY: Integer = 4;
    OBSOLETE: Integer = 5;
  public
    status: Integer; { Throws,UseCounter } 
    onchecking: JEventHandler; { UseCounter } 
    onerror: JEventHandler; { UseCounter } 
    onnoupdate: JEventHandler; { UseCounter } 
    ondownloading: JEventHandler; { UseCounter } 
    onprogress: JEventHandler; { UseCounter } 
    onupdateready: JEventHandler; { UseCounter } 
    oncached: JEventHandler; { UseCounter } 
    onobsolete: JEventHandler; { UseCounter } 
    mozItems: JDOMStringList; { Throws } 
    mozLength: Integer; { Throws } 
    procedure update; { Throws,UseCounter } 
    procedure swapCache; { Throws,UseCounter } 
    function mozHasItem(uri: String): Boolean; { Throws } 
    function mozItem(&index: Integer): String; { Throws } 
    procedure mozAdd(uri: String); { Throws } 
    procedure mozRemove(uri: String); { Throws } 
  end;

implementation

end.
