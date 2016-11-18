unit Mozilla.ScrollViewChangeEvent;

interface

type
  JScrollState = (ssStarted, ssStopped);

  JScrollViewChangeEventInit = class external 'ScrollViewChangeEventInit' (JEventInit)
  public
    state: JScrollState;
  end;

  // Constructor( DOMString type , optional ScrollViewChangeEventInit eventInit),ChromeOnly
  JScrollViewChangeEvent = class external 'ScrollViewChangeEvent' (JEvent)
  public
    state: JScrollState;
  end;

implementation

end.
