unit Mozilla.CSSTransition;

interface

type
  // Func=nsDocument::IsWebAnimationsEnabled,HeaderFile=nsTransitionManager.h
  JCSSTransition = class external 'CSSTransition' (JAnimation)
  public
    transitionProperty: String; { Constant } 
  end;

implementation

end.
