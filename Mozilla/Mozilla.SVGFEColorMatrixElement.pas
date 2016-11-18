unit Mozilla.SVGFEColorMatrixElement;

interface

type
  JSVGFEColorMatrixElement = class external 'SVGFEColorMatrixElement' (JSVGElement)
  const 
    SVG_FECOLORMATRIX_TYPE_UNKNOWN: Integer = 0;
    SVG_FECOLORMATRIX_TYPE_MATRIX: Integer = 1;
    SVG_FECOLORMATRIX_TYPE_SATURATE: Integer = 2;
    SVG_FECOLORMATRIX_TYPE_HUEROTATE: Integer = 3;
    SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA: Integer = 4;
  public
    in1: JSVGAnimatedString; { Constant } 
    type: JSVGAnimatedEnumeration; { Constant } 
    values: JSVGAnimatedNumberList; { Constant } 
  end;

implementation

end.
