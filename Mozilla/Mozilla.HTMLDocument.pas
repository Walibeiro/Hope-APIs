unit Mozilla.HTMLDocument;

interface

type
  // OverrideBuiltins
  JHTMLDocument = class external 'HTMLDocument' (JDocument)
  public
    domain: String; { SetterThrows } 
    cookie: String; { Throws } 
    body: JHTMLElement; { Pure,SetterThrows } 
    head: JHTMLHeadElement; { Pure } 
    images: JHTMLCollection; { Pure } 
    embeds: JHTMLCollection; { Pure } 
    plugins: JHTMLCollection; { Pure } 
    links: JHTMLCollection; { Pure } 
    forms: JHTMLCollection; { Pure } 
    scripts: JHTMLCollection; { Pure } 
    designMode: String; { SetterThrows,NeedsSubjectPrincipal } 
    fgColor: String; { TreatNullAs=EmptyString } 
    linkColor: String; { TreatNullAs=EmptyString } 
    vlinkColor: String; { TreatNullAs=EmptyString } 
    alinkColor: String; { TreatNullAs=EmptyString } 
    bgColor: String; { TreatNullAs=EmptyString } 
    anchors: JHTMLCollection; { Pure } 
    applets: JHTMLCollection; { Pure } 
    all: JHTMLAllCollection;
    blockedTrackingNodeCount: Integer; { ChromeOnly,Pure } 
    blockedTrackingNodes: JNodeList; { ChromeOnly,Pure } 
    function (&name: String): Variant; { Throws } 
    function getElementsByName(elementName: String): JNodeList;
    function open(&type: String = text/html; replace: String = ): JDocument; { Throws } 
    function open(url: String; &name: String; features: String; replace: Boolean = False): JWindowProxy; { Throws } 
    procedure close; { Throws } 
    procedure write(text: String); { Throws } 
    procedure writeln(text: String); { Throws } 
    function execCommand(commandId: String; showUI: Boolean = False; value: String = ): Boolean; { Throws } 
    function queryCommandEnabled(commandId: String): Boolean; { Throws } 
    function queryCommandIndeterm(commandId: String): Boolean; { Throws } 
    function queryCommandState(commandId: String): Boolean; { Throws } 
    function queryCommandSupported(commandId: String): Boolean;
    function queryCommandValue(commandId: String): String; { Throws } 
    procedure clear;
    function getSelection: JSelection; { Throws } 
    procedure captureEvents;
    procedure releaseEvents;
  end;

implementation

end.
