unit Mozilla.APZTestData;

interface

type
  JScrollFrameDataEntry = class external 'ScrollFrameDataEntry'
  public
    key: String;
    value: String;
  end;

  JScrollFrameData = class external 'ScrollFrameData'
  public
    scrollId: Integer;
    entries: array of JScrollFrameDataEntry;
  end;

  JAPZBucket = class external 'APZBucket'
  public
    sequenceNumber: Integer;
    scrollFrames: array of JScrollFrameData;
  end;

  JAPZTestData = class external 'APZTestData'
  public
    paints: array of JAPZBucket;
    repaintRequests: array of JAPZBucket;
  end;

  JFrameUniformity = class external 'FrameUniformity'
  public
    layerAddress: Integer;
    frameUniformity: Float;
  end;

  JFrameUniformityResults = class external 'FrameUniformityResults'
  public
    layerUniformities: array of JFrameUniformity;
  end;

implementation

end.
