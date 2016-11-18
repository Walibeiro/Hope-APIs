unit Mozilla.DOMRectList;

interface

type
  // ArrayClass
  JDOMRectList = class external 'DOMRectList'
  public
    length: Integer;
    function item(&index: Integer): JDOMRect;
  end;

implementation

end.
