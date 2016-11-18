unit Mozilla.SVGZoomAndPanValues;

interface

type
  // NoInterfaceObject
  JSVGZoomAndPanValues = class external 'SVGZoomAndPanValues'
  const 
    SVG_ZOOMANDPAN_UNKNOWN: Integer = 0;
    SVG_ZOOMANDPAN_DISABLE: Integer = 1;
    SVG_ZOOMANDPAN_MAGNIFY: Integer = 2;
  public
    zoomAndPan: Integer; { SetterThrows } 
  end;

implementation

end.
