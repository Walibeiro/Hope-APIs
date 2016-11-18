unit Mozilla.SVGTransform;

interface

type
  JSVGTransform = class external 'SVGTransform'
  const 
    SVG_TRANSFORM_UNKNOWN: Integer = 0;
    SVG_TRANSFORM_MATRIX: Integer = 1;
    SVG_TRANSFORM_TRANSLATE: Integer = 2;
    SVG_TRANSFORM_SCALE: Integer = 3;
    SVG_TRANSFORM_ROTATE: Integer = 4;
    SVG_TRANSFORM_SKEWX: Integer = 5;
    SVG_TRANSFORM_SKEWY: Integer = 6;
  public
    type: Integer;
    matrix: JSVGMatrix;
    angle: Float;
    procedure setMatrix(matrix: JSVGMatrix); { Throws } 
    procedure setTranslate(tx: Float; ty: Float); { Throws } 
    procedure setScale(sx: Float; sy: Float); { Throws } 
    procedure setRotate(angle: Float; cx: Float; cy: Float); { Throws } 
    procedure setSkewX(angle: Float); { Throws } 
    procedure setSkewY(angle: Float); { Throws } 
  end;

implementation

end.
