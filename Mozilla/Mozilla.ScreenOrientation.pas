unit Mozilla.ScreenOrientation;

interface

type
  JOrientationType = (otPortrait-primary, otPortrait-secondary, otLandscape-primary, otLandscape-secondary);

  JOrientationLockType = (oltAny, oltNatural, oltLandscape, oltPortrait, oltPortrait-primary, oltPortrait-secondary, oltLandscape-primary, oltLandscape-secondary);

  // UnsafeInPrerendering
  JScreenOrientation = class external 'ScreenOrientation' (JEventTarget)
  public
    type: JOrientationType; { Throws } 
    angle: Integer; { Throws } 
    onchange: JEventHandler;
    function lock(orientation: JOrientationLockType): void; { Throws } 
    procedure unlock; { Throws } 
  end;

implementation

end.
