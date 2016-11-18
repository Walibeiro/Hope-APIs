unit Mozilla.DeviceOrientationEvent;

interface

type
  // Constructor( DOMString type , optional DeviceOrientationEventInit eventInitDict),LegacyEventInit
  JDeviceOrientationEvent = class external 'DeviceOrientationEvent' (JEvent)
  public
    alpha: Float;
    beta: Float;
    gamma: Float;
    absolute: Boolean;
    procedure initDeviceOrientationEvent(&type: String; canBubble: Boolean; cancelable: Boolean; alpha: Float; beta: Float; gamma: Float; absolute: Boolean);
  end;

  JDeviceOrientationEventInit = class external 'DeviceOrientationEventInit' (JEventInit)
  public
    alpha: Float;
    beta: Float;
    gamma: Float;
    absolute: Boolean;
  end;

implementation

end.
