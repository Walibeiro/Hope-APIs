unit Mozilla.HTMLOptionElement;

interface

type
  // NamedConstructor=Option( optional DOMString text , optional DOMString value , optional boolean defaultSelected , optional boolean selected)
  JHTMLOptionElement = class external 'HTMLOptionElement' (JHTMLElement)
  public
    disabled: Boolean; { SetterThrows } 
    form: JHTMLFormElement;
    label: String; { SetterThrows } 
    defaultSelected: Boolean; { SetterThrows } 
    selected: Boolean; { SetterThrows } 
    value: String; { SetterThrows } 
    text: String; { SetterThrows } 
    index: Integer;
  end;

implementation

end.
