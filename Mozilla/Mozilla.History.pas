unit Mozilla.History;

interface

type
  JScrollRestoration = (srAuto, srManual);

  JHistory = class external 'History'
  public
    length: Integer; { Throws } 
    scrollRestoration: JScrollRestoration; { Throws } 
    state: Variant; { Throws } 
    procedure go(delta: Integer = 0); { Throws,UnsafeInPrerendering } 
    procedure back; { Throws,UnsafeInPrerendering } 
    procedure forward; { Throws,UnsafeInPrerendering } 
    procedure pushState(data: Variant; title: String; url: String = ); { Throws } 
    procedure replaceState(data: Variant; title: String; url: String = ); { Throws } 
  end;

implementation

end.
