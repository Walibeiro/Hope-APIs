unit W3C.MediaCaptureAndStreams;

interface

uses
  W3C.DOM4;

type
  JFloatRange = class external 'FloatRange'
  public
    max: Float;
    min: Float;
  end;

  JConstrainFloatRange = class external 'ConstrainFloatRange' (JFloatRange)
  public
    exact: Float;
    ideal: Float;
  end;

  JIntegerRange = class external 'IntegerRange'
  public
    max: Integer;
    min: Integer;
  end;

  JConstrainIntegerRange = class external 'ConstrainIntegerRange' (JIntegerRange)
  public
    exact: Integer;
    ideal: Integer;
  end;

  JConstrainBooleanParameters = class external 'ConstrainBooleanParameters'
  public
    exact: Boolean;
    ideal: Boolean;
  end;

  JConstrainDOMStringParameters = class external 'ConstrainDOMStringParameters'
  public
    exact: Variant; // TODO
    ideal: Variant; // TODO
  end;

  JMediaStreamTrackState = String;
  JMediaStreamTrackStateHelper = strict helper for JMediaStreamTrackState
    const Live = 'live';
    const Ended = 'ended';
  end;

  JVideoFacingModeEnum = String;
  JVideoFacingModeEnumHelper = strict helper for JVideoFacingModeEnum
    const User = 'user';
    const Environment = 'environment';
    const Left = 'left';
    const Right = 'right';
  end;

  TMediaStreamError = Variant;

  JMediaTrackCapabilities = class external 'MediaTrackCapabilities'
  public
    width: Variant;
    widthAsInteger: Integer; external 'width';
    widthAsIntegerRange: JIntegerRange; external 'width';
    height: Variant;
    heightAsInteger: Variant; external '';
    heightAsIntegerRange: Variant; external '';
    aspectRatio: Variant;
    aspectRatioAsFloat: Float; external 'aspectRatio';
    aspectRatioAsFloatRange: JFloatRange; external 'aspectRatio';
    frameRate: Variant;
    frameRateAsFloat: Float; external 'frameRate';
    frameRateAsFloatRange: JFloatRange; external 'frameRate';
    facingMode: array of String;
    volume: Variant;
    volumeAsFloat: Float; external 'volume';
    volumeAsFloatRange: JFloatRange; external 'volume';
    sampleRate: Variant;
    sampleRateAsInteger: Integer; external 'sampleRate';
    sampleRateAsIntegerRange: JIntegerRange; external 'sampleRate';
    sampleSize: Variant;
    sampleSizeAsInteger: Integer; external 'sampleSize';
    sampleSizeAsIntegerRange: JIntegerRange; external 'sampleSize';
    echoCancellation: array of Boolean;
    latency: Variant;
    latencyAsFloat: Float; external 'latency';
    latencyAsFloatRange: JFloatRange; external 'latency';
    channelCount: Variant;
    channelCountAsInteger: Integer; external 'channelCount';
    channelCountAsIntegerRange: JIntegerRange; external 'channelCount';
    deviceId: String;
    groupId: String;
  end;

  JMediaTrackConstraintSet = class external 'MediaTrackConstraintSet'
  public
    width: Variant;
    widthAsInteger: Integer; external 'width';
    widthAsConstrainIntegerRange: JConstrainIntegerRange; external 'width';
    height: Variant;
    heightAsInteger: Integer; external 'height';
    heightAsConstrainIntegerRange: JConstrainIntegerRange; external 'height';
    aspectRatio: Variant;
    aspectRatioAsFloat: Float; external 'aspectRatio';
    aspectRatioAsConstrainDouble: JConstrainFloatRange; external 'aspectRatio';
    frameRate: Variant;
    frameRateAsFloat: Float; external 'frameRate';
    frameRateAsConstrainDouble: JConstrainFloatRange; external 'frameRate';
    facingMode: Variant;
    facingModeAsString: String; external 'facingMode';
    facingModeAsConstrainDOMString: JConstrainDOMStringParameters; external 'facingMode';
    volume: Variant;
    volumeAsFloat: Float; external 'volume';
    volumeAsConstrainDouble: JConstrainFloatRange; external 'volume';
    sampleRate: Variant;
    sampleRateAsInteger: Integer; external 'sampleRate';
    sampleRateAsConstrainLong: JConstrainIntegerRange; external 'sampleRate';
    sampleSize: Variant;
    sampleSizeAsInteger: Integer; external 'sampleSize';
    sampleSizeAsConstrainLong: JConstrainIntegerRange; external 'sampleSize';
    echoCancellation: Variant;
    echoCancellationAsBoolean: Boolean; external 'echoCancellation';
    echoCancellationAsConstrainBoolean: JConstrainBooleanParameters; external 'echoCancellation';
    latency: Variant;
    latencyAsFloat: Float; external 'latency';
    latencyAsConstrainDouble: JConstrainFloatRange; external 'latency';
    channelCount: Variant;
    channelCountAsInteger: Integer; external 'channelCount';
    channelCountAsConstrainLong: JConstrainIntegerRange; external 'channelCount';
    deviceId: Variant;
    deviceIdAsString: String; external 'deviceId';
    deviceIdAsConstrainDOMString: JConstrainDOMStringParameters; external 'deviceId';
    groupId: Variant;
    groupIdAsString: String; external 'groupId';
    groupIdAsConstrainDOMString: JConstrainDOMStringParameters; external 'groupId';
  end;

  JMediaTrackConstraints = class external 'MediaTrackConstraints' (JMediaTrackConstraintSet)
  public
    advanced: array of JMediaTrackConstraintSet;
  end;

  JMediaTrackSettings = class external 'MediaTrackSettings'
  public
    width: Integer;
    height: Integer;
    aspectRatio: Float;
    frameRate: Float;
    facingMode: String;
    volume: Float;
    sampleRate: Integer;
    sampleSize: Integer;
    echoCancellation: Boolean;
    latency: Float;
    channelCount: Integer;
    deviceId: String;
    groupId: String;
  end;

  // Exposed = Window
  JMediaStreamTrack = partial class external 'MediaStreamTrack' (JEventTarget)
  public
    kind: String;
    id: String;
    label: String;
    enabled: Boolean;
    muted: Boolean;
    onmute: TEventHandler;
    onunmute: TEventHandler;
    readyState: JMediaStreamTrackState;
    onended: TEventHandler;
    onoverconstrained: TEventHandler;
    function clone: JMediaStreamTrack;
    procedure stop;
    function getCapabilities: JMediaTrackCapabilities;
    function getConstraints: JMediaTrackConstraints;
    function getSettings: JMediaTrackSettings;
    procedure applyConstraints; overload;
    procedure applyConstraints(constraints: JMediaTrackConstraints); overload;
  end;

  // Exposed = Window
  JMediaStream = class external 'MediaStream' (JEventTarget)
  public
    id: String;
    active: Boolean;
    onaddtrack: TEventHandler;
    onremovetrack: TEventHandler;
    constructor Create; overload;
    constructor Create(Stream: JMediaStream); overload;
    constructor Create(tracks: array of JMediaStreamTrack); overload;
    function getAudioTracks: array of JMediaStreamTrack;
    function getVideoTracks: array of JMediaStreamTrack;
    function getTracks: array of JMediaStreamTrack;
    function getTrackById(trackId: String): JMediaStreamTrack;
    procedure addTrack(track: JMediaStreamTrack);
    procedure removeTrack(track: JMediaStreamTrack);
    function clone: JMediaStream;
  end;

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
    latency: Boolean;
    channelCount: Boolean;
    deviceId: Boolean;
    groupId: Boolean;
  end;

  JMediaStreamTrackEventInit = class external 'MediaStreamTrackEventInit' (JEventInit)
  public
    track: JMediaStreamTrack;
  end;

  // Exposed = Window
  JMediaStreamTrackEvent = class external 'MediaStreamTrackEvent' (JEvent)
  public
    track: JMediaStreamTrack; { SameObject }
    constructor Create(&type: String; eventInitDict: JMediaStreamTrackEventInit);
  end;

  JOverconstrainedError = class external 'OverconstrainedError'
    constraint: Variant;
    message: String;
  end;

  JOverconstrainedErrorEventInit = class external 'OverconstrainedErrorEventInit' (JEventInit)
  public
    error: JOverconstrainedError;
  end;

  // Exposed = Window
  JOverconstrainedErrorEvent = class external 'OverconstrainedErrorEvent' (JEvent)
  public
    error: JOverconstrainedError;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JOverconstrainedErrorEventInit); overload;
  end;

  JMediaDeviceKind = String;
  JMediaDeviceKindHelper = strict helper for JMediaDeviceKind
    const AudioInput = 'audioinput';
    const AudioOutput = 'audiooutput';
    const VideoInput = 'videoinput';
  end;

  // Exposed = Window
  JMediaDeviceInfo = class external 'MediaDeviceInfo'
  public
    deviceId: String;
    kind: JMediaDeviceKind;
    label: String;
    groupId: String;
  end;

  JMediaStreamConstraints = class external 'MediaStreamConstraints'
  public
    video: Variant;
    videoAsBoolean: Boolean; external 'video';
    videoAsMediaTrackConstraints: JMediaTrackConstraints; external 'video';
    audio: Variant;
    audioAsBoolean: Boolean; external 'audio';
    audioAsMediaTrackConstraints: JMediaTrackConstraints; external 'audio';
  end;

  // Exposed = Window
  JMediaDevices = class external 'MediaDevices' (JEventTarget)
  public
    ondevicechange: TEventHandler;
    function enumerateDevices: array of JMediaDeviceInfo;
    function getSupportedConstraints: JMediaTrackSupportedConstraints;
    function getUserMedia(constraints: JMediaStreamConstraints): JMediaStream;
  end;

  TNavigatorUserMediaSuccessCallback = procedure(stream: JMediaStream);
  TNavigatorUserMediaErrorCallback = procedure(error: TMediaStreamError);

  // Exposed = Window, NoInterfaceObject
  JNavigatorUserMedia = class external 'NavigatorUserMedia'
  public
    mediaDevices: JMediaDevices; { SameObject }
    procedure getUserMedia(constraints: JMediaStreamConstraints;
      successCallback: TNavigatorUserMediaSuccessCallback;
      errorCallback: TNavigatorUserMediaErrorCallback);
  end;

  JInputDeviceInfo = class external 'InputDeviceInfo' (JMediaDeviceInfo)
  public
    function getCapabilities: JMediaTrackCapabilities;
  end;

  JHTMLIFrameElement = partial class external 'HTMLIFrameElement'
  public
    allowUserMedia: Boolean;
  end;

  JCapabilities = class external 'Capabilities'
  public
  end;

  JSettings = class external 'Settings'
  public
  end;

  JConstraintSet = class external 'ConstraintSet'
  public
  end;

  JConstraints = class external 'Constraints' (JConstraintSet)
  public
    advanced: array of JConstraintSet;
  end;

  // NoInterfaceObject
  JConstrainablePattern = class external 'ConstrainablePattern'
  public
    onoverconstrained: TEventHandler;
    function getCapabilities: JCapabilities;
    function getConstraints: JConstraints;
    function getSettings: JSettings;
    procedure applyConstraints; overload;
    procedure applyConstraints(constraints: JConstraints); overload;
  end;