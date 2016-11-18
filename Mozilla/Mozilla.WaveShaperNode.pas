unit Mozilla.WaveShaperNode;

interface

type
  JOverSampleType = (ostNone, ost2x, ost4x);

  // Pref=dom.webaudio.enabled
  JWaveShaperNode = class external 'WaveShaperNode' (JAudioNode)
  public
    curve: JFloat32Array; { SetterThrows } 
    oversample: JOverSampleType;
  end;

implementation

end.
