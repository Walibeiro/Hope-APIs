unit Mozilla.SVGAElement;

interface

type
  JSVGAElement = class external 'SVGAElement' (JSVGGraphicsElement)
  public
    target: JSVGAnimatedString;
    download: String; { SetterThrows } 
  end;

implementation

end.
