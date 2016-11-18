unit Mozilla.HTMLUListElement;

interface

type
  JHTMLUListElement = class external 'HTMLUListElement' (JHTMLElement)
  public
    compact: Boolean; { SetterThrows } 
    type: String; { SetterThrows } 
  end;

implementation

end.
