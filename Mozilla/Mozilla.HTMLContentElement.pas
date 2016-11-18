unit Mozilla.HTMLContentElement;

interface

type
  // Func=nsDocument::IsWebComponentsEnabled
  JHTMLContentElement = class external 'HTMLContentElement' (JHTMLElement)
  public
    select: String;
    function getDistributedNodes: JNodeList;
  end;

implementation

end.
