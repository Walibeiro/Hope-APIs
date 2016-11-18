unit Mozilla.CloseEvent;

interface

type
  // Constructor( DOMString type , optional CloseEventInit eventInitDict),LegacyEventInit
  JCloseEvent = class external 'CloseEvent' (JEvent)
  public
    wasClean: Boolean;
    code: Integer;
    reason: String;
  end;

  JCloseEventInit = class external 'CloseEventInit' (JEventInit)
  public
    wasClean: Boolean;
    code: Integer;
    reason: String;
  end;

implementation

end.
