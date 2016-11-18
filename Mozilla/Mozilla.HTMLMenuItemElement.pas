unit Mozilla.HTMLMenuItemElement;

interface

type
  JHTMLMenuItemElement = class external 'HTMLMenuItemElement' (JHTMLElement)
  public
    type: String; { SetterThrows } 
    label: String; { SetterThrows } 
    icon: String; { SetterThrows } 
    disabled: Boolean; { SetterThrows } 
    checked: Boolean; { SetterThrows } 
    radiogroup: String; { SetterThrows } 
    defaultChecked: Boolean; { SetterThrows } 
  end;

implementation

end.
