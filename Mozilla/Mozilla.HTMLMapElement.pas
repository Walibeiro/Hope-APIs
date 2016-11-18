unit Mozilla.HTMLMapElement;

interface

type
  JHTMLMapElement = class external 'HTMLMapElement' (JHTMLElement)
  public
    name: String; { SetterThrows,Pure } 
    areas: JHTMLCollection; { Constant } 
  end;

implementation

end.
