unit W3C.MagnetometerSensor;

interface

uses
  W3C.GenericSensorAPI;

type
  JMagnetometerSensorReadingInit = class external 'MagnetometerSensorReadingInit'
  public
    magneticFieldX: Float;
    magneticFieldY: Float;
    magneticFieldZ: Float;
  end;

  JMagnetometerSensorReading = class external 'MagnetometerSensorReading' (JSensorReading)
  public
    magneticFieldX: Float;
    magneticFieldY: Float;
    magneticFieldZ: Float;
    constructor Create; overload;
    constructor Create(magnetometerSensorReadingInit: JMagnetometerSensorReadingInit); overload;
  end;

  JMagnetometerSensor = class external 'MagnetometerSensor' (JSensor)
  public
    reading: JMagnetometerSensorReading;
    constructor Create; overload;
    constructor Create(sensorOptions: JSensorOptions); overload;
  end;

