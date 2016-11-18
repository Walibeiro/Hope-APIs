unit Mozilla.ChildNode;

interface

type
  // NoInterfaceObject
  JChildNode = class external 'ChildNode'
  public
    procedure before(nodes: Union); { Throws,Unscopable } 
    procedure after(nodes: Union); { Throws,Unscopable } 
    procedure replaceWith(nodes: Union); { Throws,Unscopable } 
    procedure remove; { Unscopable } 
  end;

  // NoInterfaceObject
  JNonDocumentTypeChildNode = class external 'NonDocumentTypeChildNode'
  public
    previousElementSibling: JElement; { Pure } 
    nextElementSibling: JElement; { Pure } 
  end;

implementation

end.
