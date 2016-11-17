unit W3C.Vibration;

interface

type
  TVibratePattern = array of Integer;

  JNavigator = partial class external 'Navigator'
  public
    function vibrate(pattern: TVibratePattern): Boolean;
  end;