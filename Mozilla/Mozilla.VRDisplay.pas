unit Mozilla.VRDisplay;

interface

type
  JVREye = (left, right);

  // Pref=dom.vr.enabled,HeaderFile=mozilla/dom/VRDisplay.h
  JVRFieldOfView = class external 'VRFieldOfView'
  public
    upDegrees: Float;
    rightDegrees: Float;
    downDegrees: Float;
    leftDegrees: Float;
  end;

  TVRSource = Union;
  JVRLayer = class external 'VRLayer'
  public
    source: JHTMLCanvasElement;
    leftBounds: array of Float;
    rightBounds: array of Float;
  end;

  // Pref=dom.vr.enabled,HeaderFile=mozilla/dom/VRDisplay.h
  JVRDisplayCapabilities = class external 'VRDisplayCapabilities'
  public
    hasPosition: Boolean;
    hasOrientation: Boolean;
    hasExternalDisplay: Boolean;
    canPresent: Boolean;
    maxLayers: Integer;
  end;

  // Pref=dom.vr.enabled,HeaderFile=mozilla/dom/VRDisplay.h
  JVRStageParameters = class external 'VRStageParameters'
  public
    sittingToStandingTransform: JFloat32Array; { Throws } 
    sizeX: Float;
    sizeZ: Float;
  end;

  // Pref=dom.vr.enabled,HeaderFile=mozilla/dom/VRDisplay.h
  JVRPose = class external 'VRPose' (JPose)
  end;

  // Constructor,Pref=dom.vr.enabled,HeaderFile=mozilla/dom/VRDisplay.h
  JVRFrameData = class external 'VRFrameData'
  public
    timestamp: JDOMHighResTimeStamp;
    leftProjectionMatrix: JFloat32Array; { Throws,Pure } 
    leftViewMatrix: JFloat32Array; { Throws,Pure } 
    rightProjectionMatrix: JFloat32Array; { Throws,Pure } 
    rightViewMatrix: JFloat32Array; { Throws,Pure } 
    pose: JVRPose; { Pure } 
  end;

  // Pref=dom.vr.enabled,HeaderFile=mozilla/dom/VRDisplay.h
  JVREyeParameters = class external 'VREyeParameters'
  public
    offset: JFloat32Array; { Constant,Throws } 
    fieldOfView: JVRFieldOfView; { Constant } 
    renderWidth: Integer; { Constant } 
    renderHeight: Integer; { Constant } 
  end;

  // Pref=dom.vr.enabled,HeaderFile=mozilla/dom/VRDisplay.h
  JVRDisplay = class external 'VRDisplay' (JEventTarget)
  public
    isConnected: Boolean;
    isPresenting: Boolean;
    capabilities: JVRDisplayCapabilities; { Constant } 
    stageParameters: JVRStageParameters;
    displayId: Integer; { Constant } 
    displayName: String; { Constant } 
    depthNear: Float;
    depthFar: Float;
    function getEyeParameters(whichEye: JVREye): JVREyeParameters;
    function getFrameData(frameData: JVRFrameData): Boolean;
    function getPose: JVRPose; { NewObject } 
    procedure resetPose;
    function requestAnimationFrame(Callback: JFrameRequestCallback): Integer; { Throws } 
    procedure cancelAnimationFrame(handle: Integer); { Throws } 
    function requestPresent(layers: array of JVRLayer): void; { Throws } 
    function exitPresent: void; { Throws } 
    function getLayers: array of JVRLayer;
    procedure submitFrame;
  end;

implementation

end.
