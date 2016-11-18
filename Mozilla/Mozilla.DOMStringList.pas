unit Mozilla.DOMStringList;

interface

type
  // Exposed=( Window , Worker , System)
  JDOMStringList = class external 'DOMStringList'
  public
    length: Integer;
    function item(&index: Integer): String;
    function contains(string: String): Boolean;
  end;

implementation

end.
