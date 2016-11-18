unit Mozilla.SVGFEGaussianBlurElement;

interface

type
  JSVGFEGaussianBlurElement = class external 'SVGFEGaussianBlurElement' (JSVGElement)
  public
    in1: JSVGAnimatedString; { Constant } 
    stdDeviationX: JSVGAnimatedNumber; { Constant } 
    stdDeviationY: JSVGAnimatedNumber; { Constant } 
    procedure setStdDeviation(stdDeviationX: Float; stdDeviationY: Float);
  end;

implementation

end.
