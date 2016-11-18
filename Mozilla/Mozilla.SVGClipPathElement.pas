unit Mozilla.SVGClipPathElement;

interface

type
  JSVGClipPathElement = class external 'SVGClipPathElement' (JSVGElement)
  public
    clipPathUnits: JSVGAnimatedEnumeration; { Constant } 
    transform: JSVGAnimatedTransformList; { Constant } 
  end;

implementation

end.
