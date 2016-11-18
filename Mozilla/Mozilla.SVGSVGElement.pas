unit Mozilla.SVGSVGElement;

interface

type
  JSVGSVGElement = class external 'SVGSVGElement' (JSVGGraphicsElement)
  public
    x: JSVGAnimatedLength; { Constant } 
    y: JSVGAnimatedLength; { Constant } 
    width: JSVGAnimatedLength; { Constant } 
    height: JSVGAnimatedLength; { Constant } 
    pixelUnitToMillimeterX: Float; { Constant } 
    pixelUnitToMillimeterY: Float; { Constant } 
    screenPixelToMillimeterX: Float; { Constant } 
    screenPixelToMillimeterY: Float; { Constant } 
    useCurrentView: Boolean;
    currentScale: Float; { UseCounter } 
    currentTranslate: JSVGPoint;
    function suspendRedraw(maxWaitMilliseconds: Integer): Integer; { DependsOn=Nothing,Affects=Nothing } 
    procedure unsuspendRedraw(suspendHandleID: Integer); { DependsOn=Nothing,Affects=Nothing } 
    procedure unsuspendRedrawAll; { DependsOn=Nothing,Affects=Nothing } 
    procedure forceRedraw; { DependsOn=Nothing,Affects=Nothing } 
    procedure pauseAnimations;
    procedure unpauseAnimations;
    function animationsPaused: Boolean;
    function getCurrentTime: Float;
    procedure setCurrentTime(seconds: Float);
    procedure deselectAll;
    function createSVGNumber: JSVGNumber; { NewObject } 
    function createSVGLength: JSVGLength; { NewObject } 
    function createSVGAngle: JSVGAngle; { NewObject } 
    function createSVGPoint: JSVGPoint; { NewObject } 
    function createSVGMatrix: JSVGMatrix; { NewObject } 
    function createSVGRect: JSVGRect; { NewObject } 
    function createSVGTransform: JSVGTransform; { NewObject } 
    function createSVGTransformFromMatrix(matrix: JSVGMatrix): JSVGTransform; { NewObject } 
    function getElementById(elementId: String): JElement; { UseCounter } 
  end;

implementation

end.
