unit WHATWG.Fetch;

interface

uses
  ECMA.TypedArray, WHATWG.DOM, WHATWG.HTML, W3C.FileAPI;

type
  // Constructor( optional HeadersInit init),Exposed=( Window , Worker)
  JHeaders = class external 'Headers'
  public
    procedure append(&name: String; value: String);
    procedure delete(&name: String);
    function get(&name: String): String;
    function has(&name: String): Boolean;
    procedure set(&name: String; value: String);
//  iterable<ByteString, ByteString>;
  end;

  TBodyInit = Variant;
  TResponseBodyInit = Variant;

  // NoInterfaceObject,Exposed=( Window , Worker)
  JBody = class external 'Body'
  public
    bodyUsed: Boolean;
    function arrayBuffer: JArrayBuffer; { NewObject }
    function blob: JBlob; { NewObject }
// TODO    function formData: FormData; { NewObject }
    function json: Variant; { NewObject }
    function text: String; { NewObject }
  end;

  TRequestInfo = Variant; // TODO

  JRequestType = String;
  JRequestTypeHelper = strict helper for JRequestType
    const Audio = 'audio';
    const Font = 'font';
    const Image = 'image';
    const Script = 'script';
    const Style = 'style';
    const Track = 'track';
    const Video = 'video';
  end;

  JRequestDestination = String;
  JRequestDestinationHelper = strict helper for JRequestDestination
    const Document = 'document';
    const Embed = 'embed';
    const Font = 'font';
    const Image = 'image';
    const Manifest = 'manifest';
    const Media = 'media';
    const &Object = 'object';
    const Report = 'report';
    const Script = 'script';
    const Serviceworker = 'service-worker';
    const Sharedworker = 'shared-worker';
    const Style = 'style';
    const Worker = 'worker';
    const Xslt = 'xslt';
  end;

  JRequestMode = String;
  JRequestModeHelper = strict helper for JRequestMode
    const Navigate = 'navigate';
    const SameOrigin = 'same-origin';
    const NoOrigin = 'no-origin';
    const Cors = 'cors';
  end;

  JRequestCredentials = String;
  JRequestCredentialsHelper = strict helper for JRequestCredentials
    const Omit = 'omit';
    const SameOrigin = 'same-origin';
    const Incl = 'include';
  end;

  JRequestCache = String;
  JRequestCacheHelper = strict helper for JRequestCache
    const Default = 'default';
    const NoStore = 'no-store';
    const Reload = 'reload';
    const NoCache = 'no-cache';
    const ForceCache = 'force-cache';
    const OnlyIfCached = 'only-if-cached';
  end;

  JRequestRedirect = String;
  JRequestRedirectHelper = strict helper for JRequestRedirect
    const Follow = 'follow';
    const Error = 'error';
    const Manual = 'manual';
  end;

  // Constructor( RequestInfo input , optional RequestInit init),Exposed=( Window , Worker)
  JRequest = class external 'Request'
  public
    &method: String;
    url: String;
    headers: JHeaders; { SameObject }
    &type: JRequestType;
    destination: JRequestDestination;
    referrer: String;
// TODO    referrerPolicy: JReferrerPolicy;
    mode: JRequestMode;
    credentials: JRequestCredentials;
    cache: JRequestCache;
    redirect: JRequestRedirect;
    integrity: String;
    keepalive: Boolean;
    function clone: JRequest; { NewObject }
  end;

  JRequestInit = class external 'RequestInit'
  public
    &method: String;
// TODO    headers: JHeadersInit;
    body: TBodyInit;
    referrer: String;
// TODO    referrerPolicy: JReferrerPolicy;
    mode: JRequestMode;
    credentials: JRequestCredentials;
    cache: JRequestCache;
    redirect: JRequestRedirect;
    integrity: String;
    keepalive: Boolean;
    window: Variant;
  end;

  JResponseType = String;
  JResponseTypeHelper = strict helper for JResponseType
    const Basic = 'basic';
    const Cors = 'cors';
    const Default = 'default';
    const Error = 'error';
    const Opaque = 'opaque';
    const OpaqueRedirect = 'opaque-redirect';
  end;

  // Constructor( optional ResponseBodyInit ? body = null , optional ResponseInit init),Exposed=( Window , Worker)
  JResponse = class external 'Response'
  public
    &type: JResponseType;
    url: String;
    redirected: Boolean;
    status: Integer;
    ok: Boolean;
    statusText: String;
    headers: JHeaders; { SameObject }
// TODO    body: JReadableStream;
    trailer: JHeaders; { SameObject }
    function error: JResponse; { NewObject }
    function redirect(url: String; status: Integer = 302): JResponse; { NewObject }
    function clone: JResponse; { NewObject }
  end;

  JResponseInit = class external 'ResponseInit'
  public
    status: Integer;
    statusText: String;
// TODO    headers: JHeadersInit;
  end;

  JWindowOrWorkerGlobalScope = partial class external 'WindowOrWorkerGlobalScope'
  public
    function fetch(input: TRequestInfo): JResponse; overload; { NewObject }
    function fetch(input: TRequestInfo; init: JRequestInit): JResponse; overload; { NewObject }
  end;