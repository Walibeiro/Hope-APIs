unit Mozilla.SVGTransformList;

interface

type
  JSVGTransformList = class external 'SVGTransformList'
  public
    numberOfItems: Integer;
    length: Integer;
    procedure clear; { Throws } 
    function initialize(newItem: JSVGTransform): JSVGTransform; { Throws } 
    function getItem(&index: Integer): JSVGTransform; { Throws } 
    function insertItemBefore(newItem: JSVGTransform; &index: Integer): JSVGTransform; { Throws } 
    function replaceItem(newItem: JSVGTransform; &index: Integer): JSVGTransform; { Throws } 
    function removeItem(&index: Integer): JSVGTransform; { Throws } 
    function appendItem(newItem: JSVGTransform): JSVGTransform; { Throws } 
    function createSVGTransformFromMatrix(matrix: JSVGMatrix): JSVGTransform;
    function consolidate: JSVGTransform; { Throws } 
  end;

implementation

end.
