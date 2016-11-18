unit Mozilla.SVGMaskElement;

interface

type
  JSVGMaskElement = class external 'SVGMaskElement' (JSVGElement)
  const 
    SVG_MASKTYPE_LUMINANCE: Integer = 0;
    SVG_MASKTYPE_ALPHA: Integer = 1;
  public
    maskUnits: JSVGAnimatedEnumeration; { Constant } 
    maskContentUnits: JSVGAnimatedEnumeration; { Constant } 
    x: JSVGAnimatedLength; { Constant } 
    y: JSVGAnimatedLength; { Constant } 
    width: JSVGAnimatedLength; { Constant } 
    height: JSVGAnimatedLength; { Constant } 
  end;

implementation

end.
