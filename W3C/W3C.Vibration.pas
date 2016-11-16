unit W3C.Vibration;

interface

type
  TVibratePattern = Variant;  // TODO

  JNavigator = partial class external 'Navigator'
  public
    function vibrate(pattern: TVibratePattern): Boolean;
  end;