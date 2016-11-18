unit Mozilla.HTMLAppletElement;

interface

type
  // NeedResolve,UnsafeInPrerendering
  JHTMLAppletElement = class external 'HTMLAppletElement' (JHTMLElement)
  public
    align: String; { Pure,SetterThrows } 
    alt: String; { Pure,SetterThrows } 
    archive: String; { Pure,SetterThrows } 
    code: String; { Pure,SetterThrows } 
    codeBase: String; { Pure,SetterThrows } 
    height: String; { Pure,SetterThrows } 
    hspace: Integer; { Pure,SetterThrows } 
    name: String; { Pure,SetterThrows } 
    _object: String; { Pure,SetterThrows } 
    vspace: Integer; { Pure,SetterThrows } 
    width: String; { Pure,SetterThrows } 
  end;

implementation

end.
