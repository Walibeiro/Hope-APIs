unit Mozilla.Screen;

interface

type
  JScreen = class external 'Screen' (JEventTarget)
  public
    availWidth: Integer; { Throws } 
    availHeight: Integer; { Throws } 
    width: Integer; { Throws } 
    height: Integer; { Throws } 
    colorDepth: Integer; { Throws } 
    pixelDepth: Integer; { Throws } 
    top: Integer; { Throws } 
    left: Integer; { Throws } 
    availTop: Integer; { Throws } 
    availLeft: Integer; { Throws } 
    mozOrientation: String;
    onmozorientationchange: JEventHandler;
    orientation: JScreenOrientation;
    function mozLockOrientation(orientation: String): Boolean; { Throws,UnsafeInPrerendering } 
    function mozLockOrientation(orientation: array of String): Boolean; { Throws,UnsafeInPrerendering } 
    procedure mozUnlockOrientation; { UnsafeInPrerendering } 
  end;

implementation

end.
