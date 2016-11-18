unit Mozilla.CSSValue;

interface

type
  JCSSValue = class external 'CSSValue'
  const 
    CSS_INHERIT: Integer = 0;
    CSS_PRIMITIVE_VALUE: Integer = 1;
    CSS_VALUE_LIST: Integer = 2;
    CSS_CUSTOM: Integer = 3;
  public
    cssText: String; { Throws } 
    cssValueType: Integer;
  end;

implementation

end.
