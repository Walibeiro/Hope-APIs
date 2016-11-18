unit Mozilla.Document;

interface

type
  JVisibilityState = (vsHidden, vsVisible, vsPrerender);

  JElementCreationOptions = class external 'ElementCreationOptions'
  public
    &is: String;
  end;

  // Constructor
  JDocument = class external 'Document' (JNode)
  public
    implementation: JDOMImplementation; { Throws } 
    URL: String; { Pure,Throws } 
    documentURI: String; { Pure,Throws } 
    compatMode: String; { Pure } 
    characterSet: String; { Pure } 
    charset: String; { Pure,BinaryName=characterSet } 
    inputEncoding: String; { Pure,BinaryName=characterSet } 
    contentType: String; { Pure } 
    doctype: JDocumentType; { Pure } 
    documentElement: JElement; { Pure } 
    location: JLocation; { PutForwards=href,Unforgeable } 
    referrer: String;
    lastModified: String;
    readyState: String;
    title: String; { SetterThrows,Pure } 
    dir: String; { Pure } 
    defaultView: JWindowProxy; { Pure } 
    activeElement: JElement;
    onreadystatechange: JEventHandler; { LenientThis } 
    onwheel: JEventHandler;
    oncopy: JEventHandler;
    oncut: JEventHandler;
    onpaste: JEventHandler;
    onbeforescriptexecute: JEventHandler;
    onafterscriptexecute: JEventHandler;
    onselectionchange: JEventHandler; { Pref=dom.select_events.enabled } 
    mozSyntheticDocument: Boolean; { Func=IsChromeOrXBL } 
    currentScript: JElement; { Pure } 
    documentURIObject: JURI; { ChromeOnly } 
    referrerPolicy: Integer; { ChromeOnly } 
    fullscreen: Boolean; { LenientSetter,Func=nsDocument::IsUnprefixedFullscreenEnabled } 
    mozFullScreen: Boolean; { BinaryName=fullscreen } 
    fullscreenEnabled: Boolean; { LenientSetter,Func=nsDocument::IsUnprefixedFullscreenEnabled } 
    mozFullScreenEnabled: Boolean; { BinaryName=fullscreenEnabled } 
    fullscreenElement: JElement; { LenientSetter,Func=nsDocument::IsUnprefixedFullscreenEnabled } 
    mozFullScreenElement: JElement; { BinaryName=fullscreenElement } 
    onfullscreenchange: JEventHandler; { Func=nsDocument::IsUnprefixedFullscreenEnabled } 
    onfullscreenerror: JEventHandler; { Func=nsDocument::IsUnprefixedFullscreenEnabled } 
    pointerLockElement: JElement;
    mozPointerLockElement: JElement; { BinaryName=pointerLockElement,Pref=pointer-lock-api.prefixed.enabled } 
    onpointerlockchange: JEventHandler;
    onpointerlockerror: JEventHandler;
    hidden: Boolean;
    visibilityState: JVisibilityState;
    styleSheets: JStyleSheetList; { Constant } 
    selectedStyleSheetSet: String;
    lastStyleSheetSet: String;
    preferredStyleSheetSet: String;
    styleSheetSets: JDOMStringList; { Constant } 
    scrollingElement: JElement;
    timeline: JDocumentTimeline; { Func=nsDocument::IsWebAnimationsEnabled } 
    rootElement: JSVGSVGElement; { BinaryName=SVGRootElement } 
    styleSheetChangeEventsEnabled: Boolean; { ChromeOnly } 
    docShell: JnsIDocShell; { ChromeOnly } 
    contentLanguage: String; { ChromeOnly } 
    documentLoadGroup: JnsILoadGroup; { ChromeOnly } 
    mozDocumentURIIfNotForErrorPages: JURI; { ChromeOnly } 
    isSrcdocDocument: Boolean; { ChromeOnly } 
    sandboxFlagsAsString: String; { ChromeOnly } 
    userHasInteracted: Boolean; { ChromeOnly } 
    hasScriptsBlockedBySandbox: Boolean; { Func=IsChromeOrXBL } 
    inlineScriptAllowedByCSP: Boolean; { Func=IsChromeOrXBL } 
    function getElementsByTagName(localName: String): JHTMLCollection; { Pure } 
    function getElementsByTagNameNS(&namespace: String; localName: String): JHTMLCollection; { Pure,Throws } 
    function getElementsByClassName(classNames: String): JHTMLCollection; { Pure } 
    function getElementById(elementId: String): JElement; { Pure } 
    function createElement(localName: String): JElement; overload; { NewObject,Throws } 
    function createElement(localName: String; options: Union): JElement; overload; { NewObject,Throws } 
    function createElementNS(&namespace: String; qualifiedName: String): JElement; overload; { NewObject,Throws } 
    function createElementNS(&namespace: String; qualifiedName: String; options: JElementCreationOptions): JElement; overload; { NewObject,Throws } 
    function createDocumentFragment: JDocumentFragment; { NewObject } 
    function createTextNode(data: String): JText; { NewObject } 
    function createComment(data: String): JComment; { NewObject } 
    function createProcessingInstruction(target: String; data: String): JProcessingInstruction; { NewObject,Throws } 
    function importNode(node: JNode; deep: Boolean = False): JNode; { Throws } 
    function adoptNode(node: JNode): JNode; { Throws } 
    function createEvent(&Interface: String): JEvent; { NewObject,Throws } 
    function createRange: JRange; { NewObject,Throws } 
    function createNodeIterator(root: JNode; whatToShow: Integer = 4294967295; filter: JNodeFilter = ): JNodeIterator; { NewObject,Throws } 
    function createTreeWalker(root: JNode; whatToShow: Integer = 4294967295; filter: JNodeFilter = ): JTreeWalker; { NewObject,Throws } 
    function createCDATASection(data: String): JCDATASection; { NewObject,Throws } 
    function createAttribute(&name: String): JAttr; { NewObject,Throws } 
    function createAttributeNS(&namespace: String; &name: String): JAttr; { NewObject,Throws } 
    function hasFocus: Boolean; { Throws } 
    procedure releaseCapture;
    procedure mozSetImageElement(aImageElementId: String; aImageElement: JElement);
    procedure exitFullscreen; { Func=nsDocument::IsUnprefixedFullscreenEnabled } 
    procedure mozCancelFullScreen; { BinaryName=exitFullscreen } 
    procedure exitPointerLock;
    procedure mozExitPointerLock; { BinaryName=exitPointerLock,Pref=pointer-lock-api.prefixed.enabled } 
    function registerElement(&name: String): Variant; overload; { Throws,Func=CustomElementRegistry::IsCustomElementEnabled } 
    function registerElement(&name: String; options: JElementRegistrationOptions): Variant; overload; { Throws,Func=CustomElementRegistry::IsCustomElementEnabled } 
    procedure enableStyleSheetsForSet(&name: String);
    function elementFromPoint(x: Float; y: Float): JElement;
    function elementsFromPoint(x: Float; y: Float): array of JElement;
    function caretPositionFromPoint(x: Float; y: Float): JCaretPosition;
    function querySelector(selectors: String): JElement; { Throws,Pure } 
    function querySelectorAll(selectors: String): JNodeList; { Throws,Pure } 
    function getAnimations: array of JAnimation; { Func=nsDocument::IsWebAnimationsEnabled } 
    function getAnonymousNodes(elt: JElement): JNodeList; { Func=IsChromeOrXBL } 
    function getAnonymousElementByAttribute(elt: JElement; attrName: String; attrValue: String): JElement; { Func=IsChromeOrXBL } 
    function getBindingParent(node: JNode): JElement; { Func=IsChromeOrXBL } 
    procedure loadBindingDocument(documentURL: String); { Throws,Func=IsChromeOrXBL,NeedsSubjectPrincipal } 
    function createTouch(view: JWindow = ; target: JEventTarget = ; identifier: Integer = 0; pageX: Integer = 0; pageY: Integer = 0; screenX: Integer = 0; screenY: Integer = 0; clientX: Integer = 0; clientY: Integer = 0; radiusX: Integer = 0; radiusY: Integer = 0; rotationAngle: Float = 0; force: Float = 0): JTouch; { NewObject,Func=nsGenericHTMLElement::TouchEventsEnabled } 
    function createTouchList(touch: JTouch; touches: JTouch): JTouchList; { NewObject,Func=nsGenericHTMLElement::TouchEventsEnabled } 
    function createTouchList: JTouchList; { NewObject,Func=nsGenericHTMLElement::TouchEventsEnabled } 
    function createTouchList(touches: array of JTouch): JTouchList; { NewObject,Func=nsGenericHTMLElement::TouchEventsEnabled } 
    procedure obsoleteSheet(sheetURI: JURI); { ChromeOnly,Throws } 
    procedure obsoleteSheet(sheetURI: String); { ChromeOnly,Throws } 
    function insertAnonymousContent(aElement: JElement): JAnonymousContent; { ChromeOnly,NewObject,Throws } 
    procedure removeAnonymousContent(aContent: JAnonymousContent); { ChromeOnly,Throws } 
  end;

implementation

end.
