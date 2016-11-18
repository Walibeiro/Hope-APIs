unit Mozilla.TreeColumn;

interface

type
  // Func=IsChromeOrXBL
  JTreeColumn = class external 'TreeColumn'
  const 
    TYPE_TEXT: Integer = 1;
    TYPE_CHECKBOX: Integer = 2;
    TYPE_PROGRESSMETER: Integer = 3;
    TYPE_PASSWORD: Integer = 4;
  public
    element: JElement; { Throws } 
    columns: JTreeColumns;
    x: Integer; { Throws } 
    width: Integer; { Throws } 
    id: String;
    index: Integer;
    primary: Boolean;
    cycler: Boolean;
    editable: Boolean;
    selectable: Boolean;
    type: Integer;
    function getNext: JTreeColumn;
    function getPrevious: JTreeColumn;
    procedure invalidate; { Throws } 
  end;

implementation

end.
