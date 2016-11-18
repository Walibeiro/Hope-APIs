unit Mozilla.HTMLAnchorElement;

interface

type
  JHTMLAnchorElement = class external 'HTMLAnchorElement' (JHTMLElement)
  public
    target: String; { SetterThrows } 
    download: String; { SetterThrows } 
    ping: String; { SetterThrows } 
    rel: String; { SetterThrows } 
    referrerPolicy: String; { SetterThrows,Pref=network.http.enablePerElementReferrer } 
    relList: JDOMTokenList; { PutForwards=value } 
    hreflang: String; { SetterThrows } 
    type: String; { SetterThrows } 
    text: String; { SetterThrows } 
    coords: String; { SetterThrows } 
    charset: String; { SetterThrows } 
    name: String; { SetterThrows } 
    rev: String; { SetterThrows } 
    shape: String; { SetterThrows } 
  end;

implementation

end.
