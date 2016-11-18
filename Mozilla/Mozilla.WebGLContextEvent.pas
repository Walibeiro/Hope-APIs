unit Mozilla.WebGLContextEvent;

interface

type
  // Constructor( DOMString type , optional WebGLContextEventInit eventInit),Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLContextEvent = class external 'WebGLContextEvent' (JEvent)
  public
    statusMessage: String;
  end;

  JWebGLContextEventInit = class external 'WebGLContextEventInit' (JEventInit)
  public
    statusMessage: String;
  end;

implementation

end.
