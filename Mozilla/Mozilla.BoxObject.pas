unit Mozilla.BoxObject;

interface

type
  // Func=IsChromeOrXBL
  JBoxObject = class external 'BoxObject'
  public
    element: JElement;
    x: Integer;
    y: Integer;
    screenX: Integer; { Throws } 
    screenY: Integer; { Throws } 
    width: Integer;
    height: Integer;
    parentBox: JElement;
    firstChild: JElement;
    lastChild: JElement;
    nextSibling: JElement;
    previousSibling: JElement;
    function getPropertyAsSupports(propertyName: String): JnsISupports;
    procedure setPropertyAsSupports(propertyName: String; value: JnsISupports);
    function getProperty(propertyName: String): String; { Throws } 
    procedure setProperty(propertyName: String; propertyValue: String);
    procedure removeProperty(propertyName: String);
  end;

implementation

end.
