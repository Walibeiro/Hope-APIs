unit Mozilla.ImageDocument;

interface

type
  // ChromeOnly,OverrideBuiltins
  JImageDocument = class external 'ImageDocument' (JHTMLDocument)
  public
    imageIsOverflowing: Boolean;
    imageIsResized: Boolean;
    imageRequest: JimgIRequest; { Throws } 
    procedure shrinkToFit;
    procedure restoreImage;
    procedure restoreImageTo(x: Integer; y: Integer);
    procedure toggleImageSize;
  end;

implementation

end.
