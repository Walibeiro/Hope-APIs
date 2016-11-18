unit Mozilla.WindowOrWorkerGlobalScope;

interface

type
  // NoInterfaceObject,Exposed=( Window , Worker)
  JWindowOrWorkerGlobalScope = class external 'WindowOrWorkerGlobalScope'
  public
    isSecureContext: Boolean;
    indexedDB: JIDBFactory; { Throws } 
    function btoa(btoa: String): String; { Throws } 
    function atob(atob: String): String; { Throws } 
    function setTimeout(handler: JFunction; timeout: Integer = 0; arguments: Variant): Integer; overload; { Throws } 
    function setTimeout(handler: JFunction; timeout: Integer = 0; arguments: Variant): Integer; overload; { Throws } 
    function setTimeout(handler: String; timeout: Integer = 0; unused: Variant): Integer; overload; { Throws } 
    function setTimeout(handler: String; timeout: Integer = 0; unused: Variant): Integer; overload; { Throws } 
    procedure clearTimeout(handle: Integer = 0);
    function setInterval(handler: JFunction; arguments: Variant): Integer; overload; { Throws } 
    function setInterval(handler: JFunction; timeout: Integer; arguments: Variant): Integer; overload; { Throws } 
    function setInterval(handler: String; unused: Variant): Integer; overload; { Throws } 
    function setInterval(handler: String; timeout: Integer; unused: Variant): Integer; overload; { Throws } 
    procedure clearInterval(handle: Integer = 0);
    function createImageBitmap(aImage: JImageBitmapSource): ImageBitmap; { Throws } 
    function createImageBitmap(aImage: JImageBitmapSource; aSx: Integer; aSy: Integer; aSw: Integer; aSh: Integer): ImageBitmap; { Throws } 
    function fetch(input: JRequestInfo): Response; overload; { NewObject } 
    function fetch(input: JRequestInfo; init: JRequestInit): Response; overload; { NewObject } 
    function createImageBitmap(aImage: JImageBitmapSource; aOffset: Integer; aLength: Integer; aFormat: JImageBitmapFormat; aLayout: JImagePixelLayout): ImageBitmap; { Throws } 
  end;

implementation

end.
