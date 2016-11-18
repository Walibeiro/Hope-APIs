unit Mozilla.SVGStringList;

interface

type
  JSVGStringList = class external 'SVGStringList'
  public
    length: Integer;
    numberOfItems: Integer;
    procedure clear;
    function initialize(newItem: String): String; { Throws } 
    function getItem(&index: Integer): String; { Throws } 
    function (&index: Integer): String;
    function insertItemBefore(newItem: String; &index: Integer): String; { Throws } 
    function replaceItem(newItem: String; &index: Integer): String; { Throws } 
    function removeItem(&index: Integer): String; { Throws } 
    function appendItem(newItem: String): String; { Throws } 
  end;

implementation

end.
