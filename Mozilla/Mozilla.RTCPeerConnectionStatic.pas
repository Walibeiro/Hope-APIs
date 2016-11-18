unit Mozilla.RTCPeerConnectionStatic;

interface

type
  JRTCLifecycleEvent = (initialized, icegatheringstatechange, iceconnectionstatechange);

  JPeerConnectionLifecycleCallback = procedure(pc: JRTCPeerConnection; windowId: Integer; eventType: JRTCLifecycleEvent);

  // ChromeOnly,Pref=media.peerconnection.enabled,JSImplementation=@mozilla.org/dom/peerconnectionstatic;1,Constructor()
  JRTCPeerConnectionStatic = class external 'RTCPeerConnectionStatic'
  public
    procedure registerPeerConnectionLifecycleCallback(cb: JPeerConnectionLifecycleCallback);
  end;

implementation

end.
