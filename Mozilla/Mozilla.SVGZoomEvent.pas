unit Mozilla.SVGZoomEvent;

interface

type
  JSVGZoomEvent = class external 'SVGZoomEvent' (JUIEvent)
  public
    previousScale: Float; { Constant } 
    previousTranslate: JSVGPoint; { Constant } 
    newScale: Float; { Constant } 
    newTranslate: JSVGPoint; { Constant } 
  end;

implementation

end.
