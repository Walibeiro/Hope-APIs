unit Mozilla.StyleSheetApplicableStateChangeEvent;

interface

type
  // ChromeOnly,Constructor( DOMString type , optional StyleSheetApplicableStateChangeEventInit eventInitDict)
  JStyleSheetApplicableStateChangeEvent = class external 'StyleSheetApplicableStateChangeEvent' (JEvent)
  public
    stylesheet: JCSSStyleSheet;
    applicable: Boolean;
  end;

  JStyleSheetApplicableStateChangeEventInit = class external 'StyleSheetApplicableStateChangeEventInit' (JEventInit)
  public
    stylesheet: JCSSStyleSheet;
    applicable: Boolean;
  end;

implementation

end.
