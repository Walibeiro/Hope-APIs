unit Mozilla.Request;

interface

type
  TRequestInfo = Union;
  TnsContentPolicyType = Integer;
  // Constructor( RequestInfo input , optional RequestInit init),Exposed=( Window , Worker)
  JRequest = class external 'Request'
  public
    method: JByteString;
    url: JUSVString;
    headers: JHeaders; { SameObject } 
    context: JRequestContext; { Func=mozilla::dom::Request::RequestContextEnabled } 
    referrer: JUSVString;
    referrerPolicy: JReferrerPolicy;
    mode: JRequestMode;
    credentials: JRequestCredentials;
    cache: JRequestCache;
    redirect: JRequestRedirect;
    integrity: String;
    function clone: JRequest; { Throws,NewObject } 
    procedure overrideContentPolicyType(context: TnsContentPolicyType); { ChromeOnly } 
  end;

  JRequestInit = class external 'RequestInit'
  public
    &method: JByteString;
    headers: JHeadersInit;
    body: JBodyInit;
    referrer: JUSVString;
    referrerPolicy: JReferrerPolicy;
    mode: JRequestMode;
    credentials: JRequestCredentials;
    cache: JRequestCache;
    redirect: JRequestRedirect;
    integrity: String;
  end;

  JRequestContext = (rcAudio, rcBeacon, rcCspreport, rcDownload, rcEmbed, rcEventsource, rcFavicon, rcFetch, rcFont, rcForm, rcFrame, rcHyperlink, rcIframe, rcImage, rcImageset, rcImport, rcInternal, rcLocation, rcManifest, rcObject, rcPing, rcPlugin, rcPrefetch, rcScript, rcSharedworker, rcSubresource, rcStyle, rcTrack, rcVideo, rcWorker, rcXmlhttprequest, rcXslt);

  JRequestMode = (rmSame-origin, rmNo-cors, rmCors, rmNavigate);

  JRequestCredentials = (rcOmit, rcSame-origin, rcInclude);

  JRequestCache = (rcDefault, rcNo-store, rcReload, rcNo-cache, rcForce-cache, rcOnly-if-cached);

  JRequestRedirect = (rrFollow, rrError, rrManual);

  JReferrerPolicy = (, rpNo-referrer, rpNo-referrer-when-downgrade, rpOrigin, rpOrigin-when-cross-origin, rpUnsafe-url);

implementation

end.
