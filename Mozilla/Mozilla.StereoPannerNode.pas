unit Mozilla.StereoPannerNode;

interface

type
  // Pref=dom.webaudio.enabled
  JStereoPannerNode = class external 'StereoPannerNode' (JAudioNode)
  public
    pan: JAudioParam;
  end;

implementation

end.
