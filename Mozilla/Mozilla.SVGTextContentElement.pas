unit Mozilla.SVGTextContentElement;

interface

type
  JSVGTextContentElement = class external 'SVGTextContentElement' (JSVGGraphicsElement)
  const 
    LENGTHADJUST_UNKNOWN: Integer = 0;
    LENGTHADJUST_SPACING: Integer = 1;
    LENGTHADJUST_SPACINGANDGLYPHS: Integer = 2;
  public
    textLength: JSVGAnimatedLength; { Constant } 
    lengthAdjust: JSVGAnimatedEnumeration; { Constant } 
    function getNumberOfChars: Integer;
    function getComputedTextLength: Float;
    function getSubStringLength(charnum: Integer; nchars: Integer): Float; { Throws } 
    function getStartPositionOfChar(charnum: Integer): JSVGPoint; { Throws } 
    function getEndPositionOfChar(charnum: Integer): JSVGPoint; { Throws } 
    function getExtentOfChar(charnum: Integer): JSVGRect; { NewObject,Throws } 
    function getRotationOfChar(charnum: Integer): Float; { Throws } 
    function getCharNumAtPosition(point: JSVGPoint): Integer;
    procedure selectSubString(charnum: Integer; nchars: Integer); { Throws } 
  end;

implementation

end.
