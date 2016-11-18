unit Mozilla.HTMLImageElement;

interface

type
  // NamedConstructor=Image( optional unsigned long width , optional unsigned long height)
  JHTMLImageElement = class external 'HTMLImageElement' (JHTMLElement)
  public
    alt: String; { SetterThrows } 
    src: String; { SetterThrows } 
    srcset: String; { SetterThrows } 
    crossOrigin: String; { SetterThrows } 
    useMap: String; { SetterThrows } 
    referrerPolicy: String; { SetterThrows,Pref=network.http.enablePerElementReferrer } 
    isMap: Boolean; { SetterThrows } 
    width: Integer; { SetterThrows } 
    height: Integer; { SetterThrows } 
    naturalWidth: Integer;
    naturalHeight: Integer;
    complete: Boolean;
    name: String; { SetterThrows } 
    align: String; { SetterThrows } 
    hspace: Integer; { SetterThrows } 
    vspace: Integer; { SetterThrows } 
    longDesc: String; { SetterThrows } 
    border: String; { TreatNullAs=EmptyString,SetterThrows } 
    sizes: String; { SetterThrows } 
    currentSrc: String;
    lowsrc: String;
    x: Integer;
    y: Integer;
  end;

  // NoInterfaceObject
  JMozImageLoadingContent = class external 'MozImageLoadingContent'
  const 
    UNKNOWN_REQUEST: Integer = -1;
    CURRENT_REQUEST: Integer = 0;
    PENDING_REQUEST: Integer = 1;
  public
    loadingEnabled: Boolean; { ChromeOnly } 
    imageBlockingStatus: Integer; { ChromeOnly } 
    currentURI: JURI; { ChromeOnly,Throws } 
    procedure addObserver(aObserver: JimgINotificationObserver); { ChromeOnly } 
    procedure removeObserver(aObserver: JimgINotificationObserver); { ChromeOnly } 
    function getRequest(aRequestType: Integer): JimgIRequest; { ChromeOnly,Throws } 
    function getRequestType(aRequest: JimgIRequest): Integer; { ChromeOnly,Throws } 
    procedure forceReload; overload; { ChromeOnly,Throws } 
    procedure forceReload(aNotify: Boolean); overload; { ChromeOnly,Throws } 
    procedure forceImageState(aForce: Boolean; aState: Integer); { ChromeOnly } 
  end;

implementation

end.
