unit Mozilla.StyleSheetList;

interface

type
  JStyleSheetList = class external 'StyleSheetList'
  public
    length: Integer;
    function item(&index: Integer): JStyleSheet;
  end;

implementation

end.
