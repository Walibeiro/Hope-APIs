unit Mozilla.CSSStyleSheet;

interface

type
  JCSSStyleSheetParsingMode = (author, user, agent);

  JCSSStyleSheet = class external 'CSSStyleSheet' (JStyleSheet)
  public
    ownerRule: JCSSRule; { Pure } 
    cssRules: JCSSRuleList; { Throws,NeedsSubjectPrincipal } 
    parsingMode: JCSSStyleSheetParsingMode; { ChromeOnly,BinaryName=parsingModeDOM } 
    function insertRule(rule: String; &index: Integer): Integer; { Throws,NeedsSubjectPrincipal } 
    procedure deleteRule(&index: Integer); { Throws,NeedsSubjectPrincipal } 
  end;

implementation

end.
