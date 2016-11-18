unit Mozilla.AudioProcessingEvent;

interface

type
  // Pref=dom.webaudio.enabled
  JAudioProcessingEvent = class external 'AudioProcessingEvent' (JEvent)
  public
    playbackTime: Float;
    inputBuffer: JAudioBuffer; { Throws } 
    outputBuffer: JAudioBuffer; { Throws } 
  end;

implementation

end.
