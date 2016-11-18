unit Mozilla.UserProximityEvent;

interface

type
  // Constructor( DOMString type , optional UserProximityEventInit eventInitDict)
  JUserProximityEvent = class external 'UserProximityEvent' (JEvent)
  public
    near: Boolean;
  end;

  JUserProximityEventInit = class external 'UserProximityEventInit' (JEventInit)
  public
    near: Boolean;
  end;

implementation

end.
