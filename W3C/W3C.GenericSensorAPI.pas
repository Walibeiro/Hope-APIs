unit W3C.GenericSensorAPI;

interface

uses
  W3C.DOM4, W3C.HighResolutionTime;

type
  JSensorState = String;
  JSensorStateHelper = strict helper for JSensorState
    const Idle = 'idle';
    const Activating = 'activating';
    const Active = 'active';
    const Errored = 'errored';
  end;

  JSensorReading = class external 'SensorReading'
  public
    timeStamp: TDOMHighResTimeStamp;
  end;

  JSensor = class external 'Sensor' (JEventTarget)
  public
    state: JSensorState;
    reading: JSensorReading;
    onchange: TEventHandler;
    onstatechange: TEventHandler;
    onerror: TEventHandler;
    procedure start;
    procedure stop;
  end;

  JSensorOptions = class external 'SensorOptions'
  public
    frequency: Float;
  end;

  JSensorReadingEventInit = class external 'SensorReadingEventInit' (JEventInit)
  public
    reading: JSensorReading;
  end;

  JSensorReadingEvent = class external 'SensorReadingEvent' (JEvent)
  public
    reading: JSensorReading;
    constructor Create(&type: String; eventInitDict: JSensorReadingEventInit);
  end;

  JSensorErrorEventInit = class external 'SensorErrorEventInit' (JEventInit)
  public
// TODO    error: JError;
  end;

  JSensorErrorEvent = class external 'SensorErrorEvent' (JEvent)
  public
// TODO    error: JError;
    constructor Create(&type: String; errorEventInitDict: JSensorErrorEventInit);
  end;