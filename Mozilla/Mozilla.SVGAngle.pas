unit Mozilla.SVGAngle;

interface

type
  JSVGAngle = class external 'SVGAngle'
  const 
    SVG_ANGLETYPE_UNKNOWN: Integer = 0;
    SVG_ANGLETYPE_UNSPECIFIED: Integer = 1;
    SVG_ANGLETYPE_DEG: Integer = 2;
    SVG_ANGLETYPE_RAD: Integer = 3;
    SVG_ANGLETYPE_GRAD: Integer = 4;
  public
    unitType: Integer;
    value: Float; { SetterThrows } 
    valueInSpecifiedUnits: Float; { SetterThrows } 
    valueAsString: String; { SetterThrows } 
    procedure newValueSpecifiedUnits(unitType: Integer; valueInSpecifiedUnits: Float); { Throws } 
    procedure convertToSpecifiedUnits(unitType: Integer); { Throws } 
  end;

implementation

end.
