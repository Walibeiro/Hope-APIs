unit Mozilla.HTMLLinkElement;

interface

type
  JHTMLLinkElement = class external 'HTMLLinkElement' (JHTMLElement)
  public
    disabled: Boolean; { Pure } 
    href: String; { SetterThrows,Pure } 
    crossOrigin: String; { SetterThrows,Pure } 
    rel: String; { SetterThrows,Pure } 
    relList: JDOMTokenList; { PutForwards=value } 
    media: String; { SetterThrows,Pure } 
    hreflang: String; { SetterThrows,Pure } 
    type: String; { SetterThrows,Pure } 
    referrerPolicy: String; { SetterThrows,Pure,Pref=network.http.enablePerElementReferrer } 
    sizes: JDOMTokenList; { PutForwards=value } 
    charset: String; { SetterThrows,Pure } 
    rev: String; { SetterThrows,Pure } 
    target: String; { SetterThrows,Pure } 
    import: JDocument; { Func=nsDocument::IsWebComponentsEnabled } 
    integrity: String; { SetterThrows } 
  end;

implementation

end.
