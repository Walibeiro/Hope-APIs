unit Mozilla.GetUserMediaRequest;

interface

type
  // NoInterfaceObject
  JGetUserMediaRequest = class external 'GetUserMediaRequest'
  public
    windowID: Integer;
    innerWindowID: Integer;
    callID: String;
    isSecure: Boolean;
    function getConstraints: JMediaStreamConstraints;
  end;

implementation

end.
