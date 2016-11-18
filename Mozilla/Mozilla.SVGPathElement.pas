unit Mozilla.SVGPathElement;

interface

type
  JSVGPathElement = class external 'SVGPathElement' (JSVGGraphicsElement)
  public
    pathLength: JSVGAnimatedNumber; { Constant } 
    function getTotalLength: Float;
    function getPointAtLength(distance: Float): JSVGPoint; { NewObject,Throws } 
    function getPathSegAtLength(distance: Float): Integer;
    function createSVGPathSegClosePath: JSVGPathSegClosePath; { NewObject } 
    function createSVGPathSegMovetoAbs(x: Float; y: Float): JSVGPathSegMovetoAbs; { NewObject } 
    function createSVGPathSegMovetoRel(x: Float; y: Float): JSVGPathSegMovetoRel; { NewObject } 
    function createSVGPathSegLinetoAbs(x: Float; y: Float): JSVGPathSegLinetoAbs; { NewObject } 
    function createSVGPathSegLinetoRel(x: Float; y: Float): JSVGPathSegLinetoRel; { NewObject } 
    function createSVGPathSegCurvetoCubicAbs(x: Float; y: Float; x1: Float; y1: Float; x2: Float; y2: Float): JSVGPathSegCurvetoCubicAbs; { NewObject } 
    function createSVGPathSegCurvetoCubicRel(x: Float; y: Float; x1: Float; y1: Float; x2: Float; y2: Float): JSVGPathSegCurvetoCubicRel; { NewObject } 
    function createSVGPathSegCurvetoQuadraticAbs(x: Float; y: Float; x1: Float; y1: Float): JSVGPathSegCurvetoQuadraticAbs; { NewObject } 
    function createSVGPathSegCurvetoQuadraticRel(x: Float; y: Float; x1: Float; y1: Float): JSVGPathSegCurvetoQuadraticRel; { NewObject } 
    function createSVGPathSegArcAbs(x: Float; y: Float; r1: Float; r2: Float; angle: Float; largeArcFlag: Boolean; sweepFlag: Boolean): JSVGPathSegArcAbs; { NewObject } 
    function createSVGPathSegArcRel(x: Float; y: Float; r1: Float; r2: Float; angle: Float; largeArcFlag: Boolean; sweepFlag: Boolean): JSVGPathSegArcRel; { NewObject } 
    function createSVGPathSegLinetoHorizontalAbs(x: Float): JSVGPathSegLinetoHorizontalAbs; { NewObject } 
    function createSVGPathSegLinetoHorizontalRel(x: Float): JSVGPathSegLinetoHorizontalRel; { NewObject } 
    function createSVGPathSegLinetoVerticalAbs(y: Float): JSVGPathSegLinetoVerticalAbs; { NewObject } 
    function createSVGPathSegLinetoVerticalRel(y: Float): JSVGPathSegLinetoVerticalRel; { NewObject } 
    function createSVGPathSegCurvetoCubicSmoothAbs(x: Float; y: Float; x2: Float; y2: Float): JSVGPathSegCurvetoCubicSmoothAbs; { NewObject } 
    function createSVGPathSegCurvetoCubicSmoothRel(x: Float; y: Float; x2: Float; y2: Float): JSVGPathSegCurvetoCubicSmoothRel; { NewObject } 
    function createSVGPathSegCurvetoQuadraticSmoothAbs(x: Float; y: Float): JSVGPathSegCurvetoQuadraticSmoothAbs; { NewObject } 
    function createSVGPathSegCurvetoQuadraticSmoothRel(x: Float; y: Float): JSVGPathSegCurvetoQuadraticSmoothRel; { NewObject } 
  end;

implementation

end.
