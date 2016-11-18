unit Mozilla.SVGFEMorphologyElement;

interface

type
  JSVGFEMorphologyElement = class external 'SVGFEMorphologyElement' (JSVGElement)
  const 
    SVG_MORPHOLOGY_OPERATOR_UNKNOWN: Integer = 0;
    SVG_MORPHOLOGY_OPERATOR_ERODE: Integer = 1;
    SVG_MORPHOLOGY_OPERATOR_DILATE: Integer = 2;
  public
    in1: JSVGAnimatedString; { Constant } 
    operator: JSVGAnimatedEnumeration; { Constant } 
    radiusX: JSVGAnimatedNumber; { Constant } 
    radiusY: JSVGAnimatedNumber; { Constant } 
  end;

implementation

end.
