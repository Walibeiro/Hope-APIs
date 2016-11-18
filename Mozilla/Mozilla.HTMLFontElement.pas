unit Mozilla.HTMLFontElement;

interface

type
  JHTMLFontElement = class external 'HTMLFontElement' (JHTMLElement)
  public
    color: String; { TreatNullAs=EmptyString,SetterThrows } 
    face: String; { SetterThrows } 
    size: String; { SetterThrows } 
  end;

implementation

end.
