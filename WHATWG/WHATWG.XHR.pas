unit WHATWG.XHR;

interface

uses
  ECMA.TypedArray, WHATWG.DOM, WHATWG.HTML, W3C.FileAPI;

type
  // Exposed = (Window, DedicatedWorker, SharedWorker)
  JXMLHttpRequestEventTarget = class external 'XMLHttpRequestEventTarget' (JEventTarget)
  public
    onloadstart: TEventHandler;
    onprogress: TEventHandler;
    onabort: TEventHandler;
    onerror: TEventHandler;
    onload: TEventHandler;
    ontimeout: TEventHandler;
    onloadend: TEventHandler;
  end;

  // Exposed = (Window, DedicatedWorker, SharedWorker)
  JXMLHttpRequestUpload = class external 'XMLHttpRequestUpload' (JXMLHttpRequestEventTarget);

  JXMLHttpRequestResponseType = String;
  JXMLHttpRequestResponseTypeHelper = strict helper for JXMLHttpRequestResponseType
    const ArrayBuffer = 'arraybuffer';
    const Blob = 'blob';
    const Document = 'document';
    const JSON = 'json';
    const Text = 'text';
  end;

  // Exposed = (Window, DedicatedWorker, SharedWorker)
  JXMLHttpRequest = class external 'XMLHttpRequest' (JXMLHttpRequestEventTarget)
  const
    UNSENT: Integer = 0;
    OPENED: Integer = 1;
    HEADERS_RECEIVED: Integer = 2;
    LOADING: Integer = 3;
    DONE: Integer = 4;
  public
    onreadystatechange: TEventHandler;
    readyState: Integer;
    timeout: Integer;
    withCredentials: Boolean;
    upload: JXMLHttpRequestUpload; { SameObject }
    responseURL: String;
    status: Integer;
    statusText: String;
    responseType: JXMLHttpRequestResponseType;
    response: Variant;
    responseText: String;
    responseXML: JDocument; { Exposed=Window }
    constructor Create;
    procedure open(&method: String; url: String); overload;
    procedure open(&method: String; url: String; async: Boolean); overload;
    procedure open(&method: String; url: String; async: Boolean; username: String); overload;
    procedure open(&method: String; url: String; async: Boolean; username, password: String); overload;
    procedure setRequestHeader(&name, value: String);
    procedure send; overload;
    procedure send(body: JDocument); overload;
    procedure send(body: String); overload;
    procedure send(body: JBlob); overload;
    procedure send(body: JArrayBufferView); overload;
    procedure send(body: JArrayBuffer); overload;
//    procedure send(body: JReadableStream); overload;
    procedure abort;
    function getResponseHeader(&name: String): String;
    function getAllResponseHeaders: String;
    procedure overrideMimeType(mime: String);
  end;

  TFormDataEntryValue = Variant; // TODO

  JProgressEventInit = class external 'ProgressEventInit' (JEventInit)
  public
    lengthComputable: Boolean;
    loaded: Integer;
    total: Integer;
  end;

  // Exposed = (Window, DedicatedWorker, SharedWorker)
  JProgressEvent = class external 'ProgressEvent' (JEvent)
  public
    lengthComputable: Boolean;
    loaded: Integer;
    total: Integer;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JProgressEventInit); overload;
  end;

  // Exposed = (Window, Worker)
  JFormData = class external 'FormData'
  public
    constructor Create; overload;
    constructor Create(form: JHTMLFormElement); overload;
    procedure append(&name: String; value: String); overload;
    procedure append(&name: String; value: JBlob); overload;
    procedure append(&name: String; value: JBlob; filename: String); overload;
    procedure delete(&name: String);
    function get(&name: String): TFormDataEntryValue;
    function getAll(&name: String): array of TFormDataEntryValue;
    function has(&name: String): Boolean;
    procedure set(&name: String; value: String); overload;
    procedure set(&name: String; value: JBlob); overload;
    procedure set(&name: String; value: JBlob; filename: String); overload;
  end;