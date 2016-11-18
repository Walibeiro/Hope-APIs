unit Mozilla.HTMLDataElement;

interface

type
  JHTMLDataElement = class external 'HTMLDataElement' (JHTMLElement)
  public
    value: String; { SetterThrows } 
  end;

implementation

end.
