unit Mozilla.Storage;

interface

type
  JStorage = class external 'Storage'
  public
    length: Integer; { Throws,NeedsSubjectPrincipal } 
    isSessionOnly: Boolean; { ChromeOnly } 
    function key(&index: Integer): String; { Throws,NeedsSubjectPrincipal } 
    function getItem(key: String): String; { Throws,NeedsSubjectPrincipal } 
    procedure setItem(key: String; value: String); { Throws,NeedsSubjectPrincipal } 
    procedure removeItem(key: String); { Throws,NeedsSubjectPrincipal } 
    procedure clear; { Throws,NeedsSubjectPrincipal } 
  end;

implementation

end.
