unit Mozilla.Position;

interface

type
  // NoInterfaceObject
  JPosition = class external 'Position'
  public
    coords: JCoordinates;
    timestamp: JDOMTimeStamp;
  end;

implementation

end.
