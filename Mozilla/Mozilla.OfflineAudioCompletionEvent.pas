unit Mozilla.OfflineAudioCompletionEvent;

interface

type
  // Pref=dom.webaudio.enabled
  JOfflineAudioCompletionEvent = class external 'OfflineAudioCompletionEvent' (JEvent)
  public
    renderedBuffer: JAudioBuffer;
  end;

implementation

end.
