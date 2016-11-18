unit Mozilla.DeviceMotionEvent;

interface

type
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
    procedure initDeviceMotionEvent(&type: String; canBubble: Boolean; cancelable: Boolean; acceleration: JDeviceAccelerationInit; accelerationIncludingGravity: JDeviceAccelerationInit; rotationRate: JDeviceRotationRateInit; interval: Float);
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

implementation

end.
