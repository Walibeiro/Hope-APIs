unit Mozilla.IdleDeadline;

interface

type
  // Pref=dom.requestIdleCallback.enabled
  JIdleDeadline = class external 'IdleDeadline'
  public
    didTimeout: Boolean;
    function timeRemaining: JDOMHighResTimeStamp;
  end;

implementation

end.
