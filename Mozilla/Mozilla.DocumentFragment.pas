unit Mozilla.DocumentFragment;

interface

type
  // Constructor
  JDocumentFragment = class external 'DocumentFragment' (JNode)
  public
    function getElementById(elementId: String): JElement;
    function querySelector(selectors: String): JElement; { Throws } 
    function querySelectorAll(selectors: String): JNodeList; { Throws } 
  end;

implementation

end.
