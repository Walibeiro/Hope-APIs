unit Mozilla.Response;

interface

type
  // Constructor( optional BodyInit body , optional ResponseInit init),Exposed=( Window , Worker)
  JResponse = class external 'Response'
  public
    type: JResponseType;
    url: JUSVString;
    redirected: Boolean;
    status: Integer;
    ok: Boolean;
    statusText: JByteString;
    headers: JHeaders; { SameObject } 
    function error: JResponse; { NewObject } 
    function redirect(url: JUSVString; status: Integer = 302): JResponse; { Throws,NewObject } 
    function clone: JResponse; { Throws,NewObject } 
    function cloneUnfiltered: JResponse; { ChromeOnly,NewObject,Throws } 
  end;

  JResponseInit = class external 'ResponseInit'
  public
    status: Integer;
    statusText: JByteString;
    headers: JHeadersInit;
  end;

  JResponseType = (rtBasic, rtCors, rtDefault, rtError, rtOpaque, rtOpaqueredirect);

implementation

end.
