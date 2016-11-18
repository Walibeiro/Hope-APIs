unit Mozilla.AnimationPlaybackEvent;

interface

type
  // Func=nsDocument::IsWebAnimationsEnabled,Constructor( DOMString type , optional AnimationPlaybackEventInit eventInitDict)
  JAnimationPlaybackEvent = class external 'AnimationPlaybackEvent' (JEvent)
  public
    currentTime: Float;
    timelineTime: Float;
  end;

  JAnimationPlaybackEventInit = class external 'AnimationPlaybackEventInit' (JEventInit)
  public
    currentTime: Float;
    timelineTime: Float;
  end;

implementation

end.
