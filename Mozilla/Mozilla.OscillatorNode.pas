unit Mozilla.OscillatorNode;

interface

type
  JOscillatorType = (otSine, otSquare, otSawtooth, otTriangle, otCustom);

  // Pref=dom.webaudio.enabled
  JOscillatorNode = class external 'OscillatorNode' (JAudioNode)
  public
    type: JOscillatorType; { SetterThrows } 
    frequency: JAudioParam;
    detune: JAudioParam;
    onended: JEventHandler;
    procedure start(when: Float = 0); { Throws,UnsafeInPrerendering } 
    procedure stop(when: Float = 0); { Throws,UnsafeInPrerendering } 
    procedure setPeriodicWave(periodicWave: JPeriodicWave);
  end;

implementation

end.
