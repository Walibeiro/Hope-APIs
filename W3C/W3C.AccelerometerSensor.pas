unit W3C.AccelerometerSensor;

interface

uses
  W3C.GenericSensorAPI;

type
  JAccelerometerSensorReadingInit = class external 'AccelerometerSensorReadingInit'
  public
    accelerationX: Float;
    accelerationY: Float;
    accelerationZ: Float;
  end;

  JAccelerometerSensorReading = class external 'AccelerometerSensorReading' (JSensorReading)
  public
    accelerationX: Float;
    accelerationY: Float;
    accelerationZ: Float;
    constructor Create(AccelerometerSensorReadingInit: JAccelerometerSensorReadingInit);
  end;

  JAccelerometerSensorOptions = class external 'AccelerometerSensorOptions' (JSensorOptions)
  public
    includeGravity: Boolean;
  end;

  // Constructor( optional AccelerometerSensorOptions accelerometerSensorOptions)
  JAccelerometerSensor = class external 'AccelerometerSensor' (JSensor)
  public
    reading: JAccelerometerSensorReading;
    includesGravity: Boolean;
  end;