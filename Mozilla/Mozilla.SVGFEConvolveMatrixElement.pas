unit Mozilla.SVGFEConvolveMatrixElement;

interface

type
  JSVGFEConvolveMatrixElement = class external 'SVGFEConvolveMatrixElement' (JSVGElement)
  const 
    SVG_EDGEMODE_UNKNOWN: Integer = 0;
    SVG_EDGEMODE_DUPLICATE: Integer = 1;
    SVG_EDGEMODE_WRAP: Integer = 2;
    SVG_EDGEMODE_NONE: Integer = 3;
  public
    in1: JSVGAnimatedString; { Constant } 
    orderX: JSVGAnimatedInteger; { Constant } 
    orderY: JSVGAnimatedInteger; { Constant } 
    kernelMatrix: JSVGAnimatedNumberList; { Constant } 
    divisor: JSVGAnimatedNumber; { Constant } 
    bias: JSVGAnimatedNumber; { Constant } 
    targetX: JSVGAnimatedInteger; { Constant } 
    targetY: JSVGAnimatedInteger; { Constant } 
    edgeMode: JSVGAnimatedEnumeration; { Constant } 
    kernelUnitLengthX: JSVGAnimatedNumber; { Constant } 
    kernelUnitLengthY: JSVGAnimatedNumber; { Constant } 
    preserveAlpha: JSVGAnimatedBoolean; { Constant } 
  end;

implementation

end.
