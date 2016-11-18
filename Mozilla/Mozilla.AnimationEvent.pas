unit Mozilla.AnimationEvent;

interface

type
  // Constructor( DOMString type , optional AnimationEventInit eventInitDict)
  JAnimationEvent = class external 'AnimationEvent' (JEvent)
  public
    animationName: String;
    elapsedTime: Float;
    pseudoElement: String;
  end;

  JAnimationEventInit = class external 'AnimationEventInit' (JEventInit)
  public
    animationName: String;
    elapsedTime: Float;
    pseudoElement: String;
  end;

implementation

end.
