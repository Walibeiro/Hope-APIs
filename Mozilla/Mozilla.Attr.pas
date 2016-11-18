unit Mozilla.Attr;

interface

type
  JAttr = class external 'Attr' (JNode)
  public
    localName: String;
    value: String; { SetterThrows } 
    name: String; { Constant } 
    namespaceURI: String; { Constant } 
    prefix: String; { Constant } 
    specified: Boolean;
    ownerElement: JElement; { GetterThrows } 
  end;

implementation

end.
