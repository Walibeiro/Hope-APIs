unit Mozilla.MediaTrackConstraintSet;

interface

type
  JConstrainLongRange = class external 'ConstrainLongRange'
  public
    min: Integer;
    max: Integer;
    exact: Integer;
    ideal: Integer;
  end;

  JConstrainDoubleRange = class external 'ConstrainDoubleRange'
  public
    min: Float;
    max: Float;
    exact: Float;
    ideal: Float;
  end;

  JConstrainBooleanParameters = class external 'ConstrainBooleanParameters'
  public
    exact: Boolean;
    ideal: Boolean;
  end;

  JConstrainDOMStringParameters = class external 'ConstrainDOMStringParameters'
  public
    exact: Union;
    ideal: Union;
  end;

implementation

end.
