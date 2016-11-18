unit Mozilla.CSSRuleList;

interface

type
  JCSSRuleList = class external 'CSSRuleList'
  public
    length: Integer;
    function item(&index: Integer): JCSSRule;
  end;

implementation

end.
