unit Mozilla.PerformanceEntryEvent;

interface

type
  JPerformanceEntryEventInit = class external 'PerformanceEntryEventInit' (JEventInit)
  public
    &name: String;
    entryType: String;
    startTime: JDOMHighResTimeStamp;
    duration: JDOMHighResTimeStamp;
    epoch: Float;
    origin: String;
  end;

  // Constructor( DOMString type , optional PerformanceEntryEventInit eventInitDict),ChromeOnly
  JPerformanceEntryEvent = class external 'PerformanceEntryEvent' (JEvent)
  public
    name: String;
    entryType: String;
    startTime: JDOMHighResTimeStamp;
    duration: JDOMHighResTimeStamp;
    epoch: Float;
    origin: String;
  end;

implementation

end.
