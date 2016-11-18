unit Mozilla.SVGTextPositioningElement;

interface

type
  JSVGTextPositioningElement = class external 'SVGTextPositioningElement' (JSVGTextContentElement)
  public
    x: JSVGAnimatedLengthList; { Constant } 
    y: JSVGAnimatedLengthList; { Constant } 
    dx: JSVGAnimatedLengthList; { Constant } 
    dy: JSVGAnimatedLengthList; { Constant } 
    rotate: JSVGAnimatedNumberList; { Constant } 
  end;

implementation

end.
