unit Mozilla.CSSAnimation;

interface

type
  // Func=nsDocument::IsWebAnimationsEnabled,HeaderFile=nsAnimationManager.h
  JCSSAnimation = class external 'CSSAnimation' (JAnimation)
  public
    animationName: String; { Constant } 
  end;

implementation

end.
