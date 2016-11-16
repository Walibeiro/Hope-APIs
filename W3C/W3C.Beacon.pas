unit W3C.Beacon;

interface

type
  JNavigator = partial class external 'Navigator'
  public
    function sendBeacon(url: String): Boolean; overload;
    // TODO function sendBeacon(url: String; data: JBodyInit): Boolean; overload;
  end;