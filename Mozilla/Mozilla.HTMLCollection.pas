unit Mozilla.HTMLCollection;

interface

type
  // LegacyUnenumerableNamedProperties
  JHTMLCollection = class external 'HTMLCollection'
  public
    length: Integer;
    function item(&index: Integer): JElement;
    function namedItem(&name: String): JElement;
  end;

implementation

end.
