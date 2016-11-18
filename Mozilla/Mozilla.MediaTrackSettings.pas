unit Mozilla.MediaTrackSettings;

interface

type
  JMediaTrackSettings = class external 'MediaTrackSettings'
  public
    width: Integer;
    height: Integer;
    frameRate: Float;
    facingMode: String;
    deviceId: String;
    echoCancellation: Boolean;
    mozNoiseSuppression: Boolean;
    mozAutoGainControl: Boolean;
    mediaSource: String;
    browserWindow: Integer;
    scrollWithPage: Boolean;
    viewportOffsetX: Integer;
    viewportOffsetY: Integer;
    viewportWidth: Integer;
    viewportHeight: Integer;
  end;

implementation

end.
