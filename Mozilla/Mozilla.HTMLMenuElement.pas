unit Mozilla.HTMLMenuElement;

interface

type
  JHTMLMenuElement = class external 'HTMLMenuElement' (JHTMLElement)
  public
    type: String; { SetterThrows } 
    label: String; { SetterThrows } 
    compact: Boolean; { SetterThrows } 
    procedure sendShowEvent; { ChromeOnly } 
    function createBuilder: JMenuBuilder; { ChromeOnly } 
    procedure build(aBuilder: JMenuBuilder); { ChromeOnly } 
  end;

implementation

end.
