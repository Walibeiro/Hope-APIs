unit Mozilla.BeforeAfterKeyboardEvent;

interface

type
  // Constructor( DOMString typeArg , optional BeforeAfterKeyboardEventInit eventInitDict),Pref=dom.beforeAfterKeyboardEvent.enabled,ChromeOnly
  JBeforeAfterKeyboardEvent = class external 'BeforeAfterKeyboardEvent' (JKeyboardEvent)
  public
    embeddedCancelled: Boolean;
  end;

  JBeforeAfterKeyboardEventInit = class external 'BeforeAfterKeyboardEventInit' (JKeyboardEventInit)
  public
    embeddedCancelled: Boolean;
  end;

implementation

end.
