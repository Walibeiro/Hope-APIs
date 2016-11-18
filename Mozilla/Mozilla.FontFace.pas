unit Mozilla.FontFace;

interface

type
  TBinaryData = Union;
  JFontFaceDescriptors = class external 'FontFaceDescriptors'
  public
    style: String;
    weight: String;
    stretch: String;
    unicodeRange: String;
    variant: String;
    featureSettings: String;
    display: String;
  end;

  JFontFaceLoadStatus = (fflsUnloaded, fflsLoading, fflsLoaded, fflsError);

  // Constructor( DOMString family ,( DOMString or BinaryData)source,optionalFontFaceDescriptorsdescriptors),Pref=layout.css.font-loading-api.enabled
  JFontFace = class external 'FontFace'
  public
    family: String; { SetterThrows } 
    style: String; { SetterThrows } 
    weight: String; { SetterThrows } 
    stretch: String; { SetterThrows } 
    unicodeRange: String; { SetterThrows } 
    variant: String; { SetterThrows } 
    featureSettings: String; { SetterThrows } 
    display: String; { SetterThrows,Pref=layout.css.font-display.enabled } 
    status: JFontFaceLoadStatus;
    loaded: FontFace; { Throws } 
    function load: FontFace; { Throws } 
  end;

implementation

end.
