unit Mozilla.SVGFitToViewBox;

interface

type
  // NoInterfaceObject
  JSVGFitToViewBox = class external 'SVGFitToViewBox'
  public
    viewBox: JSVGAnimatedRect; { Constant } 
    preserveAspectRatio: JSVGAnimatedPreserveAspectRatio; { Constant } 
  end;

implementation

end.
