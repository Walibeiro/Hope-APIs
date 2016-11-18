unit Mozilla.SVGFECompositeElement;

interface

type
  JSVGFECompositeElement = class external 'SVGFECompositeElement' (JSVGElement)
  const 
    SVG_FECOMPOSITE_OPERATOR_UNKNOWN: Integer = 0;
    SVG_FECOMPOSITE_OPERATOR_OVER: Integer = 1;
    SVG_FECOMPOSITE_OPERATOR_IN: Integer = 2;
    SVG_FECOMPOSITE_OPERATOR_OUT: Integer = 3;
    SVG_FECOMPOSITE_OPERATOR_ATOP: Integer = 4;
    SVG_FECOMPOSITE_OPERATOR_XOR: Integer = 5;
    SVG_FECOMPOSITE_OPERATOR_ARITHMETIC: Integer = 6;
  public
    in1: JSVGAnimatedString; { Constant } 
    in2: JSVGAnimatedString; { Constant } 
    operator: JSVGAnimatedEnumeration; { Constant } 
    k1: JSVGAnimatedNumber; { Constant } 
    k2: JSVGAnimatedNumber; { Constant } 
    k3: JSVGAnimatedNumber; { Constant } 
    k4: JSVGAnimatedNumber; { Constant } 
  end;

implementation

end.
