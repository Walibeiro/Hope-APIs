unit Mozilla.BeforeUnloadEvent;

interface

type
  JBeforeUnloadEvent = class external 'BeforeUnloadEvent' (JEvent)
  public
    returnValue: String;
  end;

implementation

end.
