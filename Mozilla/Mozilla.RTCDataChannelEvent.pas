unit Mozilla.RTCDataChannelEvent;

interface

type
  JRTCDataChannelEventInit = class external 'RTCDataChannelEventInit' (JEventInit)
  public
    channel: JRTCDataChannel;
  end;

  // Pref=media.peerconnection.enabled,Constructor( DOMString type , optional RTCDataChannelEventInit eventInitDict)
  JRTCDataChannelEvent = class external 'RTCDataChannelEvent' (JEvent)
  public
    channel: JRTCDataChannel;
  end;

implementation

end.
