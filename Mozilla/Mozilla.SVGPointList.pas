unit Mozilla.SVGPointList;

interface

type
  JSVGPointList = class external 'SVGPointList'
  public
    numberOfItems: Integer;
    length: Integer;
    procedure clear; { Throws } 
    function initialize(newItem: JSVGPoint): JSVGPoint; { Throws } 
    function getItem(&index: Integer): JSVGPoint; { Throws } 
    function insertItemBefore(newItem: JSVGPoint; &index: Integer): JSVGPoint; { Throws } 
    function replaceItem(newItem: JSVGPoint; &index: Integer): JSVGPoint; { Throws } 
    function removeItem(&index: Integer): JSVGPoint; { Throws } 
    function appendItem(newItem: JSVGPoint): JSVGPoint; { Throws } 
  end;

implementation

end.
