unit Mozilla.GamepadPose;

interface

type
  // Pref=dom.gamepad.extensions.enabled,HeaderFile=mozilla/dom/GamepadPose.h
  JGamepadPose = class external 'GamepadPose' (JPose)
  public
    hasOrientation: Boolean;
    hasPosition: Boolean;
  end;

implementation

end.
