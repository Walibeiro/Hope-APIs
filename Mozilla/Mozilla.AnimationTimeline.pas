unit Mozilla.AnimationTimeline;

interface

type
  // Func=nsDocument::IsWebAnimationsEnabled
  JAnimationTimeline = class external 'AnimationTimeline'
  public
    currentTime: Float; { BinaryName=currentTimeAsDouble } 
  end;

implementation

end.
