unit W3C.DeviceOrientation;

interface

uses
  W3C.DOM4;

type
  // Constructor( DOMString type , optional DeviceOrientationEventInit eventInitDict)
  JDeviceOrientationEvent = class external 'DeviceOrientationEvent' (JEvent)
  public
    alpha: Float;
    beta: Float;
    gamma: Float;
    absolute: Boolean;
  end;

  JDeviceOrientationEventInit = class external 'DeviceOrientationEventInit' (JEventInit)
  public
    alpha: Float;
    beta: Float;
    gamma: Float;
    absolute: Boolean;
  end;

  // NoInterfaceObject
  JDeviceAcceleration = class external 'DeviceAcceleration'
  public
    x: Float;
    y: Float;
    z: Float;
  end;

  // NoInterfaceObject
  JDeviceRotationRate = class external 'DeviceRotationRate'
  public
    alpha: Float;
    beta: Float;
    gamma: Float;
  end;

  // Constructor( DOMString type , optional DeviceMotionEventInit eventInitDict)
  JDeviceMotionEvent = class external 'DeviceMotionEvent' (JEvent)
  public
    acceleration: JDeviceAcceleration;
    accelerationIncludingGravity: JDeviceAcceleration;
    rotationRate: JDeviceRotationRate;
    interval: Float;
  end;

  JDeviceAccelerationInit = class external 'DeviceAccelerationInit'
  public
    x: Float;
    y: Float;
    z: Float;
  end;

  JDeviceRotationRateInit = class external 'DeviceRotationRateInit'
  public
    alpha: Float;
    beta: Float;
    gamma: Float;
  end;

  JDeviceMotionEventInit = class external 'DeviceMotionEventInit' (JEventInit)
  public
    acceleration: JDeviceAccelerationInit;
    accelerationIncludingGravity: JDeviceAccelerationInit;
    rotationRate: JDeviceRotationRateInit;
    interval: Float;
  end;

  JWindow = partial class external 'Window'
  public
    ondeviceorientation: TEventHandler;
    ondevicemotion: TEventHandler;
  end;
