unit Mozilla.HTMLObjectElement;

interface

type
  // NeedResolve,UnsafeInPrerendering
  JHTMLObjectElement = class external 'HTMLObjectElement' (JHTMLElement)
  public
    data: String; { Pure,SetterThrows } 
    type: String; { Pure,SetterThrows } 
    typeMustMatch: Boolean; { Pure,SetterThrows } 
    name: String; { Pure,SetterThrows } 
    useMap: String; { Pure,SetterThrows } 
    form: JHTMLFormElement; { Pure } 
    width: String; { Pure,SetterThrows } 
    height: String; { Pure,SetterThrows } 
    contentDocument: JDocument; { NeedsSubjectPrincipal } 
    contentWindow: JWindowProxy; { NeedsSubjectPrincipal } 
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    align: String; { Pure,SetterThrows } 
    archive: String; { Pure,SetterThrows } 
    code: String; { Pure,SetterThrows } 
    declare: Boolean; { Pure,SetterThrows } 
    hspace: Integer; { Pure,SetterThrows } 
    standby: String; { Pure,SetterThrows } 
    vspace: Integer; { Pure,SetterThrows } 
    codeBase: String; { Pure,SetterThrows } 
    codeType: String; { Pure,SetterThrows } 
    border: String; { TreatNullAs=EmptyString,Pure,SetterThrows } 
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
    function (arguments: Variant): Variant; { Throws } 
    function getSVGDocument: JDocument; { NeedsSubjectPrincipal } 
  end;

  // NoInterfaceObject
  JMozObjectLoadingContent = class external 'MozObjectLoadingContent'
  const 
    TYPE_LOADING: Integer = 0;
    TYPE_IMAGE: Integer = 1;
    TYPE_PLUGIN: Integer = 2;
    TYPE_DOCUMENT: Integer = 3;
    TYPE_NULL: Integer = 4;
    PLUGIN_UNSUPPORTED: Integer = 0;
    PLUGIN_ALTERNATE: Integer = 1;
    PLUGIN_DISABLED: Integer = 2;
    PLUGIN_BLOCKLISTED: Integer = 3;
    PLUGIN_OUTDATED: Integer = 4;
    PLUGIN_CRASHED: Integer = 5;
    PLUGIN_SUPPRESSED: Integer = 6;
    PLUGIN_USER_DISABLED: Integer = 7;
    PLUGIN_CLICK_TO_PLAY: Integer = 8;
    PLUGIN_VULNERABLE_UPDATABLE: Integer = 9;
    PLUGIN_VULNERABLE_NO_UPDATE: Integer = 10;
  public
    actualType: String; { ChromeOnly } 
    displayedType: Integer; { ChromeOnly } 
    activated: Boolean; { ChromeOnly } 
    srcURI: JURI; { ChromeOnly } 
    defaultFallbackType: Integer; { ChromeOnly } 
    pluginFallbackType: Integer; { ChromeOnly } 
    hasRunningPlugin: Boolean; { ChromeOnly } 
    runID: Integer; { ChromeOnly,Throws } 
    function getContentTypeForMIMEType(aMimeType: String): Integer; { ChromeOnly } 
    function getPluginAttributes: array of JMozPluginParameter; { ChromeOnly } 
    function getPluginParameters: array of JMozPluginParameter; { ChromeOnly } 
    procedure playPlugin; { ChromeOnly,Throws } 
    procedure reload(aClearActivation: Boolean); { ChromeOnly,Throws } 
  end;

  JMozPluginParameter = class external 'MozPluginParameter'
  public
    &name: String;
    value: String;
  end;

implementation

end.
