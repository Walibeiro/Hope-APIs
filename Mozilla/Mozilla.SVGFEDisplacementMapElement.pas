unit Mozilla.SVGFEDisplacementMapElement;

interface

type
  JSVGFEDisplacementMapElement = class external 'SVGFEDisplacementMapElement' (JSVGElement)
  const 
    SVG_CHANNEL_UNKNOWN: Integer = 0;
    SVG_CHANNEL_R: Integer = 1;
    SVG_CHANNEL_G: Integer = 2;
    SVG_CHANNEL_B: Integer = 3;
    SVG_CHANNEL_A: Integer = 4;
  public
    in1: JSVGAnimatedString; { Constant } 
    in2: JSVGAnimatedString; { Constant } 
    scale: JSVGAnimatedNumber; { Constant } 
    xChannelSelector: JSVGAnimatedEnumeration; { Constant } 
    yChannelSelector: JSVGAnimatedEnumeration; { Constant } 
  end;

implementation

end.
