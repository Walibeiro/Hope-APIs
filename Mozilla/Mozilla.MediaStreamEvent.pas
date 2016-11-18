unit Mozilla.MediaStreamEvent;

interface

type
  JMediaStreamEventInit = class external 'MediaStreamEventInit' (JEventInit)
  public
    stream: JMediaStream;
  end;

  // Pref=media.peerconnection.enabled,Constructor( DOMString type , optional MediaStreamEventInit eventInitDict)
  JMediaStreamEvent = class external 'MediaStreamEvent' (JEvent)
  public
    stream: JMediaStream;
  end;

implementation

end.
