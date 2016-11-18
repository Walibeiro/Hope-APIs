unit Mozilla.RTCPeerConnectionIceEvent;

interface

type
  JRTCPeerConnectionIceEventInit = class external 'RTCPeerConnectionIceEventInit' (JEventInit)
  public
    candidate: JRTCIceCandidate;
  end;

  // Pref=media.peerconnection.enabled,Constructor( DOMString type , optional RTCPeerConnectionIceEventInit eventInitDict)
  JRTCPeerConnectionIceEvent = class external 'RTCPeerConnectionIceEvent' (JEvent)
  public
    candidate: JRTCIceCandidate;
  end;

implementation

end.
