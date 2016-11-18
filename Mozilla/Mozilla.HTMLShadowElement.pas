unit Mozilla.HTMLShadowElement;

interface

type
  // Func=nsDocument::IsWebComponentsEnabled
  JHTMLShadowElement = class external 'HTMLShadowElement' (JHTMLElement)
  public
    olderShadowRoot: JShadowRoot;
  end;

implementation

end.
