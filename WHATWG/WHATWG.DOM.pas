unit WHATWG.DOM;

interface

type
	JEventTarget = partial class external 'EventTarget';

	JEventInit = class external 'EventInit'
	public
		bubbles: Boolean;
		cancelable: Boolean;
		composed: Boolean;
	end;

  JDOMTimeStamp = Integer;

  // Exposed = (Window, Worker)
	JEvent = class external 'Event'
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
		composed: Boolean;
		isTrusted: Boolean; { Unforgeable } 
		timeStamp: JDOMTimeStamp;

    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JEventInit); overload;

		function composedPath: array of JEventTarget;
		procedure stopPropagation;
		procedure stopImmediatePropagation;
		procedure preventDefault;
		procedure initEvent(&type: String; bubbles: Boolean; cancelable: Boolean);  // historical
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

	JEventListenerOptions = class external 'EventListenerOptions'
	public
		capture: Boolean;
	end;

	JAddEventListenerOptions = class external 'AddEventListenerOptions' (JEventListenerOptions)
	public
		passive: Boolean;
		once: Boolean;
	end;

	// Exposed = (Window, Worker)
	JEventTarget = partial class external 'EventTarget'
	public
		procedure addEventListener(&type: String; Callback: JEventListener); overload;
		procedure addEventListener(&type: String; Callback: JEventListener; options: JAddEventListenerOptions); overload;
		procedure addEventListener(&type: String; Callback: JEventListener; options: Boolean); overload;
		procedure removeEventListener(&type: String; Callback: JEventListener); overload;
		procedure removeEventListener(&type: String; Callback: JEventListener; options: JEventListenerOptions); overload;
		procedure removeEventListener(&type: String; Callback: JEventListener; options: Boolean); overload;
		function dispatchEvent(event: JEvent): Boolean;
	end;

	JNode = partial class external 'Node' (JEventTarget);
	JElement = partial class external 'Element' (JNode);

	// NoInterfaceObject, Exposed=Window
	JNonElementParentNode = class external 'NonElementParentNode'
	public
		function getElementById(elementId: String): JElement;
	end;

	// NoInterfaceObject,Exposed=Window
	JDocumentOrShadowRoot = class external 'DocumentOrShadowRoot'
	end;

	// Exposed=Window,LegacyUnenumerableNamedProperties
	JHTMLCollection = class external 'HTMLCollection'
	public
		length: Integer;
		function item(&index: Integer): JElement;
		function namedItem(&name: String): JElement;
	end;

	// Exposed=Window
	JNodeList = class external 'NodeList'
	public
		length: Integer;
		function item(&index: Integer): JNode;
    // iterable<Node>;
	end;

	// NoInterfaceObject,Exposed=Window
	JParentNode = class external 'ParentNode'
	public
		children: JHTMLCollection; { SameObject } 
		firstElementChild: JElement;
		lastElementChild: JElement;
		childElementCount: Integer;
		procedure prepend(node: String); overload; { CEReactions, Unscopable }
		procedure prepend(node: JNode); overload; { CEReactions, Unscopable }
		procedure prepend(node1, node2: String); overload; { CEReactions, Unscopable }
		procedure prepend(node1, node2: JNode); overload; { CEReactions, Unscopable }
		procedure prepend(node1, node2, node3: String); overload; { CEReactions, Unscopable }
		procedure prepend(node1, node2, node3: JNode); overload; { CEReactions, Unscopable }
		procedure append(node: String); overload; { CEReactions, Unscopable }
		procedure append(node: JNode); overload; { CEReactions, Unscopable }
		procedure append(node1, node2: String); overload; { CEReactions, Unscopable }
		procedure append(node1, node2: JNode); overload; { CEReactions, Unscopable }
		procedure append(node1, node2, node3: String); overload; { CEReactions, Unscopable }
		procedure append(node1, node2, node3: JNode); overload; { CEReactions, Unscopable }
		function querySelector(selectors: String): JElement;
		function querySelectorAll(selectors: String): JNodeList; { NewObject } 
	end;

	// NoInterfaceObject,Exposed=Window
	JNonDocumentTypeChildNode = class external 'NonDocumentTypeChildNode'
	public
		previousElementSibling: JElement;
		nextElementSibling: JElement;
	end;

	// NoInterfaceObject,Exposed=Window
	JChildNode = class external 'ChildNode'
	public
		procedure before(node: String); overload; { CEReactions,Unscopable }
		procedure before(node: JNode); overload; { CEReactions,Unscopable }
		procedure before(node1, node2: String); overload; { CEReactions,Unscopable }
		procedure before(node1, node2: JNode); overload; { CEReactions,Unscopable }
		procedure before(node1, node2, node3: String); overload; { CEReactions,Unscopable }
		procedure before(node1, node2, node3: JNode); overload; { CEReactions,Unscopable }
		procedure after(node: String); overload; { CEReactions,Unscopable }
		procedure after(node: JNode); overload; { CEReactions,Unscopable }
		procedure after(node1, node2: String); overload; { CEReactions,Unscopable }
		procedure after(node1, node2: JNode); overload; { CEReactions,Unscopable }
		procedure after(node1, node2, node3: String); overload; { CEReactions,Unscopable }
		procedure after(node1, node2, node3: JNode); overload; { CEReactions,Unscopable }
		procedure replaceWith(node: String); overload; { CEReactions,Unscopable }
		procedure replaceWith(node: JNode); overload; { CEReactions,Unscopable }
		procedure replaceWith(node1, node2: String); overload; { CEReactions,Unscopable }
		procedure replaceWith(node1, node2: JNode); overload; { CEReactions,Unscopable }
		procedure replaceWith(node1, node2, node3: String); overload; { CEReactions,Unscopable }
		procedure replaceWith(node1, node2, node3: JNode); overload; { CEReactions,Unscopable }
		procedure remove; { CEReactions,Unscopable }
	end;

	// NoInterfaceObject,Exposed=Window
	JSlotable = class external 'Slotable'
	public
// TODO		assignedSlot: JHTMLSlotElement;
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

	// Exposed=Window
	JMutationRecord = class external 'MutationRecord'
	public
		&type: String;
		target: JNode; { SameObject }
		addedNodes: JNodeList; { SameObject }
		removedNodes: JNodeList; { SameObject }
		previousSibling: JNode;
		nextSibling: JNode;
		attributeName: String;
		attributeNamespace: String;
		oldValue: String;
	end;

	// Constructor( MutationCallback callback)
	JMutationObserver = class external 'MutationObserver'
	public
		procedure observe(target: JNode); overload;
		procedure observe(target: JNode; options: JMutationObserverInit); overload;
		procedure disconnect;
		function takeRecords: array of JMutationRecord;
	end;

	JMutationCallback = procedure(mutations: array of JMutationRecord; observer: JMutationObserver);

	JGetRootNodeOptions = class external 'GetRootNodeOptions'
	public
		composed: Boolean;
	end;

	JDocument = partial class external 'Document' (JNode);

	// Exposed=Window
	JNode = partial class external 'Node' (JEventTarget)
	const 
		ELEMENT_NODE: Integer = 1;
		ATTRIBUTE_NODE: Integer = 2;
		TEXT_NODE: Integer = 3;
		CDATA_SECTION_NODE: Integer = 4;
		ENTITY_REFERENCE_NODE: Integer = 5; // historical
		ENTITY_NODE: Integer = 6; // historical
		PROCESSING_INSTRUCTION_NODE: Integer = 7;
		COMMENT_NODE: Integer = 8;
		DOCUMENT_NODE: Integer = 9;
		DOCUMENT_TYPE_NODE: Integer = 10;
		DOCUMENT_FRAGMENT_NODE: Integer = 11;
		NOTATION_NODE: Integer = 12; // historical
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
		isConnected: Boolean;
		ownerDocument: JDocument;
		parentNode: JNode;
		parentElement: JElement;
		childNodes: JNodeList; { SameObject } 
		firstChild: JNode;
		lastChild: JNode;
		previousSibling: JNode;
		nextSibling: JNode;
		nodeValue: String; { CEReactions } 
		textContent: String; { CEReactions } 
		function getRootNode: JNode; overload;
		function getRootNode(options: JGetRootNodeOptions): JNode; overload;
		function hasChildNodes: Boolean;
		procedure normalize; { CEReactions } 
		function cloneNode(deep: Boolean = False): JNode; { CEReactions,NewObject } 
		function isEqualNode(otherNode: JNode): Boolean;
		function isSameNode(otherNode: JNode): Boolean; // historical alias of ===
		function compareDocumentPosition(other: JNode): Integer;
		function contains(other: JNode): Boolean;
		function lookupPrefix(&namespace: String): String;
		function lookupNamespaceURI(prefix: String): String;
		function isDefaultNamespace(&namespace: String): Boolean;
		function insertBefore(node: JNode; child: JNode): JNode; { CEReactions } 
		function appendChild(node: JNode): JNode; { CEReactions } 
		function replaceChild(node: JNode; child: JNode): JNode; { CEReactions } 
		function removeChild(child: JNode): JNode; { CEReactions } 
	end;

	// Exposed=Window
	JDocumentType = class external 'DocumentType' (JNode)
	public
		name: String;
		publicId: String;
		systemId: String;
	end;

	JElementCreationOptions = class external 'ElementCreationOptions'
	public
		&is: String;
	end;

	// Constructor,Exposed=Window
	JDocumentFragment = class external 'DocumentFragment' (JNode)
	end;

  JDOMImplementation = class;

	// Exposed=Window
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

	// Constructor( optional DOMString data),Exposed=Window
	JText = class external 'Text' (JCharacterData)
	public
		wholeText: String;
		function splitText(offset: Integer): JText; { NewObject }
	end;

	// Exposed=Window
	JCDATASection = class external 'CDATASection' (JText)
	end;

	// Exposed=Window
	JXMLDocument = class external 'XMLDocument' (JDocument)
	end;

	JShadowRootMode = String;
  JShadowRootModeHelper = strict helper for JShadowRootMode
    const Open = 'open';
    const Closed = 'closed';
  end;

	// Exposed=Window
	JShadowRoot = class external 'ShadowRoot' (JDocumentFragment)
	public
		mode: JShadowRootMode;
		host: JElement;
	end;

	JDOMTokenList = class external 'DOMTokenList'
	public
		length: Integer;
		function item(&index: Integer): String;
		function contains(token: String): Boolean;
		procedure add(tokens: String); { CEReactions }
		procedure remove(tokens: String); { CEReactions }
		function toggle(token: String): Boolean; overload; { CEReactions }
		function toggle(token: String; force: Boolean): Boolean; overload; { CEReactions }
		procedure replace(token: String; newToken: String); { CEReactions }
		function supports(token: String): Boolean;
//  iterable<DOMString>;
	end;

	// Exposed=Window
	JAttr = class external 'Attr' (JNode)
	public
		namespaceURI: String;
		prefix: String;
		localName: String;
		name: String;
		value: String; { CEReactions }
		ownerElement: JElement;
		specified: Boolean; // useless; always returns true
	end;

	// Exposed=Window,LegacyUnenumerableNamedProperties
	JNamedNodeMap = class external 'NamedNodeMap'
	public
		length: Integer;
		function item(&index: Integer): JAttr;
		function getNamedItem(qualifiedName: String): JAttr;
		function getNamedItemNS(&namespace: String; localName: String): JAttr;
		function setNamedItem(attr: JAttr): JAttr; { CEReactions }
		function setNamedItemNS(attr: JAttr): JAttr; { CEReactions }
		function removeNamedItem(qualifiedName: String): JAttr; { CEReactions }
		function removeNamedItemNS(&namespace: String; localName: String): JAttr; { CEReactions }
	end;

	JShadowRootInit = class external 'ShadowRootInit'
	public
    //  required ShadowRootMode mode;
	end;

	// Exposed=Window
	JElement = partial class external 'Element' (JNode)
	public
		namespaceURI: String;
		prefix: String;
		localName: String;
		tagName: String;
		id: String; { CEReactions } 
		className: String; { CEReactions } 
		classList: JDOMTokenList; { CEReactions,SameObject,PutForwards=value } 
		slot: String; { CEReactions,Unscopable } 
		attributes: JNamedNodeMap; { SameObject } 
		shadowRoot: JShadowRoot;
		function hasAttributes: Boolean;
		function getAttributeNames: array of String;
		function getAttribute(qualifiedName: String): String;
		function getAttributeNS(&namespace: String; localName: String): String;
		procedure setAttribute(qualifiedName: String; value: String); { CEReactions } 
		procedure setAttributeNS(&namespace: String; qualifiedName: String; value: String); { CEReactions } 
		procedure removeAttribute(qualifiedName: String); { CEReactions } 
		procedure removeAttributeNS(&namespace: String; localName: String); { CEReactions } 
		function hasAttribute(qualifiedName: String): Boolean;
		function hasAttributeNS(&namespace: String; localName: String): Boolean;
		function getAttributeNode(qualifiedName: String): JAttr;
		function getAttributeNodeNS(&namespace: String; localName: String): JAttr;
		function setAttributeNode(attr: JAttr): JAttr; { CEReactions } 
		function setAttributeNodeNS(attr: JAttr): JAttr; { CEReactions } 
		function removeAttributeNode(attr: JAttr): JAttr; { CEReactions } 
		function attachShadow(init: JShadowRootInit): JShadowRoot;
		function closest(selectors: String): JElement;
		function matches(selectors: String): Boolean;
		function webkitMatchesSelector(selectors: String): Boolean; // historical alias of .matches
		function getElementsByTagName(qualifiedName: String): JHTMLCollection;
		function getElementsByTagNameNS(&namespace: String; localName: String): JHTMLCollection;
		function getElementsByClassName(classNames: String): JHTMLCollection;
		function insertAdjacentElement(where: String; element: JElement): JElement; { CEReactions }  // historical
		procedure insertAdjacentText(where: String; data: String); // historical
	end;

	// Exposed=Window
	JProcessingInstruction = class external 'ProcessingInstruction' (JCharacterData)
	public
		target: String;
	end;

	// Constructor( optional DOMString data),Exposed=Window
	JComment = class external 'Comment' (JCharacterData)
	end;

	// Constructor,Exposed=Window
	JRange = class external 'Range'
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
		procedure deleteContents; { CEReactions } 
		function extractContents: JDocumentFragment; { CEReactions,NewObject } 
		function cloneContents: JDocumentFragment; { CEReactions,NewObject } 
		procedure insertNode(node: JNode); { CEReactions } 
		procedure surroundContents(newParent: JNode); { CEReactions } 
		function cloneRange: JRange; { NewObject } 
		procedure detach;
		function isPointInRange(node: JNode; offset: Integer): Boolean;
		function comparePoint(node: JNode; offset: Integer): Integer;
		function intersectsNode(node: JNode): Boolean;
	end;

	// Exposed=Window
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

	// Exposed=Window
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

	// Exposed=Window
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

	// Constructor,Exposed=Window
	JDocument = partial class external 'Document' (JNode)
	public
    // NodeFilter.SHOW_ALL = $FFFFFFFF
		&implementation: JDOMImplementation; { SameObject }
		URL: String;
		documentURI: String;
		origin: String;
		compatMode: String;
		characterSet: String;
		charset: String; // historical alias of .characterSet
		inputEncoding: String; // historical alias of .characterSet
		contentType: String;
		doctype: JDocumentType;
		documentElement: JElement;
		function getElementsByTagName(qualifiedName: String): JHTMLCollection;
		function getElementsByTagNameNS(&namespace: String; localName: String): JHTMLCollection;
		function getElementsByClassName(classNames: String): JHTMLCollection;
		function createElement(localName: String): JElement; overload; { NewObject }
		function createElement(localName: String; options: JElementCreationOptions): JElement; overload; { NewObject }
		function createElementNS(&namespace: String; qualifiedName: String): JElement; overload; { NewObject }
		function createElementNS(&namespace: String; qualifiedName: String; options: JElementCreationOptions): JElement; overload; { NewObject }
		function createDocumentFragment: JDocumentFragment; { NewObject }
		function createTextNode(data: String): JText; { NewObject }
		function createCDATASection(data: String): JCDATASection; { NewObject }
		function createComment(data: String): JComment; { NewObject }
		function createProcessingInstruction(target: String; data: String): JProcessingInstruction; { NewObject }
		function importNode(node: JNode; deep: Boolean = False): JNode; { CEReactions,NewObject }
		function adoptNode(node: JNode): JNode; { CEReactions }
		function createAttribute(localName: String): JAttr; { NewObject }
		function createAttributeNS(&namespace: String; qualifiedName: String): JAttr; { NewObject }
		function createEvent(&Interface: String): JEvent; { NewObject }
		function createRange: JRange; { NewObject }
		function createNodeIterator(root: JNode; filter: JNodeFilter): JNodeIterator; overload; { NewObject }
		function createNodeIterator(root: JNode; whatToShow: Integer; filter: JNodeFilter): JNodeIterator; overload; { NewObject }
		function createTreeWalker(root: JNode; filter: JNodeFilter): JTreeWalker; overload; { NewObject }
		function createTreeWalker(root: JNode; whatToShow: Integer; filter: JNodeFilter): JTreeWalker; overload; { NewObject }
	end;

	// Exposed=Window
	JDOMImplementation = class external 'DOMImplementation'
	public
		function createDocumentType(qualifiedName: String; publicId: String; systemId: String): JDocumentType; { NewObject }
		function createDocument(&namespace: String; qualifiedName: String { TreatNullAs=EmptyString } ; doctype: JDocumentType {TODO: = ...}): JXMLDocument; { NewObject }
		function createHTMLDocument: JDocument; overload; { NewObject }
		function createHTMLDocument(title: String): JDocument; overload; { NewObject }
		function hasFeature: Boolean;  // useless; always returns true
	end;