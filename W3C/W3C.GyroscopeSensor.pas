unit W3C.GyroscopeSensor;

interface

uses
  W3C.GenericSensorAPI;

type
  JGyroscopeSensorReadingInit = class external 'GyroscopeSensorReadingInit'
  public
    rotationRateX: Float;
    rotationRateY: Float;
    rotationRateZ: Float;
  end;

  JGyroscopeSensorReading = class external 'GyroscopeSensorReading' (JSensorReading)
  public
    rotationRateX: Float;
    rotationRateY: Float;
    rotationRateZ: Float;
    constructor Create(GyroscopeSensorReadingInit: JGyroscopeSensorReadingInit);
  end;

  JGyroscopeSensor = class external 'GyroscopeSensor' (JSensor)
  public
    reading: JGyroscopeSensorReading;
    constructor Create; overload;
    constructor Create(sensorOptions: JSensorOptions); overload;
  end;