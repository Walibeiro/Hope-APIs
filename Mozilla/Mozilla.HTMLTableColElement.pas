unit Mozilla.HTMLTableColElement;

interface

type
  JHTMLTableColElement = class external 'HTMLTableColElement' (JHTMLElement)
  public
    span: Integer; { SetterThrows } 
    align: String; { SetterThrows } 
    ch: String; { SetterThrows } 
    chOff: String; { SetterThrows } 
    vAlign: String; { SetterThrows } 
    width: String; { SetterThrows } 
  end;

implementation

end.
