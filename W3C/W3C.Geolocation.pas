unit W3C.Geolocation;

interface

uses
  W3C.DOM4, W3C.HTML5, W3C.HighResolutionTime;

type
	// NoInterfaceObject
	JCoordinates = class external 'Coordinates'
	public
		latitude: Float;
		longitude: Float;
		altitude: Float;
		accuracy: Float;
		altitudeAccuracy: Float;
		heading: Float;
		speed: Float;
	end;

	// NoInterfaceObject
	JPosition = class external 'Position'
	public
		coords: JCoordinates;
		timestamp: JDOMTimeStamp;
	end;

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

	TPositionCallback = procedure(position: JPosition);
	TPositionErrorCallback = procedure(positionError: JPositionError);

	JPositionOptions = class external
	public
		enableHighAccuracy: Boolean;
		timeout: Integer; { Clamp }
		maximumAge: Integer; { Clamp }
	end;

	// NoInterfaceObject
	JGeolocation = class external 'Geolocation'
	public
		procedure getCurrentPosition(successCallback: TPositionCallback); overload;
		procedure getCurrentPosition(successCallback: TPositionCallback; errorCallback: TPositionErrorCallback); overload;
		procedure getCurrentPosition(successCallback: TPositionCallback; errorCallback: TPositionErrorCallback; options: JPositionOptions); overload;
		function watchPosition(successCallback: TPositionCallback): Integer; overload;
		function watchPosition(successCallback: TPositionCallback; errorCallback: TPositionErrorCallback): Integer; overload;
		function watchPosition(successCallback: TPositionCallback; errorCallback: TPositionErrorCallback; options: JPositionOptions): Integer; overload;
		procedure clearWatch(watchId: Integer);
	end;

	JNavigator = partial class external 'Navigator'
	public
		geolocation: JGeolocation;
	end;