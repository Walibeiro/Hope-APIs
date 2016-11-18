unit Mozilla.MediaStreamError;

interface

type
  // ExceptionClass,NoInterfaceObject
  JMediaStreamError = class external 'MediaStreamError'
  public
    name: String;
    message: String;
    constraint: String;
  end;

implementation

end.
