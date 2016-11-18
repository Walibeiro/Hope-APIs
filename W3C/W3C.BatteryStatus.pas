unit W3C.BatteryStatus;

interface

uses
  W3C.DOM4;

type
  JBatteryManager = class external 'BatteryManager' (JEventTarget)
  public
    charging: Boolean;
    chargingTime: Float;
    dischargingTime: Float;
    level: Float;
    onchargingchange: TEventHandler;
    onchargingtimechange: TEventHandler;
    ondischargingtimechange: TEventHandler;
    onlevelchange: TEventHandler;
  end;

  JNavigator = partial class external 'Navigator'
  public
    function getBattery: JBatteryManager;
  end;