unit Mozilla.HTMLBodyElement;

interface

type
  JHTMLBodyElement = class external 'HTMLBodyElement' (JHTMLElement)
  public
    text: String; { TreatNullAs=EmptyString,SetterThrows } 
    link: String; { TreatNullAs=EmptyString,SetterThrows } 
    vLink: String; { TreatNullAs=EmptyString,SetterThrows } 
    aLink: String; { TreatNullAs=EmptyString,SetterThrows } 
    bgColor: String; { TreatNullAs=EmptyString,SetterThrows } 
    background: String; { SetterThrows } 
  end;

implementation

end.
