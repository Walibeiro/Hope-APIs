unit Mozilla.SVGRect;

interface

type
  JSVGRect = class external 'SVGRect'
  public
    x: Float; { SetterThrows } 
    y: Float; { SetterThrows } 
    width: Float; { SetterThrows } 
    height: Float; { SetterThrows } 
  end;

implementation

end.
