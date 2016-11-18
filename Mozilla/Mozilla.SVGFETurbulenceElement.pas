unit Mozilla.SVGFETurbulenceElement;

interface

type
  JSVGFETurbulenceElement = class external 'SVGFETurbulenceElement' (JSVGElement)
  const 
    SVG_TURBULENCE_TYPE_UNKNOWN: Integer = 0;
    SVG_TURBULENCE_TYPE_FRACTALNOISE: Integer = 1;
    SVG_TURBULENCE_TYPE_TURBULENCE: Integer = 2;
    SVG_STITCHTYPE_UNKNOWN: Integer = 0;
    SVG_STITCHTYPE_STITCH: Integer = 1;
    SVG_STITCHTYPE_NOSTITCH: Integer = 2;
  public
    baseFrequencyX: JSVGAnimatedNumber; { Constant } 
    baseFrequencyY: JSVGAnimatedNumber; { Constant } 
    numOctaves: JSVGAnimatedInteger; { Constant } 
    seed: JSVGAnimatedNumber; { Constant } 
    stitchTiles: JSVGAnimatedEnumeration; { Constant } 
    type: JSVGAnimatedEnumeration; { Constant } 
  end;

implementation

end.
