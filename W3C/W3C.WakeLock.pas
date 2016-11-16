unit W3C.WakeLock;

interface

uses
  W3C.CSSom;

type
  JScreen = partial class external 'Screen'
  public
    keepAwake: Boolean;
  end;