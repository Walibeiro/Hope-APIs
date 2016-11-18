unit Mozilla.AnimationEffectTimingReadOnly;

interface

type
  // Func=nsDocument::IsWebAnimationsEnabled
  JAnimationEffectTimingReadOnly = class external 'AnimationEffectTimingReadOnly'
  public
    delay: Float;
    endDelay: Float;
    fill: JFillMode;
    iterationStart: Float;
    iterations: Float;
    duration: Union;
    direction: JPlaybackDirection;
    easing: String;
  end;

implementation

end.
