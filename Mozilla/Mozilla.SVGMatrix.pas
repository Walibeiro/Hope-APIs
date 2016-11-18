unit Mozilla.SVGMatrix;

interface

type
  JSVGMatrix = class external 'SVGMatrix'
  public
    a: Float; { SetterThrows } 
    b: Float; { SetterThrows } 
    c: Float; { SetterThrows } 
    d: Float; { SetterThrows } 
    e: Float; { SetterThrows } 
    f: Float; { SetterThrows } 
    function multiply(secondMatrix: JSVGMatrix): JSVGMatrix; { NewObject } 
    function inverse: JSVGMatrix; { NewObject,Throws } 
    function translate(x: Float; y: Float): JSVGMatrix; { NewObject } 
    function scale(scaleFactor: Float): JSVGMatrix; { NewObject } 
    function scaleNonUniform(scaleFactorX: Float; scaleFactorY: Float): JSVGMatrix; { NewObject } 
    function rotate(angle: Float): JSVGMatrix; { NewObject } 
    function rotateFromVector(x: Float; y: Float): JSVGMatrix; { NewObject,Throws } 
    function flipX: JSVGMatrix; { NewObject } 
    function flipY: JSVGMatrix; { NewObject } 
    function skewX(angle: Float): JSVGMatrix; { NewObject,Throws } 
    function skewY(angle: Float): JSVGMatrix; { NewObject,Throws } 
  end;

implementation

end.
