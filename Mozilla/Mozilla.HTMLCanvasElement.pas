unit Mozilla.HTMLCanvasElement;

interface

type
  JHTMLCanvasElement = class external 'HTMLCanvasElement' (JHTMLElement)
  public
    width: Integer; { Pure,SetterThrows } 
    height: Integer; { Pure,SetterThrows } 
    mozOpaque: Boolean; { Pure,SetterThrows } 
    mozPrintCallback: JPrintCallback;
    function getContext(contextId: String; contextOptions: Variant = ): JnsISupports; { Throws } 
    function toDataURL(&type: String = ): String; overload; { Throws } 
    function toDataURL(&type: String = ): String; overload; { Throws } 
    function toDataURL(&type: String = ; encoderOptions: Variant): String; overload; { Throws } 
    procedure toBlob(_callback: JBlobCallback; &type: String = ); overload; { Throws } 
    procedure toBlob(_callback: JBlobCallback; &type: String = ); overload; { Throws } 
    procedure toBlob(_callback: JBlobCallback; &type: String = ; encoderOptions: Variant); overload; { Throws } 
    function mozGetAsFile(&name: String; &type: String = ): JFile; { Throws } 
    function MozGetIPCContext(contextId: String): JnsISupports; { ChromeOnly,Throws } 
    function captureStream: JCanvasCaptureMediaStream; overload; { Throws,UnsafeInPrerendering,Pref=canvas.capturestream.enabled } 
    function captureStream(frameRate: Float): JCanvasCaptureMediaStream; overload; { Throws,UnsafeInPrerendering,Pref=canvas.capturestream.enabled } 
    function transferControlToOffscreen: JOffscreenCanvas; { Pref=gfx.offscreencanvas.enabled,Throws } 
  end;

  // ChromeOnly
  JMozCanvasPrintState = class external 'MozCanvasPrintState'
  public
    context: JnsISupports;
    procedure done;
  end;

  JPrintCallback = procedure(ctx: JMozCanvasPrintState);

  JBlobCallback = procedure(blob: JBlob);

implementation

end.
