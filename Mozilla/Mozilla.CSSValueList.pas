unit Mozilla.CSSValueList;

interface

type
  JCSSValueList = class external 'CSSValueList' (JCSSValue)
  public
    length: Integer;
    function item(&index: Integer): JCSSValue;
  end;

implementation

end.
