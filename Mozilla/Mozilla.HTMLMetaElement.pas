unit Mozilla.HTMLMetaElement;

interface

type
  JHTMLMetaElement = class external 'HTMLMetaElement' (JHTMLElement)
  public
    name: String; { SetterThrows,Pure } 
    httpEquiv: String; { SetterThrows,Pure } 
    content: String; { SetterThrows,Pure } 
    scheme: String; { SetterThrows,Pure } 
  end;

implementation

end.
