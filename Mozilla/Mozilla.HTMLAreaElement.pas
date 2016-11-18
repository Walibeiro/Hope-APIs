unit Mozilla.HTMLAreaElement;

interface

type
  JHTMLAreaElement = class external 'HTMLAreaElement' (JHTMLElement)
  public
    alt: String; { SetterThrows } 
    coords: String; { SetterThrows } 
    shape: String; { SetterThrows } 
    target: String; { SetterThrows } 
    download: String; { SetterThrows } 
    ping: String; { SetterThrows } 
    rel: String; { SetterThrows } 
    referrerPolicy: String; { SetterThrows,Pref=network.http.enablePerElementReferrer } 
    relList: JDOMTokenList; { PutForwards=value } 
    noHref: Boolean; { SetterThrows } 
  end;

implementation

end.
