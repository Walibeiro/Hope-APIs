unit Mozilla.RTCRtpReceiver;

interface

type
  // Pref=media.peerconnection.enabled,JSImplementation=@mozilla.org/dom/rtpreceiver;1
  JRTCRtpReceiver = class external 'RTCRtpReceiver'
  public
    track: JMediaStreamTrack;
  end;

implementation

end.
