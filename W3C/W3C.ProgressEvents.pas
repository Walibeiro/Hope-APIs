unit W3C.ProgressEvents;

interface

uses
  W3C.DOM4;

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