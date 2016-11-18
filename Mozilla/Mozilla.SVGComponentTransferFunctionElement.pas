unit Mozilla.SVGComponentTransferFunctionElement;

interface

type
  JSVGComponentTransferFunctionElement = class external 'SVGComponentTransferFunctionElement' (JSVGElement)
  const 
    SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN: Integer = 0;
    SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY: Integer = 1;
    SVG_FECOMPONENTTRANSFER_TYPE_TABLE: Integer = 2;
    SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE: Integer = 3;
    SVG_FECOMPONENTTRANSFER_TYPE_LINEAR: Integer = 4;
    SVG_FECOMPONENTTRANSFER_TYPE_GAMMA: Integer = 5;
  public
    type: JSVGAnimatedEnumeration; { Constant } 
    tableValues: JSVGAnimatedNumberList; { Constant } 
    slope: JSVGAnimatedNumber; { Constant } 
    intercept: JSVGAnimatedNumber; { Constant } 
    amplitude: JSVGAnimatedNumber; { Constant } 
    exponent: JSVGAnimatedNumber; { Constant } 
    offset: JSVGAnimatedNumber; { Constant } 
  end;

implementation

end.
