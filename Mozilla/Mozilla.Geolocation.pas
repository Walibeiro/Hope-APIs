unit Mozilla.Geolocation;

interface

type
  JPositionOptions = class external 'PositionOptions'
  public
    enableHighAccuracy: Boolean;
    timeout: Integer; { Clamp } 
    maximumAge: Integer; { Clamp } 
  end;

  // NoInterfaceObject
  JGeolocation = class external 'Geolocation'
  public
    procedure getCurrentPosition(successCallback: JPositionCallback; errorCallback: JPositionErrorCallback = ); overload; { Throws } 
    procedure getCurrentPosition(successCallback: JPositionCallback; errorCallback: JPositionErrorCallback = ); overload; { Throws } 
    procedure getCurrentPosition(successCallback: JPositionCallback; errorCallback: JPositionErrorCallback = ; options: JPositionOptions); overload; { Throws } 
    function watchPosition(successCallback: JPositionCallback; errorCallback: JPositionErrorCallback = ): Integer; overload; { Throws } 
    function watchPosition(successCallback: JPositionCallback; errorCallback: JPositionErrorCallback = ): Integer; overload; { Throws } 
    function watchPosition(successCallback: JPositionCallback; errorCallback: JPositionErrorCallback = ; options: JPositionOptions): Integer; overload; { Throws } 
    procedure clearWatch(watchId: Integer);
  end;

  JPositionCallback = procedure(position: JPosition);

  JPositionErrorCallback = procedure(positionError: JPositionError);

implementation

end.
