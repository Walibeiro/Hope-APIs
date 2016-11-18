unit Mozilla.OffscreenCanvas;

interface

type
  // Constructor( unsigned long width , unsigned long height),Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabled
  JOffscreenCanvas = class external 'OffscreenCanvas' (JEventTarget)
  public
    width: Integer; { Pure,SetterThrows } 
    height: Integer; { Pure,SetterThrows } 
    function getContext(contextId: String; contextOptions: Variant = ): JnsISupports; { Throws } 
    function transferToImageBitmap: JImageBitmap;
    function toBlob(&type: String = ): Blob; overload; { Throws } 
    function toBlob(&type: String = ): Blob; overload; { Throws } 
    function toBlob(&type: String = ; encoderOptions: Variant): Blob; overload; { Throws } 
  end;

implementation

end.
