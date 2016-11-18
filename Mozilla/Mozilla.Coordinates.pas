unit Mozilla.Coordinates;

interface

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

implementation

end.
