unit Mozilla.NodeIterator;

interface

type
  JNodeIterator = class external 'NodeIterator'
  public
    root: JNode; { Constant } 
    referenceNode: JNode; { Pure } 
    pointerBeforeReferenceNode: Boolean; { Pure } 
    whatToShow: Integer; { Constant } 
    filter: JNodeFilter; { Constant } 
    function nextNode: JNode; { Throws } 
    function previousNode: JNode; { Throws } 
    procedure detach;
  end;

implementation

end.
