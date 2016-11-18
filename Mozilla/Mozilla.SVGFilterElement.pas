unit Mozilla.SVGFilterElement;

interface

type
  JSVGFilterElement = class external 'SVGFilterElement' (JSVGElement)
  public
    filterUnits: JSVGAnimatedEnumeration; { Constant } 
    primitiveUnits: JSVGAnimatedEnumeration; { Constant } 
    x: JSVGAnimatedLength; { Constant } 
    y: JSVGAnimatedLength; { Constant } 
    width: JSVGAnimatedLength; { Constant } 
    height: JSVGAnimatedLength; { Constant } 
  end;

implementation

end.
