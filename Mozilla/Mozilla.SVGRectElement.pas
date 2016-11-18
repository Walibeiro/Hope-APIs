unit Mozilla.SVGRectElement;

interface

type
  JSVGRectElement = class external 'SVGRectElement' (JSVGGraphicsElement)
  public
    x: JSVGAnimatedLength; { Constant } 
    y: JSVGAnimatedLength; { Constant } 
    width: JSVGAnimatedLength; { Constant } 
    height: JSVGAnimatedLength; { Constant } 
    rx: JSVGAnimatedLength; { Constant } 
    ry: JSVGAnimatedLength; { Constant } 
  end;

implementation

end.
