unit Mozilla.BatteryManager;

interface

type
  JBatteryManager = class external 'BatteryManager' (JEventTarget)
  public
    charging: Boolean;
    chargingTime: Float;
    dischargingTime: Float;
    level: Float;
    onchargingchange: JEventHandler;
    onchargingtimechange: JEventHandler;
    ondischargingtimechange: JEventHandler;
    onlevelchange: JEventHandler;
  end;

implementation

end.
