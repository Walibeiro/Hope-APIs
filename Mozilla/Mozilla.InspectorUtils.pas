unit Mozilla.InspectorUtils;

interface

type
  JInspectorRGBTriple = class external 'InspectorRGBTriple'
  public
    r: Integer;
    g: Integer;
    b: Integer;
  end;

  JInspectorRGBATuple = class external 'InspectorRGBATuple'
  public
    r: Float;
    g: Float;
    b: Float;
    a: Float;
  end;

implementation

end.
