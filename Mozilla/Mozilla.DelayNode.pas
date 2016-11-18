unit Mozilla.DelayNode;

interface

type
  // Pref=dom.webaudio.enabled
  JDelayNode = class external 'DelayNode' (JAudioNode)
  public
    delayTime: JAudioParam;
  end;

implementation

end.
