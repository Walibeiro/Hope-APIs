unit Mozilla.External;

interface

type
  // JSImplementation=@mozilla.org/sidebar;1
  JExternal = class external 'External'
  public
    procedure AddSearchProvider(aDescriptionURL: String); { UnsafeInPrerendering } 
    function IsSearchProviderInstalled(aSearchURL: String): Integer;
    procedure addSearchEngine(engineURL: String; iconURL: String; suggestedTitle: String; suggestedCategory: String); { UnsafeInPrerendering,UseCounter } 
  end;

implementation

end.
