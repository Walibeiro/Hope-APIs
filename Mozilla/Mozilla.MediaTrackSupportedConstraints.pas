unit Mozilla.MediaTrackSupportedConstraints;

interface

type
  JMediaTrackSupportedConstraints = class external 'MediaTrackSupportedConstraints'
  public
    width: Boolean;
    height: Boolean;
    aspectRatio: Boolean;
    frameRate: Boolean;
    facingMode: Boolean;
    volume: Boolean;
    sampleRate: Boolean;
    sampleSize: Boolean;
    echoCancellation: Boolean;
    mozNoiseSuppression: Boolean;
    mozAutoGainControl: Boolean;
    latency: Boolean;
    deviceId: Boolean;
    groupId: Boolean;
    mediaSource: Boolean;
    browserWindow: Boolean;
    scrollWithPage: Boolean;
    viewportOffsetX: Boolean;
    viewportOffsetY: Boolean;
    viewportWidth: Boolean;
    viewportHeight: Boolean;
  end;

implementation

end.
