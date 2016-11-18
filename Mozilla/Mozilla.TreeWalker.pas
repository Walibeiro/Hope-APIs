unit Mozilla.TreeWalker;

interface

type
  JTreeWalker = class external 'TreeWalker'
  public
    root: JNode; { Constant } 
    whatToShow: Integer; { Constant } 
    filter: JNodeFilter; { Constant } 
    currentNode: JNode; { Pure,SetterThrows } 
    function parentNode: JNode; { Throws } 
    function firstChild: JNode; { Throws } 
    function lastChild: JNode; { Throws } 
    function previousSibling: JNode; { Throws } 
    function nextSibling: JNode; { Throws } 
    function previousNode: JNode; { Throws } 
    function nextNode: JNode; { Throws } 
  end;

implementation

end.
