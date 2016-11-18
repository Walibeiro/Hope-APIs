unit Mozilla.SVGPoint;

interface

type
  JSVGPoint = class external 'SVGPoint'
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    function matrixTransform(matrix: JSVGMatrix): JSVGPoint; { NewObject } 
  end;

implementation

end.
