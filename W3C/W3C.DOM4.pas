unit W3C.DOM4;

interface

type
  JDOMTimeStamp = Integer;

  JEventTarget = partial class external 'EventTarget';

  JEventInit = class external 'EventInit'
  public
    bubbles: Boolean;
    cancelable: Boolean;
  end;

  // Exposed = (Window, Worker)
  JEvent = partial class external 'Event'
  const
    NONE: Integer = 0;
    CAPTURING_PHASE: Integer = 1;
    AT_TARGET: Integer = 2;
    BUBBLING_PHASE: Integer = 3;
  public
    &type: String;
    target: JEventTarget;
    currentTarget: JEventTarget;
    eventPhase: Integer;
    bubbles: Boolean;
    cancelable: Boolean;
    defaultPrevented: Boolean;
    isTrusted: Boolean; { Unforgeable }
    timeStamp: JDOMTimeStamp;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JEventInit); overload;
    procedure stopPropagation;
    procedure stopImmediatePropagation;
    procedure preventDefault;
    procedure initEvent(&type: String; bubbles: Boolean; cancelable: Boolean);
  end;

  JCustomEventInit = class external 'CustomEventInit' (JEventInit)
  public
    detail: Variant;
  end;

  // Exposed = (Window, Worker)
  JCustomEvent = class external 'CustomEvent' (JEvent)
  public
    detail: Variant;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JCustomEventInit); overload;
    procedure initCustomEvent(&type: String; bubbles: Boolean; cancelable: Boolean; detail: Variant);
  end;

  JEventListener = class external 'EventListener'
  public
    procedure handleEvent(event: JEvent);
  end;
  TEventListener = procedure(Event: JEvent);

  // Exposed = (Window, Worker)
  JEventTarget = partial class external 'EventTarget'
  public
    procedure addEventListener(&type: String; callback: procedure; capture : Boolean = false); overload;
    procedure addEventListener(&type: String; callback: TEventListener; capture : Boolean = false); overload;
    procedure addEventListener(&type: String; callback: JEventListener; capture : Boolean = false); overload;
    procedure removeEventListener(&type: String; callback: procedure; capture : Boolean = false); overload;
    procedure removeEventListener(&type: String; callback: TEventListener; capture : Boolean = false); overload;
    procedure removeEventListener(&type: String; callback: JEventListener; capture : Boolean = false); overload;
    function dispatchEvent(event: JEvent): Boolean;
  end;

  JEventHandlerNonNull = function(event: JEvent): Variant;

  TEventHandler = JEventHandlerNonNull;
  TOnErrorEventHandlerNonNull = function(event: JEvent; source: String;
    lineno, column: Integer; error: Variant): Variant;

  TOnErrorEventHandler = TOnErrorEventHandlerNonNull;
  TOnBeforeUnloadEventHandlerNonNull = function(event: JEvent): String;
  TOnBeforeUnloadEventHandler = TOnBeforeUnloadEventHandlerNonNull;

  JNode = partial class external 'Node' (JEventTarget);
  JElement = partial class external 'Element' (JNode);

  // NoInterfaceObject, Exposed = Window
  JNonElementParentNode = class external 'NonElementParentNode'
  public
    function getElementById(elementId: String): JElement;
  end;

  // Exposed = Window
  JHTMLCollection = class external 'HTMLCollection'
  private
    function GetNamedItem(name: String): Variant; external 'namedItem';
  public
    length: Integer;
    function item(index: Integer): JElement;
    function namedItem(name: String): JElement;

    property Items[index: Integer]: JElement read item; default;
    property NamedItems[name: String]: Variant read GetNamedItem;
  end;

  // Exposed = Window
  JNodeList = class external 'NodeList'
  public
    length: Integer;
    function item(&index: Integer): JNode; external array;

    // iterable<Node>;
    procedure forEach(callback: procedure(Node: JNode)); overload;
    procedure forEach(callback: procedure(Node: JNode); thisArg: Variant); overload;

    property Items[Index: Integer]: JNode read item;
  end;

  // NoInterfaceObject, Exposed = Window
  JParentNode = class external 'ParentNode'
  public
    children: JHTMLCollection; { SameObject }
    firstElementChild: JElement;
    lastElementChild: JElement;
    childElementCount: Integer;
    function querySelector(selectors: String): JElement;
    function querySelectorAll(selectors: String): JNodeList; { NewObject }
  end;

  // NoInterfaceObject, Exposed = Window
  JNonDocumentTypeChildNode = class external 'NonDocumentTypeChildNode'
  public
    previousElementSibling: JElement;
    nextElementSibling: JElement;
  end;

  // NoInterfaceObject, Exposed = Window
  JChildNode = class external 'ChildNode'
  public
    procedure remove;
  end;

  JMutationObserverInit = class external 'MutationObserverInit'
  public
    childList: Boolean;
    attributes: Boolean;
    characterData: Boolean;
    subtree: Boolean;
    attributeOldValue: Boolean;
    characterDataOldValue: Boolean;
    attributeFilter: array of String;
  end;

  // Exposed = Window
  JMutationRecord = class external 'MutationRecord'
  public
    &type: String;
    target: JNode;
    addedNodes: JNodeList; { SameObject }
    removedNodes: JNodeList; { SameObject }
    previousSibling: JNode;
    nextSibling: JNode;
    attributeName: String;
    attributeNamespace: String;
    oldValue: String;
  end;

  JMutationObserver = partial class external 'MutationObserver';

  TMutationCallback = procedure(mutations: array of JMutationRecord; observer: JMutationObserver);

  JMutationObserver = class external 'MutationObserver'
  public
    constructor Create(callback: TMutationCallback);
    procedure observe(target: JNode; options: JMutationObserverInit);
    procedure disconnect;
    function takeRecords: array of JMutationRecord;
  end;

  JDocument = partial class external 'Document' (JNode);

  // Exposed = Window
  JNode = partial class external 'Node' (JEventTarget)
  const
    ELEMENT_NODE: Integer = 1;
    ATTRIBUTE_NODE: Integer = 2;
    TEXT_NODE: Integer = 3;
    CDATA_SECTION_NODE: Integer = 4;
    ENTITY_REFERENCE_NODE: Integer = 5;
    ENTITY_NODE: Integer = 6;
    PROCESSING_INSTRUCTION_NODE: Integer = 7;
    COMMENT_NODE: Integer = 8;
    DOCUMENT_NODE: Integer = 9;
    DOCUMENT_TYPE_NODE: Integer = 10;
    DOCUMENT_FRAGMENT_NODE: Integer = 11;
    NOTATION_NODE: Integer = 12;
    DOCUMENT_POSITION_DISCONNECTED: Integer = 1;
    DOCUMENT_POSITION_PRECEDING: Integer = 2;
    DOCUMENT_POSITION_FOLLOWING: Integer = 4;
    DOCUMENT_POSITION_CONTAINS: Integer = 8;
    DOCUMENT_POSITION_CONTAINED_BY: Integer = 16;
    DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: Integer = 32;
  public
    nodeType: Integer;
    nodeName: String;
    baseURI: String;
    ownerDocument: JDocument;
    parentNode: JNode;
    parentElement: JElement;
    childNodes: JNodeList; { SameObject }
    firstChild: JNode;
    lastChild: JNode;
    previousSibling: JNode;
    nextSibling: JNode;
    nodeValue: String;
    textContent: String;
    function hasChildNodes: Boolean;
    procedure normalize;
    function cloneNode(deep: Boolean = False): JNode; { NewObject }
    function isEqualNode(node: JNode): Boolean;
    function compareDocumentPosition(other: JNode): Integer;
    function contains(other: JNode): Boolean;
    function lookupPrefix(&namespace: String): String;
    function lookupNamespaceURI(prefix: String): String;
    function isDefaultNamespace(&namespace: String): Boolean;
    function insertBefore(node: JNode; child: JNode): JNode;
    function appendChild(node: JNode): JNode;
    function replaceChild(node: JNode; child: JNode): JNode;
    function removeChild(child: JNode): JNode;
  end;

  // Exposed = Window
  JXMLDocument = partial class external 'XMLDocument' (JDocument);

  // Exposed = Window
  JDocumentFragment = class external 'DocumentFragment' (JNode)
    constructor Create;
  end;

  // Exposed = Window
  JDocumentType = class external 'DocumentType' (JNode)
  public
    name: String;
    publicId: String;
    systemId: String;
  end;

  // Exposed = Window
  JDOMImplementation = class external 'DOMImplementation'
  public
    function createDocumentType(qualifiedName: String; publicId: String; systemId: String): JDocumentType; { NewObject }
    function createDocument(&namespace: String; qualifiedName: String { TreatNullAs=EmptyString } ; doctype: JDocumentType): JXMLDocument; { NewObject }
    function createHTMLDocument: JDocument; overload; { NewObject }
    function createHTMLDocument(title: String): JDocument; overload; { NewObject }
    function hasFeature: Boolean;
  end;

  // Exposed = Window
  JCharacterData = class external 'CharacterData' (JNode)
  public
    data: String; { TreatNullAs=EmptyString }
    length: Integer;
    function substringData(offset: Integer; count: Integer): String;
    procedure appendData(data: String);
    procedure insertData(offset: Integer; data: String);
    procedure deleteData(offset: Integer; count: Integer);
    procedure replaceData(offset: Integer; count: Integer; data: String);
  end;

  // Exposed = Window
  JText = partial class external 'Text' (JCharacterData)
  public
    wholeText: String;
    constructor Create; overload;
    constructor Create(Data: String); overload;
    function splitText(offset: Integer): JText; { NewObject }
  end;

  // Exposed = Window
  JComment = class external 'Comment' (JCharacterData)
    constructor Create; overload;
    constructor Create(Data: String); overload;
  end;

  // Exposed = Window
  JProcessingInstruction = class external 'ProcessingInstruction' (JCharacterData)
  public
    target: String;
  end;

  // Exposed = (Window, Worker, System)
  JDOMStringList = class external 'DOMStringList'
  public
    length: Integer;
    function item(&index: Integer): String;
    function contains(token: String): Boolean;
  end;

  JDOMTokenList = class external 'DOMTokenList' (JDOMStringList)
  public
    procedure add(tokens: String);
    procedure remove(tokens: String);
    function toggle(token: String): Boolean; overload;
    function toggle(token: String; force: Boolean): Boolean; overload;
//  iterable<DOMString>;
  end;

  // Exposed = Window
  JElement = partial class external 'Element' (JNode)
  public
    namespaceURI: String;
    prefix: String;
    localName: String;
    tagName: String;
    id: String;
    className: String;
    classList: JDOMTokenList; { SameObject }
    // TODO: attributes: JNamedNodeMap; { SameObject }
    function getAttribute(&name: String): String;
    function getAttributeNS(&namespace: String; localName: String): String;
    procedure setAttribute(&name: String; value: String);
    procedure setAttributeNS(&namespace: String; &name: String; value: String);
    procedure removeAttribute(&name: String);
    procedure removeAttributeNS(&namespace: String; localName: String);
    function hasAttribute(&name: String): Boolean;
    function hasAttributeNS(&namespace: String; localName: String): Boolean;
    function getElementsByTagName(localName: String): JHTMLCollection;
    function getElementsByTagNameNS(&namespace: String; localName: String): JHTMLCollection;
    function getElementsByClassName(classNames: String): JHTMLCollection;
  end;

  // Exposed = Window
  JAttr = class external 'Attr'
  public
    namespaceURI: String;
    prefix: String;
    localName: String;
    name: String;
    value: String;
    specified: Boolean;
  end;

  // Exposed = Window
  JRange = partial class external 'Range'
  const
    START_TO_START: Integer = 0;
    START_TO_END: Integer = 1;
    END_TO_END: Integer = 2;
    END_TO_START: Integer = 3;
  public
    startContainer: JNode;
    startOffset: Integer;
    endContainer: JNode;
    endOffset: Integer;
    collapsed: Boolean;
    commonAncestorContainer: JNode;

    constructor Create;
    procedure setStart(node: JNode; offset: Integer);
    procedure setEnd(node: JNode; offset: Integer);
    procedure setStartBefore(node: JNode);
    procedure setStartAfter(node: JNode);
    procedure setEndBefore(node: JNode);
    procedure setEndAfter(node: JNode);
    procedure collapse(toStart: Boolean = False);
    procedure selectNode(node: JNode);
    procedure selectNodeContents(node: JNode);
    function compareBoundaryPoints(how: Integer; sourceRange: JRange): Integer;
    procedure deleteContents;
    function extractContents: JDocumentFragment; { NewObject }
    function cloneContents: JDocumentFragment; { NewObject }
    procedure insertNode(node: JNode);
    procedure surroundContents(newParent: JNode);
    function cloneRange: JRange; { NewObject }
    procedure detach;
    function isPointInRange(node: JNode; offset: Integer): Boolean;
    function comparePoint(node: JNode; offset: Integer): Integer;
    function intersectsNode(node: JNode): Boolean;
  end;

  // Exposed = Window
  JNodeFilter = class external 'NodeFilter'
  const
    // Constants for acceptNode()
    FILTER_ACCEPT: Integer = 1;
    FILTER_REJECT: Integer = 2;
    FILTER_SKIP: Integer = 3;

    // Constants for whatToShow
    SHOW_ALL: Integer = $FFFFFFFF;
    SHOW_ELEMENT: Integer = 1;
    SHOW_ATTRIBUTE: Integer = 2;
    SHOW_TEXT: Integer = 4;
    SHOW_CDATA_SECTION: Integer = 8;
    SHOW_ENTITY_REFERENCE: Integer = $10; // historical
    SHOW_ENTITY: Integer = $20; // historical
    SHOW_PROCESSING_INSTRUCTION: Integer = $40;
    SHOW_COMMENT: Integer = $80;
    SHOW_DOCUMENT: Integer = $100;
    SHOW_DOCUMENT_TYPE: Integer = $200;
    SHOW_DOCUMENT_FRAGMENT: Integer = $400;
    SHOW_NOTATION: Integer = $800; // historical
  public
    function acceptNode(node: JNode): Integer;
  end;

  // Exposed = Window
  JNodeIterator = class external 'NodeIterator'
  public
    root: JNode; { SameObject }
    referenceNode: JNode;
    pointerBeforeReferenceNode: Boolean;
    whatToShow: Integer;
    filter: JNodeFilter;
    function nextNode: JNode;
    function previousNode: JNode;
    procedure detach;
  end;

  // Exposed = Window
  JTreeWalker = class external 'TreeWalker'
  public
    root: JNode; { SameObject }
    whatToShow: Integer;
    filter: JNodeFilter;
    currentNode: JNode;
    function parentNode: JNode;
    function firstChild: JNode;
    function lastChild: JNode;
    function previousSibling: JNode;
    function nextSibling: JNode;
    function previousNode: JNode;
    function nextNode: JNode;
  end;

  JDOMSettableTokenList = class external 'DOMSettableTokenList' (JDOMTokenList)
  public
    value: String;
  end;

  JDOMError = class external 'DOMError'
  public
    name: String;
    message: String;
    constructor Create(name: String); overload;
    constructor Create(name: String; message: String); overload;
  end;

  // Exposed = Window
  JDocument = partial class external 'Document' (JNode)
  public
    &implementation: JDOMImplementation; { SameObject }
    URL: String;
    documentURI: String;
    origin: String;
    compatMode: String;
    characterSet: String;
    contentType: String;
    doctype: JDocumentType;
    documentElement: JElement;
    constructor Create;
    function getElementsByTagName(localName: String): JHTMLCollection;
    function getElementsByTagNameNS(&namespace: String; localName: String): JHTMLCollection;
    function getElementsByClassName(classNames: String): JHTMLCollection;
    function createElement(localName: String): JElement; { NewObject }
    function createElementNS(&namespace: String; qualifiedName: String): JElement; { NewObject }
    function createDocumentFragment: JDocumentFragment; { NewObject }
    function createTextNode(data: String): JText; { NewObject }
    function createComment(data: String): JComment; { NewObject }
    function createProcessingInstruction(target: String; data: String): JProcessingInstruction; { NewObject }
    function importNode(node: JNode; deep: Boolean = False): JNode; { NewObject }
    function adoptNode(node: JNode): JNode;
    function createEvent(&Interface: String): JEvent; { NewObject }
    function createRange: JRange; { NewObject }
    function createNodeIterator(root: JNode; whatToShow: Integer = $FFFFFFFF): JNodeIterator; overload; { NewObject }
    function createNodeIterator(root: JNode; whatToShow: Integer; filter: JNodeFilter): JNodeIterator; overload; { NewObject }
    function createTreeWalker(root: JNode; whatToShow: Integer = $FFFFFFFF): JTreeWalker; overload; { NewObject }
    function createTreeWalker(root: JNode; whatToShow: Integer; filter: JNodeFilter): JTreeWalker; overload; { NewObject }
  end;

var Document external 'document': JDocument;