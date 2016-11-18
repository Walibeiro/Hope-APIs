unit Mozilla.SVGGradientElement;

interface

type
  JSVGGradientElement = class external 'SVGGradientElement' (JSVGElement)
  const 
    SVG_SPREADMETHOD_UNKNOWN: Integer = 0;
    SVG_SPREADMETHOD_PAD: Integer = 1;
    SVG_SPREADMETHOD_REFLECT: Integer = 2;
    SVG_SPREADMETHOD_REPEAT: Integer = 3;
  public
    gradientUnits: JSVGAnimatedEnumeration; { Constant } 
    gradientTransform: JSVGAnimatedTransformList; { Constant } 
    spreadMethod: JSVGAnimatedEnumeration; { Constant } 
  end;

implementation

end.
