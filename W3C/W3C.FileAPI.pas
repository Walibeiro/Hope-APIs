unit W3C.FileAPI;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.Html5;

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
    constructor Create(blobParts: array of JArrayBuffer); overload;
    constructor Create(blobParts: array of JArrayBuffer; Options: JBlobPropertyBag); overload;
    constructor Create(blobParts: array of JArrayBufferView); overload;
    constructor Create(blobParts: array of JArrayBufferView; options: JBlobPropertyBag); overload;
    constructor Create(blobParts: array of JBlob); overload;
    constructor Create(blobParts: array of JBlob; Options: JBlobPropertyBag); overload;
    constructor Create(blobParts: array of String); overload;
    constructor Create(blobParts: array of String; Options: JBlobPropertyBag); overload;
    function slice: JBlob; overload;
    function slice(start: Integer { Clamp } ): JBlob; overload;
    function slice(start: Integer { Clamp } ; &end: Integer { Clamp } ): JBlob; overload;
    function slice(start: Integer { Clamp } ; &end: Integer { Clamp } ; contentType: String): JBlob; overload;
    procedure close;
  end;

  JFilePropertyBag = class external 'FilePropertyBag'
  public
    &type: String;
    lastModified: Integer;
  end;

  // Exposed = (Window, Worker)
  JFile = class external 'File' (JBlob)
  public
    name: String;
    lastModified: Integer;
    constructor Create(fileBits: array of JBlob); overload;
    constructor Create(fileBits: array of JBlob; fileName: String); overload;
    constructor Create(fileBits: array of JBlob; fileName: String; options: JFilePropertyBag); overload;
    constructor Create(fileBits: array of String); overload;
    constructor Create(fileBits: array of String; fileName: String); overload;
    constructor Create(fileBits: array of String; fileName: String; options: JFilePropertyBag); overload;
    constructor Create(fileBits: array of JArrayBufferView); overload;
    constructor Create(fileBits: array of JArrayBufferView; fileName: String); overload;
    constructor Create(fileBits: array of JArrayBufferView; fileName: String; options: JFilePropertyBag); overload;
    constructor Create(fileBits: array of JArrayBuffer); overload;
    constructor Create(fileBits: array of JArrayBuffer; fileName: String); overload;
    constructor Create(fileBits: array of JArrayBuffer; fileName: String; options: JFilePropertyBag); overload;
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
    class function createObjectURL(blob: JBlob): String;
    class function createFor(blob: JBlob): String;
    procedure revokeObjectURL(url: String);
  end;

  JHTMLInputElement = partial class external 'HTMLInputElement' (JHTMLElement)
  public
    files: JFileList;
  end;

  TBlobCallback = procedure(blob: JBlob);

  JHTMLCanvasElement = partial class external 'HTMLCanvasElement' (JHTMLElement)
  public
    procedure toBlob(_callback: TBlobCallback; arguments: Variant); overload;
    procedure toBlob(_callback: TBlobCallback; &type: String; arguments: Variant); overload;
  end;

  JDataTransferItem = partial class external 'DataTransferItem'
  public
    function getAsFile: JFile;
  end;

  JDataTransferItemList = partial class external 'DataTransferItemList'
  public
    function add(data: JFile): JDataTransferItem; overload;
  end;

  JDataTransfer = partial class external 'DataTransfer'
  public
    files: JFileList; { SameObject }
  end;

  JWindowOrWorkerGlobalScope = partial class external 'WindowOrWorkerGlobalScope'
  public
    function createImageBitmap(image: JBlob): JPromiseImageBitmap; overload;
//    function createImageBitmap(image: JBlob; options: JImageBitmapOptions): JPromiseImageBitmap; overload;
    function createImageBitmap(image: JBlob; sx, sy, sw, sh: Integer): JPromiseImageBitmap; overload;
//    function createImageBitmap(image: JBlob; sx, sy, sw, sh: Integer; options: JImageBitmapOptions): JPromiseImageBitmap; overload;
  end;

  JWebSocket = partial class external 'WebSocket' (JEventTarget)
  public
    procedure send(data: JBlob); overload;
  end;

	JWindow = partial class external 'Window'
	public
    URL: JURL;
	end;
