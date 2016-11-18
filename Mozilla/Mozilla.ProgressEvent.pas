unit Mozilla.ProgressEvent;

interface

type
  // Constructor( DOMString type , optional ProgressEventInit eventInitDict)
  JProgressEvent = class external 'ProgressEvent' (JEvent)
  public
    lengthComputable: Boolean;
    loaded: Integer;
    total: Integer;
  end;

  JProgressEventInit = class external 'ProgressEventInit' (JEventInit)
  public
    lengthComputable: Boolean;
    loaded: Integer;
    total: Integer;
  end;

implementation

end.
