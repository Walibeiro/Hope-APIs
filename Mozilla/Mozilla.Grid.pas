unit Mozilla.Grid;

interface

type
  JGridDeclaration = (gdExplicit, gdImplicit);

  JGridTrackState = (gtsStatic, gtsRepeat, gtsRemoved);

  // ChromeOnly
  JGrid = class external 'Grid'
  public
    rows: JGridDimension;
    cols: JGridDimension;
    areas: array of JGridArea; { Cached,Constant } 
  end;

  // ChromeOnly
  JGridDimension = class external 'GridDimension'
  public
    lines: JGridLines;
    tracks: JGridTracks;
  end;

  // ChromeOnly
  JGridLines = class external 'GridLines'
  public
    length: Integer;
    function item(&index: Integer): JGridLine;
  end;

  // ChromeOnly
  JGridLine = class external 'GridLine'
  public
    names: array of String; { Cached,Constant } 
    start: Float;
    breadth: Float;
    type: JGridDeclaration;
    number: Integer;
  end;

  // ChromeOnly
  JGridTracks = class external 'GridTracks'
  public
    length: Integer;
    function item(&index: Integer): JGridTrack;
  end;

  // ChromeOnly
  JGridTrack = class external 'GridTrack'
  public
    start: Float;
    breadth: Float;
    type: JGridDeclaration;
    state: JGridTrackState;
  end;

  // ChromeOnly
  JGridArea = class external 'GridArea'
  public
    name: String;
    type: JGridDeclaration;
    rowStart: Integer;
    rowEnd: Integer;
    columnStart: Integer;
    columnEnd: Integer;
  end;

implementation

end.
