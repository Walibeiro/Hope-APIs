unit Mozilla.Plugin;

interface

type
  JPlugin = class external 'Plugin'
  public
    description: String;
    filename: String;
    version: String;
    name: String;
    length: Integer;
    function item(&index: Integer): JMimeType;
    function namedItem(&name: String): JMimeType;
  end;

implementation

end.
