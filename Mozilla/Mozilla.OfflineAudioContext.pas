unit Mozilla.OfflineAudioContext;

interface

type
  // Constructor( unsigned long numberOfChannels , unsigned long length , float sampleRate),Pref=dom.webaudio.enabled
  JOfflineAudioContext = class external 'OfflineAudioContext' (JAudioContext)
  public
    oncomplete: JEventHandler;
    length: Integer;
    function startRendering: AudioBuffer; { Throws } 
  end;

implementation

end.
