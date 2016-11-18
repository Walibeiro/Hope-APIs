unit Mozilla.CSSPrimitiveValue;

interface

type
  JCSSPrimitiveValue = class external 'CSSPrimitiveValue' (JCSSValue)
  const 
    CSS_UNKNOWN: Integer = 0;
    CSS_NUMBER: Integer = 1;
    CSS_PERCENTAGE: Integer = 2;
    CSS_EMS: Integer = 3;
    CSS_EXS: Integer = 4;
    CSS_PX: Integer = 5;
    CSS_CM: Integer = 6;
    CSS_MM: Integer = 7;
    CSS_IN: Integer = 8;
    CSS_PT: Integer = 9;
    CSS_PC: Integer = 10;
    CSS_DEG: Integer = 11;
    CSS_RAD: Integer = 12;
    CSS_GRAD: Integer = 13;
    CSS_MS: Integer = 14;
    CSS_S: Integer = 15;
    CSS_HZ: Integer = 16;
    CSS_KHZ: Integer = 17;
    CSS_DIMENSION: Integer = 18;
    CSS_STRING: Integer = 19;
    CSS_URI: Integer = 20;
    CSS_IDENT: Integer = 21;
    CSS_ATTR: Integer = 22;
    CSS_COUNTER: Integer = 23;
    CSS_RECT: Integer = 24;
    CSS_RGBCOLOR: Integer = 25;
  public
    primitiveType: Integer;
    procedure setFloatValue(unitType: Integer; floatValue: Float); { Throws } 
    function getFloatValue(unitType: Integer): Float; { Throws } 
    procedure setStringValue(stringType: Integer; stringValue: String); { Throws } 
    function getStringValue: String; { Throws } 
    function getCounterValue: JCounter; { Throws } 
    function getRectValue: JRect; { Throws } 
    function getRGBColorValue: JRGBColor; { Throws } 
  end;

implementation

end.
