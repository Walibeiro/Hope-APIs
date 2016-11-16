unit W3C.FileAPI;

interface

uses
  ECMA.TypedArray, W3C.DOM4;

type
  JBlobPropertyBag = class external 'BlobPropertyBag'
  public
    &type: String;
  end;

  // Exposed = (Window, Worker)
  JBlob = class external 'Blob'
  public
    size: Integer;
    &type: String;
    isClosed: Boolean;
    constructor Create; overload;
    constructor Create(blobParts: JArrayBuffer); overload;
    constructor Create(blobParts: JArrayBuffer; Options: JBlobPropertyBag); overload;
    constructor Create(blobParts: JArrayBufferView); overload;
    constructor Create(blobParts: JArrayBufferView; options: JBlobPropertyBag); overload;
    constructor Create(blobParts: JBlob); overload;
    constructor Create(blobParts: JBlob; Options: JBlobPropertyBag); overload;
    constructor Create(blobParts: String); overload;
    constructor Create(blobParts: String; Options: JBlobPropertyBag); overload;
    function slice: JBlob; overload;
    function slice(start: Integer { Clamp } ): JBlob; overload;
    function slice(start: Integer { Clamp } ; &end: Integer { Clamp } ): JBlob; overload;
    function slice(start: Integer { Clamp } ; &end: Integer { Clamp } ; contentType: String): JBlob; overload;
    procedure close;
  end;

  // Constructor( sequence <( Blob or DOMString or ArrayBufferView or ArrayBuffer)>fileBits,[ EnsureUTF16]DOMStringfileName,optionalFilePropertyBagoptions)
  // Exposed = (Window, Worker)
  JFile = class external 'File' (JBlob)
  public
    name: String;
    lastModified: Integer;
  end;

  JFilePropertyBag = class external 'FilePropertyBag'
  public
    &type: String;
    lastModified: Integer;
  end;

  // Exposed = (Window, Worker)
  JFileList = class external 'FileList'
  public
    length: Integer;
    function item(&index: Integer): JFile;
  end;

  // Exposed = (Window, Worker)
  JFileReader = class external 'FileReader' (JEventTarget)
  const 
    &EMPTY: Integer = 0;
    LOADING: Integer = 1;
    DONE: Integer = 2;
  public
    readyState: Integer;
    result: Variant;
    error: JDOMError;
    onloadstart: TEventHandler;
    onprogress: TEventHandler;
    onload: TEventHandler;
    onabort: TEventHandler;
    onerror: TEventHandler;
    onloadend: TEventHandler;
    constructor Create;
    procedure readAsArrayBuffer(blob: JBlob);
    procedure readAsText(blob: JBlob); overload;
    procedure readAsText(blob: JBlob; label: String); overload;
    procedure readAsDataURL(blob: JBlob);
    procedure abort;
  end;

  // Exposed = Worker
  JFileReaderSync = class external 'FileReaderSync'
  public
    constructor Create;
    function readAsArrayBuffer(blob: JBlob): JArrayBuffer;
    function readAsText(blob: JBlob): String; overload;
    function readAsText(blob: JBlob; label: String): String; overload;
    function readAsDataURL(blob: JBlob): String;
  end;

  JURL = partial class external 'URL'
  public
    function createObjectURL(blob: JBlob): String;
    function createFor(blob: JBlob): String;
    procedure revokeObjectURL(url: String);
  end;