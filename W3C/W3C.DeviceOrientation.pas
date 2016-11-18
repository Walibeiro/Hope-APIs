unit W3C.DeviceOrientation;

interface

uses
  W3C.DOM4;

type
  JDeviceOrientationEventInit = class external 'DeviceOrientationEventInit' (JEventInit)
  public
    alpha, beta, gamma: Float;
    absolute: Boolean;
  end;

  JDeviceOrientationEvent = class external 'DeviceOrientationEvent' (JEvent)
  public
    alpha, beta, gamma: Float;
    absolute: Boolean;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JDeviceOrientationEventInit); overload;
  end;

  // NoInterfaceObject
  JDeviceAcceleration = class external 'DeviceAcceleration'
  public
    x, y, z: Float;
  end;

  // NoInterfaceObject
  JDeviceRotationRate = class external 'DeviceRotationRate'
  public
    alpha, beta, gamma: Float;
  end;

  JDeviceAccelerationInit = class external 'DeviceAccelerationInit'
  public
    x, y, z: Float;
  end;

  JDeviceRotationRateInit = class external 'DeviceRotationRateInit'
  public
    alpha, beta, gamma: Float;
  end;

  JDeviceMotionEventInit = class external 'DeviceMotionEventInit' (JEventInit)
  public
    acceleration: JDeviceAccelerationInit;
    accelerationIncludingGravity: JDeviceAccelerationInit;
    rotationRate: JDeviceRotationRateInit;
    interval: Float;
  end;

  JDeviceMotionEvent = class external 'DeviceMotionEvent' (JEvent)
  public
    acceleration: JDeviceAcceleration;
    accelerationIncludingGravity: JDeviceAcceleration;
    rotationRate: JDeviceRotationRate;
    interval: Float;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JDeviceMotionEventInit); overload;
  end;

  JWindow = partial class external 'Window'
  public
    ondeviceorientation: TEventHandler;
    ondevicemotion: TEventHandler;
  end;
