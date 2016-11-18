unit W3C.BatteryStatus;

interface

uses
  ECMA.Promise, W3C.DOM4;

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

  TOnFulFilledBatteryManager = procedure(response: JBatteryManager);

  JPromiseBatteryManager = class external 'Promise' (JPromise)
  public
    class function resolve(value: JBatteryManager): JPromiseBatteryManager;

    function &then(onFulfilled: TOnFulFilledBatteryManager): JPromiseBatteryManager; overload;
    function &then(onFulfilled: TOnFulFilledBatteryManager; onRejected: TOnRejected): JPromiseBatteryManager; overload;
  end;

  JNavigator = partial class external 'Navigator'
  public
    function getBattery: JPromiseBatteryManager;
  end;