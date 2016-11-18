unit Mozilla.SVGMarkerElement;

interface

type
  JSVGMarkerElement = class external 'SVGMarkerElement' (JSVGElement)
  const 
    SVG_MARKERUNITS_UNKNOWN: Integer = 0;
    SVG_MARKERUNITS_USERSPACEONUSE: Integer = 1;
    SVG_MARKERUNITS_STROKEWIDTH: Integer = 2;
    SVG_MARKER_ORIENT_UNKNOWN: Integer = 0;
    SVG_MARKER_ORIENT_AUTO: Integer = 1;
    SVG_MARKER_ORIENT_ANGLE: Integer = 2;
  public
    refX: JSVGAnimatedLength; { Constant } 
    refY: JSVGAnimatedLength; { Constant } 
    markerUnits: JSVGAnimatedEnumeration; { Constant } 
    markerWidth: JSVGAnimatedLength; { Constant } 
    markerHeight: JSVGAnimatedLength; { Constant } 
    orientType: JSVGAnimatedEnumeration; { Constant } 
    orientAngle: JSVGAnimatedAngle; { Constant } 
    procedure setOrientToAuto;
    procedure setOrientToAngle(angle: JSVGAngle); { Throws } 
  end;

implementation

end.
