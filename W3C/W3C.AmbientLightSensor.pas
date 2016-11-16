unit W3C.AmbientLightSensor;

interface

uses
  W3C.GenericSensorAPI;

type
  JAmbientLightSensorReadingInit = class external 'AmbientLightSensorReadingInit'
  public
    illuminance: Float;
  end;

  JAmbientLightSensorReading = class external 'AmbientLightSensorReading' (JSensorReading)
  public
    illuminance: Float;
    Constructor Create(ambientLightSensorReadingInit: JAmbientLightSensorReadingInit);
  end;

  JAmbientLightSensor = class external 'AmbientLightSensor' (JSensor)
  public
    reading: JAmbientLightSensorReading;
    constructor Create(sensorOptions: JSensorOptions);
  end;