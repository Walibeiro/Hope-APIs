unit W3C.ShadowDOM;

interface

uses
  W3C.DOM4, W3C.Html5, W3C.CSSOM;

type
	JShadowRootMode = String;
  JShadowRootModeHelper = strict helper for JShadowRootMode
    const Open = 'open';
    const Closed = 'closed';
  end;

	JShadowRootInit = class external 'ShadowRootInit'
	public
		mode: JShadowRootMode;
		delegatesFocus: Boolean;
	end;

	JDocumentOrShadowRoot = partial class external 'DocumentOrShadowRoot'
	public
		activeElement: JElement;
		styleSheets: JStyleSheetList;
// TODO		function getSelection: JSelection;
		function elementFromPoint(x, y: Float): JElement;
		function elementsFromPoint(x, y: Float): array of JElement;
// TODO		function caretPositionFromPoint(x, y: Float): JCaretPosition;
	end;

	JShadowRoot = class external 'ShadowRoot' (JDocumentFragment)
	public
		host: JElement;
		innerHTML: String; { TreatNullAs=EmptyString } 
	end;

	JAssignedNodesOptions = class external 'AssignedNodesOptions'
	public
		flatten: Boolean;
	end;

	JHTMLSlotElement = class external 'HTMLSlotElement' (JHTMLElement)
	public
		name: String;
		function assignedNodes: array of JNode; overload;
		function assignedNodes(options: JAssignedNodesOptions): array of JNode; overload;
	end;

	JElement = partial class external 'Element'
	public
		assignedSlot: JHTMLSlotElement;
		slot: String;
		shadowRoot: JShadowRoot;
		function attachShadow(shadowRootInitDict: JShadowRootInit): JShadowRoot;
	end;

  JText = partial class external 'Text' (JCharacterData)
	public
		assignedSlot: JHTMLSlotElement;
	end;

	JEventInit = class external 'EventInit'
	public
		scoped: Boolean;
	end;

	JEvent = partial class external 'Event'
	public
		scoped: Boolean;
		function deepPath: array of JEventTarget;
	end;