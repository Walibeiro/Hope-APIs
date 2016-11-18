unit Mozilla.SVGPathSegList;

interface

type
  JSVGPathSegList = class external 'SVGPathSegList'
  public
    numberOfItems: Integer;
    length: Integer;
    procedure clear; { Throws } 
    function initialize(newItem: JSVGPathSeg): JSVGPathSeg; { Throws } 
    function getItem(&index: Integer): JSVGPathSeg; { Throws } 
    function insertItemBefore(newItem: JSVGPathSeg; &index: Integer): JSVGPathSeg; { Throws } 
    function replaceItem(newItem: JSVGPathSeg; &index: Integer): JSVGPathSeg; { Throws } 
    function removeItem(&index: Integer): JSVGPathSeg; { Throws } 
    function appendItem(newItem: JSVGPathSeg): JSVGPathSeg; { Throws } 
  end;

implementation

end.
