unit Mozilla.BaseKeyframeTypes;

interface

type
  JCompositeOperation = (coReplace, coAdd, coAccumulate);

  JBasePropertyIndexedKeyframe = class external 'BasePropertyIndexedKeyframe'
  public
    easing: String;
    composite: JCompositeOperation;
  end;

  JBaseKeyframe = class external 'BaseKeyframe'
  public
    offset: Float;
    easing: String;
    composite: JCompositeOperation;
    simulateComputeValuesFailure: Boolean; { ChromeOnly } 
  end;

  JBaseComputedKeyframe = class external 'BaseComputedKeyframe' (JBaseKeyframe)
  public
    computedOffset: Float;
  end;

implementation

end.
