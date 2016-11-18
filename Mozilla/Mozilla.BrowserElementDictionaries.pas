unit Mozilla.BrowserElementDictionaries;

interface

type
  JOpenWindowEventDetail = class external 'OpenWindowEventDetail'
  public
    url: String;
    &name: String;
    features: String;
    frameElement: JNode;
  end;

  JDOMWindowResizeEventDetail = class external 'DOMWindowResizeEventDetail'
  public
    width: Integer;
    height: Integer;
  end;

implementation

end.
