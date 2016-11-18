unit Mozilla.SVGFESpotLightElement;

interface

type
  JSVGFESpotLightElement = class external 'SVGFESpotLightElement' (JSVGElement)
  public
    x: JSVGAnimatedNumber; { Constant } 
    y: JSVGAnimatedNumber; { Constant } 
    z: JSVGAnimatedNumber; { Constant } 
    pointsAtX: JSVGAnimatedNumber; { Constant } 
    pointsAtY: JSVGAnimatedNumber; { Constant } 
    pointsAtZ: JSVGAnimatedNumber; { Constant } 
    specularExponent: JSVGAnimatedNumber; { Constant } 
    limitingConeAngle: JSVGAnimatedNumber; { Constant } 
  end;

implementation

end.
