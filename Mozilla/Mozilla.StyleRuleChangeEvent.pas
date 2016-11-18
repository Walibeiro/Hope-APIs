unit Mozilla.StyleRuleChangeEvent;

interface

type
  // ChromeOnly,Constructor( DOMString type , optional StyleRuleChangeEventInit eventInitDict)
  JStyleRuleChangeEvent = class external 'StyleRuleChangeEvent' (JEvent)
  public
    stylesheet: JCSSStyleSheet;
    rule: JCSSRule;
  end;

  JStyleRuleChangeEventInit = class external 'StyleRuleChangeEventInit' (JEventInit)
  public
    stylesheet: JCSSStyleSheet;
    rule: JCSSRule;
  end;

implementation

end.
