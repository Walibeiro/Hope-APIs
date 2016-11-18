unit Mozilla.HTMLProgressElement;

interface

type
  JHTMLProgressElement = class external 'HTMLProgressElement' (JHTMLElement)
  public
    value: Float; { SetterThrows } 
    max: Float; { SetterThrows } 
    position: Float;
  end;

implementation

end.
