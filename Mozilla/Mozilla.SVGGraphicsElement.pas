unit Mozilla.SVGGraphicsElement;

interface

type
  JSVGBoundingBoxOptions = class external 'SVGBoundingBoxOptions'
  public
    fill: Boolean;
    stroke: Boolean;
    markers: Boolean;
    clipped: Boolean;
  end;

  JSVGGraphicsElement = class external 'SVGGraphicsElement' (JSVGElement)
  public
    transform: JSVGAnimatedTransformList;
    nearestViewportElement: JSVGElement;
    farthestViewportElement: JSVGElement;
    function getBBox: JSVGRect; overload; { NewObject,Throws } 
    function getBBox(aOptions: JSVGBoundingBoxOptions): JSVGRect; overload; { NewObject,Throws } 
    function getCTM: JSVGMatrix;
    function getScreenCTM: JSVGMatrix;
    function getTransformToElement(element: JSVGGraphicsElement): JSVGMatrix; { Throws } 
  end;

implementation

end.
