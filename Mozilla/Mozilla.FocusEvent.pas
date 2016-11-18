unit Mozilla.FocusEvent;

interface

type
  // Constructor( DOMString typeArg , optional FocusEventInit focusEventInitDict)
  JFocusEvent = class external 'FocusEvent' (JUIEvent)
  public
    relatedTarget: JEventTarget;
  end;

  JFocusEventInit = class external 'FocusEventInit' (JUIEventInit)
  public
    relatedTarget: JEventTarget;
  end;

implementation

end.
