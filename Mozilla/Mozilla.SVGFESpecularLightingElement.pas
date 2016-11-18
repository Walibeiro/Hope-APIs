unit Mozilla.SVGFESpecularLightingElement;

interface

type
  JSVGFESpecularLightingElement = class external 'SVGFESpecularLightingElement' (JSVGElement)
  public
    in1: JSVGAnimatedString; { Constant } 
    surfaceScale: JSVGAnimatedNumber; { Constant } 
    specularConstant: JSVGAnimatedNumber; { Constant } 
    specularExponent: JSVGAnimatedNumber; { Constant } 
    kernelUnitLengthX: JSVGAnimatedNumber; { Constant } 
    kernelUnitLengthY: JSVGAnimatedNumber; { Constant } 
  end;

implementation

end.
