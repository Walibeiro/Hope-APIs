unit Mozilla.SVGFEBlendElement;

interface

type
  JSVGFEBlendElement = class external 'SVGFEBlendElement' (JSVGElement)
  const 
    SVG_FEBLEND_MODE_UNKNOWN: Integer = 0;
    SVG_FEBLEND_MODE_NORMAL: Integer = 1;
    SVG_FEBLEND_MODE_MULTIPLY: Integer = 2;
    SVG_FEBLEND_MODE_SCREEN: Integer = 3;
    SVG_FEBLEND_MODE_DARKEN: Integer = 4;
    SVG_FEBLEND_MODE_LIGHTEN: Integer = 5;
    SVG_FEBLEND_MODE_OVERLAY: Integer = 6;
    SVG_FEBLEND_MODE_COLOR_DODGE: Integer = 7;
    SVG_FEBLEND_MODE_COLOR_BURN: Integer = 8;
    SVG_FEBLEND_MODE_HARD_LIGHT: Integer = 9;
    SVG_FEBLEND_MODE_SOFT_LIGHT: Integer = 10;
    SVG_FEBLEND_MODE_DIFFERENCE: Integer = 11;
    SVG_FEBLEND_MODE_EXCLUSION: Integer = 12;
    SVG_FEBLEND_MODE_HUE: Integer = 13;
    SVG_FEBLEND_MODE_SATURATION: Integer = 14;
    SVG_FEBLEND_MODE_COLOR: Integer = 15;
    SVG_FEBLEND_MODE_LUMINOSITY: Integer = 16;
  public
    in1: JSVGAnimatedString; { Constant } 
    in2: JSVGAnimatedString; { Constant } 
    mode: JSVGAnimatedEnumeration; { Constant } 
  end;

implementation

end.
