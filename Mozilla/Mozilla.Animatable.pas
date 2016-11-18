unit Mozilla.Animatable;

interface

type
  JKeyframeAnimationOptions = class external 'KeyframeAnimationOptions' (JKeyframeEffectOptions)
  public
    id: String;
  end;

  JAnimationFilter = class external 'AnimationFilter'
  public
    subtree: Boolean;
  end;

  // NoInterfaceObject
  JAnimatable = class external 'Animatable'
  public
    function animate(keyframes: Variant): JAnimation; overload; { Func=nsDocument::IsElementAnimateEnabled,Throws } 
    function animate(keyframes: Variant; options: JUnrestrictedDoubleOrKeyframeAnimationOptions): JAnimation; overload; { Func=nsDocument::IsElementAnimateEnabled,Throws } 
    function getAnimations: array of JAnimation; overload; { Func=nsDocument::IsWebAnimationsEnabled } 
    function getAnimations(filter: JAnimationFilter): array of JAnimation; overload; { Func=nsDocument::IsWebAnimationsEnabled } 
  end;

implementation

end.
