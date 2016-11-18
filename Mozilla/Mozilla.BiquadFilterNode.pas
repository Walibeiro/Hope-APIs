unit Mozilla.BiquadFilterNode;

interface

type
  JBiquadFilterType = (bftLowpass, bftHighpass, bftBandpass, bftLowshelf, bftHighshelf, bftPeaking, bftNotch, bftAllpass);

  // Pref=dom.webaudio.enabled
  JBiquadFilterNode = class external 'BiquadFilterNode' (JAudioNode)
  public
    type: JBiquadFilterType;
    frequency: JAudioParam;
    detune: JAudioParam;
    Q: JAudioParam;
    gain: JAudioParam;
    procedure getFrequencyResponse(frequencyHz: JFloat32Array; magResponse: JFloat32Array; phaseResponse: JFloat32Array);
  end;

implementation

end.
