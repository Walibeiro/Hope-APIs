unit Mozilla.AddonEvent;

interface

type
  // Func=mozilla::AddonManagerWebAPI::IsAPIEnabled,Constructor( DOMString type , AddonEventInit eventInitDict)
  JAddonEvent = class external 'AddonEvent' (JEvent)
  public
    id: String;
    needsRestart: Boolean;
  end;

  JAddonEventInit = class external 'AddonEventInit' (JEventInit)
  public
    id: String;
    needsRestart: Boolean;
  end;

implementation

end.
