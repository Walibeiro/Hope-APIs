unit Mozilla.ShadowRoot;

interface

type
  // Func=nsDocument::IsWebComponentsEnabled
  JShadowRoot = class external 'ShadowRoot' (JDocumentFragment)
  public
    innerHTML: String; { SetterThrows,TreatNullAs=EmptyString } 
    host: JElement;
    olderShadowRoot: JShadowRoot;
    applyAuthorStyles: Boolean;
    styleSheets: JStyleSheetList;
    function getElementById(elementId: String): JElement;
    function getElementsByTagName(localName: String): JHTMLCollection;
    function getElementsByTagNameNS(&namespace: String; localName: String): JHTMLCollection;
    function getElementsByClassName(classNames: String): JHTMLCollection;
  end;

implementation

end.
