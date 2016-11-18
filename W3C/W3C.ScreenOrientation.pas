unit W3C.ScreenOrientation;

interface

uses
  W3C.DOM4;

type
  JOrientationType = String;
  JOrientationTypeHelper = strict helper for JOrientationType
    const PortraitPrimary = 'portrait-primary';
    const PortraitSecondary = 'portrait-secondary';
    const LandscapePrimary = 'landscape-primary';
    const LandscapeSecondary = 'landscape-secondary';
  end;

  JOrientationLockType = String;
  JOrientationLockTypeHelper = strict helper for JOrientationLockType
    const Any = 'any';
    const Natural = 'natural';
    const Landscape = 'landscape';
    const Portrait = 'portrait';
    const PortraitPrimary = 'portrait-primary';
    const PortraitSecondary = 'portrait-secondary';
    const LandscapePrimary = 'landscape-primary';
    const LandscapeSecondary = 'landscape-secondary';
  end;

  JScreenOrientation = class external 'ScreenOrientation' (JEventTarget)
  public
    &type: JOrientationType;
    angle: Integer;
    onchange: TEventHandler;
    procedure lock(orientation: JOrientationLockType);
    procedure unlock;
  end;

  JScreen = partial class external 'Screen'
  public
    orientation: JScreenOrientation;
  end;