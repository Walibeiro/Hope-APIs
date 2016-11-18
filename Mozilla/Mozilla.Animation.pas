unit Mozilla.Animation;

interface

type
  JAnimationPlayState = (apsIdle, apsPending, apsRunning, apsPaused, apsFinished);

  // Func=nsDocument::IsElementAnimateEnabled,Constructor( optional AnimationEffectReadOnly ? effect = null , optional AnimationTimeline ? timeline)
  JAnimation = class external 'Animation' (JEventTarget)
  public
    id: String;
    effect: JAnimationEffectReadOnly; { Func=nsDocument::IsWebAnimationsEnabled,Pure } 
    timeline: JAnimationTimeline; { Func=nsDocument::IsWebAnimationsEnabled } 
    startTime: Float; { BinaryName=startTimeAsDouble } 
    currentTime: Float; { SetterThrows,BinaryName=currentTimeAsDouble } 
    playbackRate: Float;
    playState: JAnimationPlayState; { BinaryName=playStateFromJS } // read only
    onfinish: JEventHandler; { Func=nsDocument::IsWebAnimationsEnabled,Throws } 
    oncancel: JEventHandler;
    isRunningOnCompositor: Boolean; { ChromeOnly } // read only
    procedure cancel;
    procedure finish; { Throws } 
    procedure play; { Throws,BinaryName=playFromJS } 
    procedure pause; { Throws,BinaryName=pauseFromJS } 
    procedure reverse; { Throws } 
  end;

implementation

end.
