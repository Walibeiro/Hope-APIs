unit Mozilla.SVGPathSeg;

interface

type
  JSVGPathSeg = class external 'SVGPathSeg'
  const 
    PATHSEG_UNKNOWN: Integer = 0;
    PATHSEG_CLOSEPATH: Integer = 1;
    PATHSEG_MOVETO_ABS: Integer = 2;
    PATHSEG_MOVETO_REL: Integer = 3;
    PATHSEG_LINETO_ABS: Integer = 4;
    PATHSEG_LINETO_REL: Integer = 5;
    PATHSEG_CURVETO_CUBIC_ABS: Integer = 6;
    PATHSEG_CURVETO_CUBIC_REL: Integer = 7;
    PATHSEG_CURVETO_QUADRATIC_ABS: Integer = 8;
    PATHSEG_CURVETO_QUADRATIC_REL: Integer = 9;
    PATHSEG_ARC_ABS: Integer = 10;
    PATHSEG_ARC_REL: Integer = 11;
    PATHSEG_LINETO_HORIZONTAL_ABS: Integer = 12;
    PATHSEG_LINETO_HORIZONTAL_REL: Integer = 13;
    PATHSEG_LINETO_VERTICAL_ABS: Integer = 14;
    PATHSEG_LINETO_VERTICAL_REL: Integer = 15;
    PATHSEG_CURVETO_CUBIC_SMOOTH_ABS: Integer = 16;
    PATHSEG_CURVETO_CUBIC_SMOOTH_REL: Integer = 17;
    PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS: Integer = 18;
    PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL: Integer = 19;
  public
    pathSegType: Integer; { Pure } 
    pathSegTypeAsLetter: String; { Pure } 
  end;

  JSVGPathSegClosePath = class external 'SVGPathSegClosePath' (JSVGPathSeg)
  end;

  JSVGPathSegMovetoAbs = class external 'SVGPathSegMovetoAbs' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
  end;

  JSVGPathSegMovetoRel = class external 'SVGPathSegMovetoRel' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
  end;

  JSVGPathSegLinetoAbs = class external 'SVGPathSegLinetoAbs' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
  end;

  JSVGPathSegLinetoRel = class external 'SVGPathSegLinetoRel' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
  end;

  JSVGPathSegCurvetoCubicAbs = class external 'SVGPathSegCurvetoCubicAbs' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    x1: Float; { SetterThrows } 
    y1: Float; { SetterThrows } 
    x2: Float; { SetterThrows } 
    y2: Float; { SetterThrows } 
  end;

  JSVGPathSegCurvetoCubicRel = class external 'SVGPathSegCurvetoCubicRel' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    x1: Float; { SetterThrows } 
    y1: Float; { SetterThrows } 
    x2: Float; { SetterThrows } 
    y2: Float; { SetterThrows } 
  end;

  JSVGPathSegCurvetoQuadraticAbs = class external 'SVGPathSegCurvetoQuadraticAbs' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    x1: Float; { SetterThrows } 
    y1: Float; { SetterThrows } 
  end;

  JSVGPathSegCurvetoQuadraticRel = class external 'SVGPathSegCurvetoQuadraticRel' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    x1: Float; { SetterThrows } 
    y1: Float; { SetterThrows } 
  end;

  JSVGPathSegArcAbs = class external 'SVGPathSegArcAbs' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    r1: Float; { SetterThrows } 
    r2: Float; { SetterThrows } 
    angle: Float; { SetterThrows } 
    largeArcFlag: Boolean; { SetterThrows } 
    sweepFlag: Boolean; { SetterThrows } 
  end;

  JSVGPathSegArcRel = class external 'SVGPathSegArcRel' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    r1: Float; { SetterThrows } 
    r2: Float; { SetterThrows } 
    angle: Float; { SetterThrows } 
    largeArcFlag: Boolean; { SetterThrows } 
    sweepFlag: Boolean; { SetterThrows } 
  end;

  JSVGPathSegLinetoHorizontalAbs = class external 'SVGPathSegLinetoHorizontalAbs' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
  end;

  JSVGPathSegLinetoHorizontalRel = class external 'SVGPathSegLinetoHorizontalRel' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
  end;

  JSVGPathSegLinetoVerticalAbs = class external 'SVGPathSegLinetoVerticalAbs' (JSVGPathSeg)
  public
    y: Float; { SetterThrows } 
  end;

  JSVGPathSegLinetoVerticalRel = class external 'SVGPathSegLinetoVerticalRel' (JSVGPathSeg)
  public
    y: Float; { SetterThrows } 
  end;

  JSVGPathSegCurvetoCubicSmoothAbs = class external 'SVGPathSegCurvetoCubicSmoothAbs' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    x2: Float; { SetterThrows } 
    y2: Float; { SetterThrows } 
  end;

  JSVGPathSegCurvetoCubicSmoothRel = class external 'SVGPathSegCurvetoCubicSmoothRel' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    x2: Float; { SetterThrows } 
    y2: Float; { SetterThrows } 
  end;

  JSVGPathSegCurvetoQuadraticSmoothAbs = class external 'SVGPathSegCurvetoQuadraticSmoothAbs' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
  end;

  JSVGPathSegCurvetoQuadraticSmoothRel = class external 'SVGPathSegCurvetoQuadraticSmoothRel' (JSVGPathSeg)
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
  end;

implementation

end.
