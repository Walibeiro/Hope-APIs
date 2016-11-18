unit Mozilla.SVGRadialGradientElement;

interface

type
  JSVGRadialGradientElement = class external 'SVGRadialGradientElement' (JSVGGradientElement)
  public
    cx: JSVGAnimatedLength; { Constant } 
    cy: JSVGAnimatedLength; { Constant } 
    r: JSVGAnimatedLength; { Constant } 
    fx: JSVGAnimatedLength; { Constant } 
    fy: JSVGAnimatedLength; { Constant } 
  end;

implementation

end.
