unit Mozilla.SVGAnimatedPathData;

interface

type
  // NoInterfaceObject
  JSVGAnimatedPathData = class external 'SVGAnimatedPathData'
  public
    pathSegList: JSVGPathSegList;
    animatedPathSegList: JSVGPathSegList;
  end;

implementation

end.
