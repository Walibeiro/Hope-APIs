unit Mozilla.CompositionEvent;

interface

type
  JCompositionEvent = class external 'CompositionEvent' (JUIEvent)
  public
    data: String;
    locale: String;
    ranges: array of JTextClause; { ChromeOnly,Cached,Pure } 
    procedure initCompositionEvent(typeArg: String; canBubbleArg: Boolean; cancelableArg: Boolean; viewArg: JWindow; dataArg: String; localeArg: String);
  end;

implementation

end.
