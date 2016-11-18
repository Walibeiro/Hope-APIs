unit Mozilla.RecordErrorEvent;

interface

type
  // Constructor( DOMString type , optional RecordErrorEventInit eventInitDict)
  JRecordErrorEvent = class external 'RecordErrorEvent' (JEvent)
  public
    name: String;
  end;

  JRecordErrorEventInit = class external 'RecordErrorEventInit' (JEventInit)
  public
    &name: String;
  end;

implementation

end.
