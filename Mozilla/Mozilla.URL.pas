unit Mozilla.URL;

interface

type
  // Constructor( DOMString url , URL base),Constructor( DOMString url , optional DOMString base),Exposed=( Window , Worker , WorkerDebugger)
  JURL = class external 'URL'
  public
    href: JUSVString; { Throws } 
    origin: JUSVString; { Throws } 
    protocol: JUSVString; { Throws } 
    username: JUSVString; { Throws } 
    password: JUSVString; { Throws } 
    host: JUSVString; { Throws } 
    hostname: JUSVString; { Throws } 
    port: JUSVString; { Throws } 
    pathname: JUSVString; { Throws } 
    search: JUSVString; { Throws } 
    searchParams: JURLSearchParams;
    hash: JUSVString; { Throws } 
    function createObjectURL(blob: JBlob): String; overload; { Throws } 
    function createObjectURL(blob: JBlob; options: JobjectURLOptions): String; overload; { Throws } 
    function createObjectURL(stream: JMediaStream): String; overload; { Throws } 
    function createObjectURL(stream: JMediaStream; options: JobjectURLOptions): String; overload; { Throws } 
    procedure revokeObjectURL(url: String); { Throws } 
    function isValidURL(url: String): Boolean; { ChromeOnly,Throws } 
    function createObjectURL(source: JMediaSource): String; overload; { Throws } 
    function createObjectURL(source: JMediaSource; options: JobjectURLOptions): String; overload; { Throws } 
  end;

  JobjectURLOptions = class external 'objectURLOptions'
  public
  end;

implementation

end.
