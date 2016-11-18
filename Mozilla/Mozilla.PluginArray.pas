unit Mozilla.PluginArray;

interface

type
  JPluginArray = class external 'PluginArray'
  public
    length: Integer;
    function item(&index: Integer): JPlugin;
    function namedItem(&name: String): JPlugin;
    procedure refresh(reloadDocuments: Boolean = False);
  end;

implementation

end.
