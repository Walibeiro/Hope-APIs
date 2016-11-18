unit Mozilla.DocumentTimeline;

interface

type
  JDocumentTimelineOptions = class external 'DocumentTimelineOptions'
  public
    originTime: JDOMHighResTimeStamp;
  end;

  // Func=nsDocument::IsWebAnimationsEnabled,Constructor( optional DocumentTimelineOptions options)
  JDocumentTimeline = class external 'DocumentTimeline' (JAnimationTimeline)
  end;

implementation

end.
