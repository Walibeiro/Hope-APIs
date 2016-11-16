unit WHATWG.Fetch;

interface

uses
  ECMA.TypedArray, WHATWG.DOM, WHATWG.Spec;

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
		function formData: FormData; { NewObject } 
		function json: any; { NewObject } 
		function text: USVString; { NewObject } 
	end;

	TRequestInfo = Union;
	// Constructor( RequestInfo input , optional RequestInit init),Exposed=( Window , Worker)
	JRequest = class external 'Request'
	public
		method: String;
		url: String;
		headers: JHeaders; { SameObject } 
		type: JRequestType;
		destination: JRequestDestination;
		referrer: String;
		referrerPolicy: JReferrerPolicy;
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
		headers: JHeadersInit;
		body: TBodyInit;
		referrer: String;
		referrerPolicy: JReferrerPolicy;
		mode: JRequestMode;
		credentials: JRequestCredentials;
		cache: JRequestCache;
		redirect: JRequestRedirect;
		integrity: String;
		keepalive: Boolean;
		window: Variant;
	end;

	JRequestType = (, rtAudio, rtFont, rtImage, rtScript, rtStyle, rtTrack, rtVideo);

	JRequestDestination = (, rdDocument, rdEmbed, rdFont, rdImage, rdManifest, rdMedia, rdObject, rdReport, rdScript, rdServiceworker, rdSharedworker, rdStyle, rdWorker, rdXslt);

	JRequestMode = (rmNavigate, rmSame-origin, rmNo-cors, rmCors);

	JRequestCredentials = (rcOmit, rcSame-origin, rcInclude);

	JRequestCache = (rcDefault, rcNo-store, rcReload, rcNo-cache, rcForce-cache, rcOnly-if-cached);

	JRequestRedirect = (rrFollow, rrError, rrManual);

	// Constructor( optional ResponseBodyInit ? body = null , optional ResponseInit init),Exposed=( Window , Worker)
	JResponse = class external 'Response'
	public
		type: JResponseType;
		url: String;
		redirected: Boolean;
		status: Integer;
		ok: Boolean;
		statusText: String;
		headers: JHeaders; { SameObject } 
		body: JReadableStream;
		trailer: Headers; { SameObject } 
		function error: JResponse; { NewObject } 
		function redirect(url: String; status: Integer = 302): JResponse; { NewObject }
		function clone: JResponse; { NewObject } 
	end;

	JResponseInit = class external 'ResponseInit'
	public
		status: Integer;
		statusText: String;
		headers: JHeadersInit;
	end;

	JResponseType = (rtBasic, rtCors, rtDefault, rtError, rtOpaque, rtOpaqueredirect);

	JWindowOrWorkerGlobalScope = partial class external 'WindowOrWorkerGlobalScope'
	public
		function fetch(input: TRequestInfo): Response; overload; { NewObject } 
		function fetch(input: TRequestInfo; init: JRequestInit): Response; overload; { NewObject } 
	end;