unit Mozilla.SVGPatternElement;

interface

type
  JSVGPatternElement = class external 'SVGPatternElement' (JSVGElement)
  public
    patternUnits: JSVGAnimatedEnumeration; { Constant } 
    patternContentUnits: JSVGAnimatedEnumeration; { Constant } 
    patternTransform: JSVGAnimatedTransformList; { Constant } 
    x: JSVGAnimatedLength; { Constant } 
    y: JSVGAnimatedLength; { Constant } 
    width: JSVGAnimatedLength; { Constant } 
    height: JSVGAnimatedLength; { Constant } 
  end;

implementation

end.
