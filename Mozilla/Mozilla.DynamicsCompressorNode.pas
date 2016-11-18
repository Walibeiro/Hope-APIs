unit Mozilla.DynamicsCompressorNode;

interface

type
  // Pref=dom.webaudio.enabled
  JDynamicsCompressorNode = class external 'DynamicsCompressorNode' (JAudioNode)
  public
    threshold: JAudioParam;
    knee: JAudioParam;
    ratio: JAudioParam;
    reduction: Float;
    attack: JAudioParam;
    release: JAudioParam;
  end;

implementation

end.
