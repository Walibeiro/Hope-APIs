unit Mozilla.Element;

interface

type
  JElement = class external 'Element' (JNode)
  public
    namespaceURI: String; { Constant } 
    prefix: String; { Constant } 
    localName: String; { Constant } 
    tagName: String; { Pure } 
    id: String; { Pure } 
    className: String; { Pure } 
    classList: JDOMTokenList; { Constant,PutForwards=value } 
    attributes: JNamedNodeMap; { SameObject } 
    fontSizeInflation: Float; { ChromeOnly } 
    onwheel: JEventHandler; { Pure } 
    scrollTop: Integer;
    scrollLeft: Integer;
    scrollWidth: Integer;
    scrollHeight: Integer;
    clientTop: Integer;
    clientLeft: Integer;
    clientWidth: Integer;
    clientHeight: Integer;
    scrollTopMin: Integer; { ChromeOnly } 
    scrollTopMax: Integer;
    scrollLeftMin: Integer; { ChromeOnly } 
    scrollLeftMax: Integer;
    innerHTML: String; { Pure,SetterThrows,TreatNullAs=EmptyString } 
    outerHTML: String; { Pure,SetterThrows,TreatNullAs=EmptyString } 
    shadowRoot: JShadowRoot; { Func=nsDocument::IsWebComponentsEnabled } 
    function getAttributeNames: array of String; { Pure } 
    function getAttribute(&name: String): String; { Pure } 
    function getAttributeNS(&namespace: String; localName: String): String; { Pure } 
    procedure setAttribute(&name: String; value: String); { Throws } 
    procedure setAttributeNS(&namespace: String; &name: String; value: String); { Throws } 
    procedure removeAttribute(&name: String); { Throws } 
    procedure removeAttributeNS(&namespace: String; localName: String); { Throws } 
    function hasAttribute(&name: String): Boolean; { Pure } 
    function hasAttributeNS(&namespace: String; localName: String): Boolean; { Pure } 
    function hasAttributes: Boolean; { Pure } 
    function closest(selector: String): JElement; { Throws,Pure } 
    function matches(selector: String): Boolean; { Throws,Pure } 
    function webkitMatchesSelector(selector: String): Boolean; { Throws,Pure,BinaryName=matches } 
    function getElementsByTagName(localName: String): JHTMLCollection; { Pure } 
    function getElementsByTagNameNS(&namespace: String; localName: String): JHTMLCollection; { Throws,Pure } 
    function getElementsByClassName(classNames: String): JHTMLCollection; { Pure } 
    function insertAdjacentElement(where: String; element: JElement): JElement; { Throws,Pure } 
    procedure insertAdjacentText(where: String; data: String); { Throws } 
    function mozMatchesSelector(selector: String): Boolean; { Throws,Pure,BinaryName=matches } 
    procedure setPointerCapture(pointerId: Integer); { Throws,Pref=dom.w3c_pointer_events.enabled,UnsafeInPrerendering } 
    procedure releasePointerCapture(pointerId: Integer); { Throws,Pref=dom.w3c_pointer_events.enabled } 
    function hasPointerCapture(pointerId: Integer): Boolean; { Pref=dom.w3c_pointer_events.enabled } 
    procedure setCapture(retargetToElement: Boolean = False);
    procedure releaseCapture;
    function getAttributeNode(&name: String): JAttr;
    function setAttributeNode(newAttr: JAttr): JAttr; { Throws } 
    function removeAttributeNode(oldAttr: JAttr): JAttr; { Throws } 
    function getAttributeNodeNS(namespaceURI: String; localName: String): JAttr;
    function setAttributeNodeNS(newAttr: JAttr): JAttr; { Throws } 
    function scrollByNoFlush(dx: Integer; dy: Integer): Boolean; { ChromeOnly } 
    function getGridFragments: array of JGrid; { ChromeOnly,Pure } 
    function getClientRects: JDOMRectList;
    function getBoundingClientRect: JDOMRect;
    procedure scrollIntoView(top: Boolean);
    procedure scrollIntoView; overload;
    procedure scrollIntoView(options: JScrollIntoViewOptions); overload;
    procedure scroll(x: Float; y: Float);
    procedure scroll; overload;
    procedure scroll(options: JScrollToOptions); overload;
    procedure scrollTo(x: Float; y: Float);
    procedure scrollTo; overload;
    procedure scrollTo(options: JScrollToOptions); overload;
    procedure scrollBy(x: Float; y: Float);
    procedure scrollBy; overload;
    procedure scrollBy(options: JScrollToOptions); overload;
    procedure mozScrollSnap; { ChromeOnly } 
    procedure insertAdjacentHTML(position: String; text: String); { Throws } 
    function querySelector(selectors: String): JElement; { Throws,Pure } 
    function querySelectorAll(selectors: String): JNodeList; { Throws,Pure } 
    function createShadowRoot: JShadowRoot; { Throws,Func=nsDocument::IsWebComponentsEnabled } 
    function getDestinationInsertionPoints: JNodeList; { Func=nsDocument::IsWebComponentsEnabled } 
    procedure requestFullscreen; { Throws,UnsafeInPrerendering,Func=nsDocument::IsUnprefixedFullscreenEnabled } 
    procedure mozRequestFullScreen; { Throws,UnsafeInPrerendering,BinaryName=requestFullscreen } 
    procedure requestPointerLock; { UnsafeInPrerendering } 
    procedure mozRequestPointerLock; { UnsafeInPrerendering,BinaryName=requestPointerLock,Pref=pointer-lock-api.prefixed.enabled } 
  end;

  JScrollLogicalPosition = (slpStart, slpEnd);

  JScrollIntoViewOptions = class external 'ScrollIntoViewOptions' (JScrollOptions)
  public
    block: JScrollLogicalPosition;
  end;

implementation

end.
