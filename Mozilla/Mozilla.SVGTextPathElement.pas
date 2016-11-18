unit Mozilla.SVGTextPathElement;

interface

type
  JSVGTextPathElement = class external 'SVGTextPathElement' (JSVGTextContentElement)
  const 
    TEXTPATH_METHODTYPE_UNKNOWN: Integer = 0;
    TEXTPATH_METHODTYPE_ALIGN: Integer = 1;
    TEXTPATH_METHODTYPE_STRETCH: Integer = 2;
    TEXTPATH_SPACINGTYPE_UNKNOWN: Integer = 0;
    TEXTPATH_SPACINGTYPE_AUTO: Integer = 1;
    TEXTPATH_SPACINGTYPE_EXACT: Integer = 2;
  public
    startOffset: JSVGAnimatedLength; { Constant } 
    method: JSVGAnimatedEnumeration; { Constant } 
    spacing: JSVGAnimatedEnumeration; { Constant } 
  end;

implementation

end.
