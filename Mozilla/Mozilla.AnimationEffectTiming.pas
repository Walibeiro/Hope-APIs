unit Mozilla.AnimationEffectTiming;

interface

type
  // Func=nsDocument::IsWebAnimationsEnabled
  JAnimationEffectTiming = class external 'AnimationEffectTiming' (JAnimationEffectTimingReadOnly)
  public
    delay: Float;
    endDelay: Float;
    fill: JFillMode;
    iterationStart: Float; { SetterThrows } 
    iterations: Float; { SetterThrows } 
    duration: Union; { SetterThrows } 
    direction: JPlaybackDirection;
    easing: String; { SetterThrows } 
  end;

implementation

end.
