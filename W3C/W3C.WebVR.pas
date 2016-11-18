unit W3C.WebVR;

interface

uses
  ECMA.Promise, ECMA.TypedArray, W3C.DOM4, W3C.HTML5, W3C.HighResolutionTime,
  W3C.Gamepad;

type
  TVRSource = Variant; //TODO

  JVREye = String;
  JVREyeHelper = strict helper for JVREye
    const left = 'left';
    const right = 'right';
  end;

  JVRLayerInit = class external 'VRLayerInit'
  public
    source: TVRSource;
    leftBounds: array of Float;
    rightBounds: array of Float;
  end;

  JVRLayer = class external 'VRLayer'
  public
    source: TVRSource;
    leftBounds: array of Float;
    rightBounds: array of Float;
    constructor Create; overload;
    constructor Create(layer: JVRLayerInit); overload;
  end;

  JVRDisplayCapabilities = class external 'VRDisplayCapabilities'
  public
    hasPosition: Boolean;
    hasOrientation: Boolean;
    hasExternalDisplay: Boolean;
    canPresent: Boolean;
    maxLayers: Integer;
  end;

  JVRFieldOfView = class external 'VRFieldOfView'
  public
    upDegrees: Float;
    rightDegrees: Float;
    downDegrees: Float;
    leftDegrees: Float;
  end;

  JVRPose = class external 'VRPose'
  public
    position: JFloat32Array;
    linearVelocity: JFloat32Array;
    linearAcceleration: JFloat32Array;
    orientation: JFloat32Array;
    angularVelocity: JFloat32Array;
    angularAcceleration: JFloat32Array;
  end;

  // Constructor
  JVRFrameData = class external 'VRFrameData'
  public
    timestamp: TDOMHighResTimeStamp;
    leftProjectionMatrix: JFloat32Array;
    leftViewMatrix: JFloat32Array;
    rightProjectionMatrix: JFloat32Array;
    rightViewMatrix: JFloat32Array;
    pose: JVRPose;
  end;

  JVREyeParameters = class external 'VREyeParameters'
  public
    offset: JFloat32Array;
    fieldOfView: JVRFieldOfView; { SameObject }
    renderWidth: Integer;
    renderHeight: Integer;
  end;

  JVRStageParameters = class external 'VRStageParameters'
  public
    sittingToStandingTransform: JFloat32Array;
    sizeX: Float;
    sizeZ: Float;
  end;

  JVRDisplayEventReason = (vrderMounted, vrderNavigation, vrderRequested, vrderUnmounted);

  JVRDisplay = class external 'VRDisplay' (JEventTarget)
  public
    isConnected: Boolean;
    isPresenting: Boolean;

    { Dictionary of capabilities describing the VRDisplay }
    capabilities: JVRDisplayCapabilities; { SameObject }

    { If this VRDisplay supports room-scale experiences, the optional
      stage attribute contains details on the room-scale parameters.
      The stageParameters attribute can not change between null
      and non-null once the VRDisplay is enumerated; however,
      the values within VRStageParameters may change after
      any call to VRDisplay.submitFrame as the user may re-configure
      their environment at any time. }
    stageParameters: JVRStageParameters;

    displayId: Integer;

    (* A display name, a user-readable name identifying it. *)
    displayName: String;

    depthNear: Float;
    depthFar: Float;

    {  Return the current VREyeParameters for the given eye. }
    function getEyeParameters(whichEye: JVREye): JVREyeParameters;

    function getFrameData(frameData: JVRFrameData): Boolean;
    function getPose: JVRPose; { NewObject }
    procedure resetPose;
// TODO    function requestAnimationFrame(Callback: JFrameRequestCallback): Integer;
    procedure cancelAnimationFrame(handle: Integer);
    function requestPresent(layers: array of JVRLayerInit): JPromise;
    function exitPresent: JPromise;
    function getLayers: array of JVRLayer;
    procedure submitFrame;
  end;

  JVRDisplayEventInit = class external 'VRDisplayEventInit' (JEventInit)
  public
    display: JVRDisplay;
    reason: JVRDisplayEventReason;
  end;

  JVRDisplayEvent = class external 'VRDisplayEvent' (JEvent)
  public
    display: JVRDisplay;
    reason: JVRDisplayEventReason;
    constructor Create(&type: String; eventInitDict: JVRDisplayEventInit);
  end;

  JHTMLIFrameElement = partial class external 'HTMLIFrameElement'
  public
    allowvr: Boolean;
  end;

  JGamepad = partial class external 'Gamepad'
  public
    displayId: Integer;
  end;

  TOnFulFilledVRDisplays = procedure(response: array of JVRDisplay);
  JPromiseVRDisplays = class external 'Promise' (JPromise)
  public
    class function resolve(value: array of JVRDisplay): JPromiseVRDisplays;

    function &then(onFulfilled: TOnFulFilledVRDisplays): JPromiseVRDisplays; overload;
    function &then(onFulfilled: TOnFulFilledVRDisplays; onRejected: TOnRejected): JPromiseVRDisplays; overload;
  end;

  JNavigator = partial class external 'Navigator'
  public
    vrEnabled: Boolean;
    function getVRDisplays: JPromiseVRDisplays;
  end;

  JWindow = partial class external 'Window'
  public
    onvrdisplayconnect: TEventHandler;
    onvrdisplaydisconnect: TEventHandler;
    onvrdisplayactivate: TEventHandler;
    onvrdisplaydeactivate: TEventHandler;
    onvrdisplayblur: TEventHandler;
    onvrdisplayfocus: TEventHandler;
    onvrdisplaypresentchange: TEventHandler;
  end;