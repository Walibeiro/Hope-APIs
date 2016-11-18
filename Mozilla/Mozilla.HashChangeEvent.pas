unit Mozilla.HashChangeEvent;

interface

type
  // Constructor( DOMString type , optional HashChangeEventInit eventInitDict),LegacyEventInit
  JHashChangeEvent = class external 'HashChangeEvent' (JEvent)
  public
    oldURL: String;
    newURL: String;
    procedure initHashChangeEvent(typeArg: String; canBubbleArg: Boolean; cancelableArg: Boolean; oldURLArg: String; newURLArg: String);
  end;

  JHashChangeEventInit = class external 'HashChangeEventInit' (JEventInit)
  public
    oldURL: String;
    newURL: String;
  end;

implementation

end.
