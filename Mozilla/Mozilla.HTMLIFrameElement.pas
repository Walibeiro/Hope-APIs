unit Mozilla.HTMLIFrameElement;

interface

type
  JHTMLIFrameElement = class external 'HTMLIFrameElement' (JHTMLElement)
  public
    src: String; { SetterThrows,Pure } 
    srcdoc: String; { SetterThrows,Pure } 
    name: String; { SetterThrows,Pure } 
    sandbox: JDOMTokenList; { PutForwards=value } 
    allowFullscreen: Boolean; { SetterThrows,Pure } 
    width: String; { SetterThrows,Pure } 
    height: String; { SetterThrows,Pure } 
    referrerPolicy: String; { SetterThrows,Pure,Pref=network.http.enablePerElementReferrer } 
    contentDocument: JDocument; { NeedsSubjectPrincipal } 
    contentWindow: JWindowProxy;
    align: String; { SetterThrows,Pure } 
    scrolling: String; { SetterThrows,Pure } 
    frameBorder: String; { SetterThrows,Pure } 
    longDesc: String; { SetterThrows,Pure } 
    marginHeight: String; { TreatNullAs=EmptyString,SetterThrows,Pure } 
    marginWidth: String; { TreatNullAs=EmptyString,SetterThrows,Pure } 
    mozbrowser: Boolean; { ChromeOnly,SetterThrows } 
    appManifestURL: String; { ChromeOnly } 
    function getSVGDocument: JDocument; { NeedsSubjectPrincipal } 
  end;

implementation

end.
