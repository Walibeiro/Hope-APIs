unit Mozilla.HTMLStyleElement;

interface

type
  JHTMLStyleElement = class external 'HTMLStyleElement' (JHTMLElement)
  public
    disabled: Boolean; { Pure } 
    media: String; { SetterThrows,Pure } 
    type: String; { SetterThrows,Pure } 
    scoped: Boolean; { SetterThrows,Pure } 
  end;

implementation

end.
