unit Mozilla.GamepadServiceTest;

interface

type
  // Pref=dom.gamepad.test.enabled
  JGamepadServiceTest = class external 'GamepadServiceTest'
  public
    noMapping: Integer;
    standardMapping: Integer;
    function addGamepad(id: String; mapping: Integer; numButtons: Integer; numAxes: Integer): long; { Throws } 
    procedure removeGamepad(&index: Integer);
    procedure newButtonEvent(&index: Integer; button: Integer; pressed: Boolean);
    procedure newButtonValueEvent(&index: Integer; button: Integer; pressed: Boolean; value: Float);
    procedure newAxisMoveEvent(&index: Integer; axis: Integer; value: Float);
  end;

implementation

end.
