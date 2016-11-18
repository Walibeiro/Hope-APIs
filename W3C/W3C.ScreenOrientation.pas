unit W3C.ScreenOrientation;

interface

uses
  ECMA.Promise, W3C.DOM4;

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
  private
    FType: JOrientationType; external 'type';
    FAngle: Integer; external 'angle';
  public
    onchange: TEventHandler;
    function lock(orientation: JOrientationLockType): JPromise;
    procedure unlock;

    property &Type: JOrientationType read FType;
    property Angle: Integer read FAngle;
  end;

  JScreen = partial class external 'Screen'
  private
    FOrientation: JScreenOrientation; external 'orientation';
  public
    property Orientation: JScreenOrientation read FOrientation;
  end;