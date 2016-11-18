unit Mozilla.ConvolverNode;

interface

type
  // Pref=dom.webaudio.enabled
  JConvolverNode = class external 'ConvolverNode' (JAudioNode)
  public
    buffer: JAudioBuffer; { SetterThrows } 
    normalize: Boolean;
  end;

implementation

end.
