unit Mozilla.HTMLBaseElement;

interface

type
  JHTMLBaseElement = class external 'HTMLBaseElement' (JHTMLElement)
  public
    href: String; { SetterThrows,Pure } 
    target: String; { SetterThrows,Pure } 
  end;

implementation

end.
