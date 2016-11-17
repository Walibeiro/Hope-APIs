unit W3C.ProgressEvents;

interface

uses
  W3C.DOM4;

type
  JProgressEventInit = class external 'ProgressEventInit' (JEventInit)
  public
    lengthComputable: Boolean;
    loaded: Integer;
    total: Integer;
  end;

  JProgressEvent = class external 'ProgressEvent' (JEvent)
  public
    lengthComputable: Boolean;
    loaded: Integer;
    total: Integer;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JProgressEventInit); overload;
  end;