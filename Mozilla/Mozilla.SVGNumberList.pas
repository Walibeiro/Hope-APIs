unit Mozilla.SVGNumberList;

interface

type
  JSVGNumberList = class external 'SVGNumberList'
  public
    numberOfItems: Integer;
    length: Integer;
    procedure clear; { Throws } 
    function initialize(newItem: JSVGNumber): JSVGNumber; { Throws } 
    function getItem(&index: Integer): JSVGNumber; { Throws } 
    function insertItemBefore(newItem: JSVGNumber; &index: Integer): JSVGNumber; { Throws } 
    function replaceItem(newItem: JSVGNumber; &index: Integer): JSVGNumber; { Throws } 
    function removeItem(&index: Integer): JSVGNumber; { Throws } 
    function appendItem(newItem: JSVGNumber): JSVGNumber; { Throws } 
  end;

implementation

end.
