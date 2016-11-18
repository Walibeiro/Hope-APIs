unit Mozilla.ErrorEvent;

interface

type
  // Constructor( DOMString type , optional ErrorEventInit eventInitDict),Exposed=( Window , System)
  JErrorEvent = class external 'ErrorEvent' (JEvent)
  public
    message: String;
    filename: String;
    lineno: Integer;
    colno: Integer;
    error: Variant;
  end;

  JErrorEventInit = class external 'ErrorEventInit' (JEventInit)
  public
    message: String;
    filename: String;
    lineno: Integer;
    colno: Integer;
    error: Variant;
  end;

implementation

end.
