unit Mozilla.HTMLLIElement;

interface

type
  JHTMLLIElement = class external 'HTMLLIElement' (JHTMLElement)
  public
    value: Integer; { SetterThrows,Pure } 
    type: String; { SetterThrows,Pure } 
  end;

implementation

end.
