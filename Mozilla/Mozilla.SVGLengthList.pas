unit Mozilla.SVGLengthList;

interface

type
  JSVGLengthList = class external 'SVGLengthList'
  public
    numberOfItems: Integer;
    length: Integer;
    procedure clear; { Throws } 
    function initialize(newItem: JSVGLength): JSVGLength; { Throws } 
    function getItem(&index: Integer): JSVGLength; { Throws } 
    function insertItemBefore(newItem: JSVGLength; &index: Integer): JSVGLength; { Throws } 
    function replaceItem(newItem: JSVGLength; &index: Integer): JSVGLength; { Throws } 
    function removeItem(&index: Integer): JSVGLength; { Throws } 
    function appendItem(newItem: JSVGLength): JSVGLength; { Throws } 
  end;

implementation

end.
