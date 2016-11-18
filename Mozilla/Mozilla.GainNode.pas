unit Mozilla.GainNode;

interface

type
  // Pref=dom.webaudio.enabled
  JGainNode = class external 'GainNode' (JAudioNode)
  public
    gain: JAudioParam;
  end;

implementation

end.
