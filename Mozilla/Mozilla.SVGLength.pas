unit Mozilla.SVGLength;

interface

type
  JSVGLength = class external 'SVGLength'
  const 
    SVG_LENGTHTYPE_UNKNOWN: Integer = 0;
    SVG_LENGTHTYPE_NUMBER: Integer = 1;
    SVG_LENGTHTYPE_PERCENTAGE: Integer = 2;
    SVG_LENGTHTYPE_EMS: Integer = 3;
    SVG_LENGTHTYPE_EXS: Integer = 4;
    SVG_LENGTHTYPE_PX: Integer = 5;
    SVG_LENGTHTYPE_CM: Integer = 6;
    SVG_LENGTHTYPE_MM: Integer = 7;
    SVG_LENGTHTYPE_IN: Integer = 8;
    SVG_LENGTHTYPE_PT: Integer = 9;
    SVG_LENGTHTYPE_PC: Integer = 10;
  public
    unitType: Integer;
    value: Float; { Throws } 
    valueInSpecifiedUnits: Float; { SetterThrows } 
    valueAsString: String; { SetterThrows } 
    procedure newValueSpecifiedUnits(unitType: Integer; valueInSpecifiedUnits: Float); { Throws } 
    procedure convertToSpecifiedUnits(unitType: Integer); { Throws } 
  end;

implementation

end.
