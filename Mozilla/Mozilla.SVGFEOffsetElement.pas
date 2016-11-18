unit Mozilla.SVGFEOffsetElement;

interface

type
  JSVGFEOffsetElement = class external 'SVGFEOffsetElement' (JSVGElement)
  public
    in1: JSVGAnimatedString; { Constant } 
    dx: JSVGAnimatedNumber; { Constant } 
    dy: JSVGAnimatedNumber; { Constant } 
  end;

implementation

end.
