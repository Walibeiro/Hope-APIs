unit Mozilla.MozPowerManager;

interface

type
  JFactoryResetReason = (frrNormal, frrWipe, frrRoot);

  // ChromeOnly
  JMozPowerManager = class external 'MozPowerManager'
  public
    screenEnabled: Boolean;
    keyLightEnabled: Boolean;
    screenBrightness: Float; { SetterThrows } 
    cpuSleepAllowed: Boolean;
    procedure powerOff; { Throws } 
    procedure reboot; { Throws } 
    procedure factoryReset(reason: JFactoryResetReason = normal);
    procedure addWakeLockListener(aListener: JMozWakeLockListener);
    procedure removeWakeLockListener(aListener: JMozWakeLockListener);
    function getWakeLockState(aTopic: String): String; { Throws } 
  end;

implementation

end.
