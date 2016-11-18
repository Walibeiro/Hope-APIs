unit Mozilla.MediaStreamAudioDestinationNode;

interface

type
  // Pref=dom.webaudio.enabled
  JMediaStreamAudioDestinationNode = class external 'MediaStreamAudioDestinationNode' (JAudioNode)
  public
    stream: JMediaStream;
  end;

implementation

end.
