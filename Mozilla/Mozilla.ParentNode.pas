unit Mozilla.ParentNode;

interface

type
  // NoInterfaceObject
  JParentNode = class external 'ParentNode'
  public
    children: JHTMLCollection; { Constant } 
    firstElementChild: JElement; { Pure } 
    lastElementChild: JElement; { Pure } 
    childElementCount: Integer; { Pure } 
    procedure prepend(nodes: Union); { Throws,Unscopable } 
    procedure append(nodes: Union); { Throws,Unscopable } 
  end;

implementation

end.
