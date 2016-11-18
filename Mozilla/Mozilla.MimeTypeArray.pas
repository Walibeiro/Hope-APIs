unit Mozilla.MimeTypeArray;

interface

type
  JMimeTypeArray = class external 'MimeTypeArray'
  public
    length: Integer;
    function item(&index: Integer): JMimeType;
    function namedItem(&name: String): JMimeType;
  end;

implementation

end.
