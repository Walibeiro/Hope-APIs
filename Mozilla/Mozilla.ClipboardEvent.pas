unit Mozilla.ClipboardEvent;

interface

type
  // Constructor( DOMString type , optional ClipboardEventInit eventInitDict)
  JClipboardEvent = class external 'ClipboardEvent' (JEvent)
  public
    clipboardData: JDataTransfer;
  end;

  JClipboardEventInit = class external 'ClipboardEventInit' (JEventInit)
  public
    data: String;
    dataType: String;
  end;

implementation

end.
