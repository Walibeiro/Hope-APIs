unit Mozilla.SVGUseElement;

interface

type
  JSVGUseElement = class external 'SVGUseElement' (JSVGGraphicsElement)
  public
    x: JSVGAnimatedLength; { Constant } 
    y: JSVGAnimatedLength; { Constant } 
    width: JSVGAnimatedLength; { Constant } 
    height: JSVGAnimatedLength; { Constant } 
  end;

implementation

end.
