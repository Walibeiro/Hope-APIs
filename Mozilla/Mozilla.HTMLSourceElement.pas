unit Mozilla.HTMLSourceElement;

interface

type
  JHTMLSourceElement = class external 'HTMLSourceElement' (JHTMLElement)
  public
    src: String; { SetterThrows } 
    type: String; { SetterThrows } 
    srcset: String; { SetterThrows } 
    sizes: String; { SetterThrows } 
    media: String; { SetterThrows } 
  end;

implementation

end.
