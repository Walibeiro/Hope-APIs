unit Mozilla.MediaDevices;

interface

type
  // Func=Navigator::HasUserMediaSupport
  JMediaDevices = class external 'MediaDevices' (JEventTarget)
  public
    ondevicechange: JEventHandler; { Pref=media.ondevicechange.enabled } 
    function getSupportedConstraints: JMediaTrackSupportedConstraints;
    function enumerateDevices: array of MediaDeviceInfo; { Throws } 
    function getUserMedia: MediaStream; overload; { Throws } 
    function getUserMedia(constraints: JMediaStreamConstraints): MediaStream; overload; { Throws } 
  end;

implementation

end.
