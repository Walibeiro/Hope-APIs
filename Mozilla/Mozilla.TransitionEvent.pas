unit Mozilla.TransitionEvent;

interface

type
  // Constructor( DOMString type , optional TransitionEventInit eventInitDict)
  JTransitionEvent = class external 'TransitionEvent' (JEvent)
  public
    propertyName: String;
    elapsedTime: Float;
    pseudoElement: String;
  end;

  JTransitionEventInit = class external 'TransitionEventInit' (JEventInit)
  public
    propertyName: String;
    elapsedTime: Float;
    pseudoElement: String;
  end;

implementation

end.
