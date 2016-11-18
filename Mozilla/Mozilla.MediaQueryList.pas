unit Mozilla.MediaQueryList;

interface

type
  JMediaQueryList = class external 'MediaQueryList'
  public
    media: String;
    matches: Boolean;
    procedure addListener(listener: JMediaQueryListListener);
    procedure removeListener(listener: JMediaQueryListListener);
  end;

  JMediaQueryListListener = procedure(list: JMediaQueryList);

implementation

end.
