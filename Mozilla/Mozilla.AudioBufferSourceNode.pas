unit Mozilla.AudioBufferSourceNode;

interface

type
  // Pref=dom.webaudio.enabled
  JAudioBufferSourceNode = class external 'AudioBufferSourceNode' (JAudioNode)
  public
    buffer: JAudioBuffer;
    playbackRate: JAudioParam;
    detune: JAudioParam;
    loop: Boolean;
    loopStart: Float;
    loopEnd: Float;
    onended: JEventHandler;
    procedure start(when: Float = 0; grainOffset: Float = 0); overload; { Throws,UnsafeInPrerendering } 
    procedure start(when: Float = 0; grainOffset: Float = 0); overload; { Throws,UnsafeInPrerendering } 
    procedure start(when: Float = 0; grainOffset: Float = 0); overload; { Throws,UnsafeInPrerendering } 
    procedure start(when: Float = 0; grainOffset: Float = 0; grainDuration: Float); overload; { Throws,UnsafeInPrerendering } 
    procedure stop(when: Float = 0); { Throws,UnsafeInPrerendering } 
  end;

implementation

end.
