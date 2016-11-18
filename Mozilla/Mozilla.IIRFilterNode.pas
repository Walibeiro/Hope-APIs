unit Mozilla.IIRFilterNode;

interface

type
  // Pref=dom.webaudio.enabled
  JIIRFilterNode = class external 'IIRFilterNode' (JAudioNode)
  public
    procedure getFrequencyResponse(frequencyHz: JFloat32Array; magResponse: JFloat32Array; phaseResponse: JFloat32Array);
  end;

implementation

end.
