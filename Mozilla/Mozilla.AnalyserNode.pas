unit Mozilla.AnalyserNode;

interface

type
  // Pref=dom.webaudio.enabled
  JAnalyserNode = class external 'AnalyserNode' (JAudioNode)
  public
    fftSize: Integer; { SetterThrows,Pure } 
    frequencyBinCount: Integer; { Pure } 
    minDecibels: Float; { SetterThrows,Pure } 
    maxDecibels: Float; { SetterThrows,Pure } 
    smoothingTimeConstant: Float; { SetterThrows,Pure } 
    procedure getFloatFrequencyData(&array: JFloat32Array);
    procedure getByteFrequencyData(&array: JUint8Array);
    procedure getFloatTimeDomainData(&array: JFloat32Array);
    procedure getByteTimeDomainData(&array: JUint8Array);
  end;

implementation

end.
