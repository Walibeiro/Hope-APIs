unit Mozilla.HTMLFrameElement;

interface

type
  JHTMLFrameElement = class external 'HTMLFrameElement' (JHTMLElement)
  public
    name: String; { SetterThrows } 
    scrolling: String; { SetterThrows } 
    src: String; { SetterThrows } 
    frameBorder: String; { SetterThrows } 
    longDesc: String; { SetterThrows } 
    noResize: Boolean; { SetterThrows } 
    contentDocument: JDocument; { NeedsSubjectPrincipal } 
    contentWindow: JWindowProxy;
    marginHeight: String; { TreatNullAs=EmptyString,SetterThrows } 
    marginWidth: String; { TreatNullAs=EmptyString,SetterThrows } 
  end;

implementation

end.
