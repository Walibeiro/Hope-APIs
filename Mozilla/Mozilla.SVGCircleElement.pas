unit Mozilla.SVGCircleElement;

interface

type
  JSVGCircleElement = class external 'SVGCircleElement' (JSVGGraphicsElement)
  public
    cx: JSVGAnimatedLength; { Constant } 
    cy: JSVGAnimatedLength; { Constant } 
    r: JSVGAnimatedLength; { Constant } 
  end;

implementation

end.
