unit Mozilla.MediaStreamTrack;

interface

type
  JVideoFacingModeEnum = (vfmeUser, vfmeEnvironment, vfmeLeft, vfmeRight);

  JMediaSourceEnum = (mseCamera, mseScreen, mseApplication, mseWindow, mseBrowser, mseMicrophone, mseAudioCapture, mseOther);

  TConstrainLong = Union;
  TConstrainDouble = Union;
  TConstrainBoolean = Union;
  TConstrainDOMString = Union;
  JMediaTrackConstraintSet = class external 'MediaTrackConstraintSet'
  public
    width: TConstrainLong;
    height: TConstrainLong;
    frameRate: TConstrainDouble;
    facingMode: TConstrainDOMString;
    mediaSource: String;
    browserWindow: Integer;
    scrollWithPage: Boolean;
    deviceId: TConstrainDOMString;
    viewportOffsetX: TConstrainLong;
    viewportOffsetY: TConstrainLong;
    viewportWidth: TConstrainLong;
    viewportHeight: TConstrainLong;
    echoCancellation: TConstrainBoolean;
    mozNoiseSuppression: TConstrainBoolean;
    mozAutoGainControl: TConstrainBoolean;
  end;

  JMediaTrackConstraints = class external 'MediaTrackConstraints' (JMediaTrackConstraintSet)
  public
    advanced: array of JMediaTrackConstraintSet;
  end;

  JMediaStreamTrackState = (mstsLive, mstsEnded);

  // Exposed=Window
  JMediaStreamTrack = class external 'MediaStreamTrack' (JEventTarget)
  public
    kind: String;
    id: String;
    label: String;
    enabled: Boolean;
    readyState: JMediaStreamTrackState;
    onended: JEventHandler;
    function clone: JMediaStreamTrack;
    procedure stop;
    function getConstraints: JMediaTrackConstraints;
    function getSettings: JMediaTrackSettings;
    function applyConstraints: void; overload; { Throws } 
    function applyConstraints(constraints: JMediaTrackConstraints): void; overload; { Throws } 
  end;

implementation

end.
