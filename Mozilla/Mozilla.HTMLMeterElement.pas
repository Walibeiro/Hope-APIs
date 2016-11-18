unit Mozilla.HTMLMeterElement;

interface

type
  JHTMLMeterElement = class external 'HTMLMeterElement' (JHTMLElement)
  public
    value: Float; { SetterThrows } 
    min: Float; { SetterThrows } 
    max: Float; { SetterThrows } 
    low: Float; { SetterThrows } 
    high: Float; { SetterThrows } 
    optimum: Float; { SetterThrows } 
  end;

implementation

end.
