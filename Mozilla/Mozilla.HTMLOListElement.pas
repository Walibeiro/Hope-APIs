unit Mozilla.HTMLOListElement;

interface

type
  JHTMLOListElement = class external 'HTMLOListElement' (JHTMLElement)
  public
    reversed: Boolean; { SetterThrows } 
    start: Integer; { SetterThrows } 
    type: String; { SetterThrows } 
    compact: Boolean; { SetterThrows } 
  end;

implementation

end.
