unit Mozilla.SVGLineElement;

interface

type
  JSVGLineElement = class external 'SVGLineElement' (JSVGGraphicsElement)
  public
    x1: JSVGAnimatedLength; { Constant } 
    y1: JSVGAnimatedLength; { Constant } 
    x2: JSVGAnimatedLength; { Constant } 
    y2: JSVGAnimatedLength; { Constant } 
  end;

implementation

end.
