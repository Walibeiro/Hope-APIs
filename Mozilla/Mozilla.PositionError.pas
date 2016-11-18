unit Mozilla.PositionError;

interface

type
  // NoInterfaceObject
  JPositionError = class external 'PositionError'
  const 
    PERMISSION_DENIED: Integer = 1;
    POSITION_UNAVAILABLE: Integer = 2;
    TIMEOUT: Integer = 3;
  public
    code: Integer;
    message: String;
  end;

implementation

end.
