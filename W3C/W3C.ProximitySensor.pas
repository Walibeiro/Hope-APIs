unit W3C.ProximitySensor;

interface

uses
  W3C.GenericSensorAPI;

type
  JProximitySensorReadingInit = class external 'ProximitySensorReadingInit'
  public
    distance: Float;
    max: Float;
    near: Boolean;
  end;

  JProximitySensorReading = class external 'ProximitySensorReading' (JSensorReading)
  public
    distance: Float;
    max: Float;
    near: Boolean;
    constructor Create(proximitySensorReadingInit: JProximitySensorReadingInit);
  end;

  JProximitySensor = class external 'ProximitySensor' (JSensor)
  public
    reading: JProximitySensorReading;
    constructor Create; overload;
    constructor Create(sensorOptions: JSensorOptions); overload;
  end;