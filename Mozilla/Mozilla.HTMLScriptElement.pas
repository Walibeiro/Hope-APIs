unit Mozilla.HTMLScriptElement;

interface

type
  JHTMLScriptElement = class external 'HTMLScriptElement' (JHTMLElement)
  public
    src: String; { SetterThrows } 
    type: String; { SetterThrows } 
    charset: String; { SetterThrows } 
    async: Boolean; { SetterThrows } 
    defer: Boolean; { SetterThrows } 
    crossOrigin: String; { SetterThrows } 
    text: String; { SetterThrows } 
    event: String; { SetterThrows } 
    htmlFor: String; { SetterThrows } 
    integrity: String; { SetterThrows } 
  end;

implementation

end.
