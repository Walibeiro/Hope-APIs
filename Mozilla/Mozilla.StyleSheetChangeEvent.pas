unit Mozilla.StyleSheetChangeEvent;

interface

type
  // ChromeOnly,Constructor( DOMString type , optional StyleSheetChangeEventInit eventInitDict)
  JStyleSheetChangeEvent = class external 'StyleSheetChangeEvent' (JEvent)
  public
    stylesheet: JCSSStyleSheet;
    documentSheet: Boolean;
  end;

  JStyleSheetChangeEventInit = class external 'StyleSheetChangeEventInit' (JEventInit)
  public
    stylesheet: JCSSStyleSheet;
    documentSheet: Boolean;
  end;

implementation

end.
