unit Mozilla.ConstantSourceNode;

interface

type
  JConstantSourceOptions = class external 'ConstantSourceOptions'
  public
    offset: Float;
  end;

  // Pref=dom.webaudio.enabled,Constructor( AudioContext context , optional ConstantSourceOptions options)
  JConstantSourceNode = class external 'ConstantSourceNode' (JAudioNode)
  public
    offset: JAudioParam;
    onended: JEventHandler;
    procedure start(when: Float = 0); { Throws,UnsafeInPrerendering } 
    procedure stop(when: Float = 0); { Throws,UnsafeInPrerendering } 
  end;

implementation

end.
