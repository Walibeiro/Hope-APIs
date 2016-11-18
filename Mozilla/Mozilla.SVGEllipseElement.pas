unit Mozilla.SVGEllipseElement;

interface

type
  JSVGEllipseElement = class external 'SVGEllipseElement' (JSVGGraphicsElement)
  public
    cx: JSVGAnimatedLength; { Constant } 
    cy: JSVGAnimatedLength; { Constant } 
    rx: JSVGAnimatedLength; { Constant } 
    ry: JSVGAnimatedLength; { Constant } 
  end;

implementation

end.
