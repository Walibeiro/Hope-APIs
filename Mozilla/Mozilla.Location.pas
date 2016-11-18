unit Mozilla.Location;

interface

type
  // Unforgeable,NonOrdinaryGetPrototypeOf
  JLocation = class external 'Location'
  public
    href: JUSVString; { Throws,CrossOriginWritable,NeedsSubjectPrincipal } 
    origin: JUSVString; { Throws,NeedsSubjectPrincipal } 
    protocol: JUSVString; { Throws,NeedsSubjectPrincipal } 
    host: JUSVString; { Throws,NeedsSubjectPrincipal } 
    hostname: JUSVString; { Throws,NeedsSubjectPrincipal } 
    port: JUSVString; { Throws,NeedsSubjectPrincipal } 
    pathname: JUSVString; { Throws,NeedsSubjectPrincipal } 
    search: JUSVString; { Throws,NeedsSubjectPrincipal } 
    hash: JUSVString; { Throws,NeedsSubjectPrincipal } 
    procedure assign(url: JUSVString); { Throws,UnsafeInPrerendering,NeedsSubjectPrincipal } 
    procedure replace(url: JUSVString); { Throws,CrossOriginCallable,UnsafeInPrerendering,NeedsSubjectPrincipal } 
    procedure reload(forceget: Boolean = False); { Throws,UnsafeInPrerendering,NeedsSubjectPrincipal } 
  end;

implementation

end.
