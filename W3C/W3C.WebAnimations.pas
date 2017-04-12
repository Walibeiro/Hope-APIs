unit W3C.WebAnimations;

interface

uses
  W3C.DOM4, W3C.HighResolutionTime;

type
  JAnimationPlayState = String;
  JAnimationPlayStateHelper =strict helper for JAnimationPlayState
    const Idle = 'idle';
    const Pending = 'pending';
    const Running = 'running';
    const Paused = 'paused';
    const Finished = 'finished';
  end;

  JFillMode = String;
  JFillModeHelper = strict helper for JFillMode
    const None = 'none';
    const Forwards = 'forwards';
    const Backwards = 'backwards';
    const Both = 'both';
    const Auto = 'auto';
  end;

  JPlaybackDirection = String;
  JPlaybackDirectionHelper = strict helper for JPlaybackDirection
    const Normal = 'normal';
    const Reverse = 'reverse';
    const Alternate = 'alternate';
    const AlternateReverse = 'alternate-reverse';
  end;

  JIterationCompositeOperation = String;
  JIterationCompositeOperationHelper = strict helper for JIterationCompositeOperation
    const Replace = 'replace';
    const Accumulate = 'accumulate';
  end;

  JCompositeOperation = String;
  JCompositeOperationHelper = strict helper for JCompositeOperation
    const Replace = 'replace';
    const Add = 'add';
    const Accumulate = 'accumulate';
  end;

  JAnimationTimeline = class external 'AnimationTimeline'
  public
    currentTime: Float;
  end;

  JDocumentTimelineOptions = class external 'DocumentTimelineOptions'
  public
    originTime: TDOMHighResTimeStamp;
  end;

  // Constructor( optional DocumentTimelineOptions options)
  JDocumentTimeline = class external 'DocumentTimeline' (JAnimationTimeline)
  end;

  // Constructor( object ? keyframes)
  JSharedKeyframeList = class external 'SharedKeyframeList'
  end;

  JAnimationEffectTimingReadOnly = class external 'AnimationEffectTimingReadOnly'
  public
    delay: Float;
    endDelay: Float;
    fill: JFillMode;
    iterationStart: Float;
    iterations: Float;
    duration: Variant;
    durationAsFloat: Float; external 'duration';
    durationAsString: String; external 'duration';
    direction: JPlaybackDirection;
    easing: String;
  end;

  JAnimationEffectTimingProperties = class external 'AnimationEffectTimingProperties'
  public
    delay: Float;
    endDelay: Float;
    fill: JFillMode;
    iterationStart: Float;
    iterations: Float;
    duration: Variant;
    durationAsFloat: Float; external 'duration';
    durationAsString: String; external 'duration';
    direction: JPlaybackDirection;
    easing: String;
  end;

  JComputedTimingProperties = class external 'ComputedTimingProperties' (JAnimationEffectTimingProperties)
  public
    endTime: Float;
    activeDuration: Float;
    localTime: Float;
    progress: Float;
    currentIteration: Float;
  end;

  JAnimationEffectReadOnly = class external 'AnimationEffectReadOnly'
  public
    timing: JAnimationEffectTimingReadOnly;
    function getComputedTiming: JComputedTimingProperties;
  end;

  // Constructor( optional AnimationEffectReadOnly ? effect = null , optional AnimationTimeline ? timeline)
  JAnimation = class external 'Animation' (JEventTarget)
  public
    id: String;
    effect: JAnimationEffectReadOnly;
    timeline: JAnimationTimeline;
    startTime: Float;
    currentTime: Float;
    playbackRate: Float;
    playState: JAnimationPlayState;
    ready: JAnimation;
    finished: JAnimation;
    onfinish: TEventHandler;
    oncancel: TEventHandler;
    procedure cancel;
    procedure finish;
    procedure play;
    procedure pause;
    procedure reverse;
  end;

  JAnimationEffectTiming = class external 'AnimationEffectTiming' (JAnimationEffectTimingReadOnly)
  public
    delay: Float;
    endDelay: Float;
    fill: JFillMode;
    iterationStart: Float;
    iterations: Float;
    duration: Variant;
    durationAsFloat: Float; external 'duration';
    durationAsString: String; external 'duration';
    direction: JPlaybackDirection;
    easing: String;
  end;

  JKeyframeAnimationOptions = class external 'KeyframeAnimationOptions' (JKeyframeEffectOptions)
  public
    id: String;
  end;

  // NoInterfaceObject
  JAnimatable = class external 'Animatable'
  public
    function animate(keyframes: Variant): JAnimation; overload;
    function animate(keyframes: Variant; options: Float): JAnimation; overload;
    function animate(keyframes: Variant; options: JKeyframeAnimationOptions): JAnimation; overload;
    function getAnimations: array of JAnimation;
  end;

  // Constructor( Animatable ? target , object ? keyframes , optional( unrestricted double or KeyframeEffectOptions)options),Constructor( KeyframeEffectReadOnly source)
  JKeyframeEffectReadOnly = class external 'KeyframeEffectReadOnly' (JAnimationEffectReadOnly)
  public
    target: JAnimatable;
    iterationComposite: JIterationCompositeOperation;
    composite: JCompositeOperation;
    spacing: String;
    function getKeyframes: array of Variant;
  end;

  // Constructor( Animatable ? target , object ? keyframes , optional( unrestricted double or KeyframeEffectOptions)options),Constructor( KeyframeEffectReadOnly source)
  JKeyframeEffect = class external 'KeyframeEffect' (JKeyframeEffectReadOnly)
  public
    target: JAnimatable;
    iterationComposite: JIterationCompositeOperation;
    composite: JCompositeOperation;
    spacing: String;
    procedure setKeyframes(keyframes: Variant);
  end;

  JBaseComputedKeyframe = class external 'BaseComputedKeyframe'
  public
    offset: Float;
    computedOffset: Float;
    easing: String;
    composite: JCompositeOperation;
  end;

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
  end;

  JKeyframeEffectOptions = class external 'KeyframeEffectOptions' (JAnimationEffectTimingProperties)
  public
    iterationComposite: JIterationCompositeOperation;
    composite: JCompositeOperation;
    spacing: String;
  end;

  JDocument = partial class external 'Document'
  public
    timeline: JDocumentTimeline;
    function getAnimations: array of JAnimation;
  end;

  // Constructor( DOMString type , optional AnimationPlaybackEventInit eventInitDict)
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

