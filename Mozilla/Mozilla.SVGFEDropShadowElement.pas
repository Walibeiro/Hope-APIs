unit Mozilla.SVGFEDropShadowElement;

interface

type
  JSVGFEDropShadowElement = class external 'SVGFEDropShadowElement' (JSVGElement)
  public
    in1: JSVGAnimatedString; { Constant } 
    dx: JSVGAnimatedNumber; { Constant } 
    dy: JSVGAnimatedNumber; { Constant } 
    stdDeviationX: JSVGAnimatedNumber; { Constant } 
    stdDeviationY: JSVGAnimatedNumber; { Constant } 
    procedure setStdDeviation(stdDeviationX: Float; stdDeviationY: Float);
  end;

implementation

end.
