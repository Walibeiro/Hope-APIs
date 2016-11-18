unit Mozilla.SVGImageElement;

interface

type
  JSVGImageElement = class external 'SVGImageElement' (JSVGGraphicsElement)
  public
    x: JSVGAnimatedLength; { Constant } 
    y: JSVGAnimatedLength; { Constant } 
    width: JSVGAnimatedLength; { Constant } 
    height: JSVGAnimatedLength; { Constant } 
    preserveAspectRatio: JSVGAnimatedPreserveAspectRatio; { Constant } 
  end;

implementation

end.
