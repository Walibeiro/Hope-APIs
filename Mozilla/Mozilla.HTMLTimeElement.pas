unit Mozilla.HTMLTimeElement;

interface

type
  JHTMLTimeElement = class external 'HTMLTimeElement' (JHTMLElement)
  public
    dateTime: String; { SetterThrows } 
  end;

implementation

end.
