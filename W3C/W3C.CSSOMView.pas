unit W3C.CSSOMView;

interface

uses
  W3C.DOM4, W3C.HTML5, W3C.Geometry, W3C.UIEvents;

type
  JScrollBehavior = String;
  JScrollBehaviorHelper = strict helper for JScrollBehavior
    const Auto = 'auto';
    const Instant = 'instant';
    const Smooth = 'smooth';
  end;

  JScrollOptions = class external 'ScrollOptions'
  public
    behavior: JScrollBehavior;
  end;

  JScrollToOptions = class external 'ScrollToOptions'
  public
    left: Float;
    top: Float;
  end;

  JScreen = class external 'Screen'
  public
    availWidth: Integer;
    availHeight: Integer;
    width: Integer;
    height: Integer;
    colorDepth: Integer;
    pixelDepth: Integer;
  end;

  JMediaQueryList = class external 'MediaQueryList' (JEventTarget)
  public
    media: String;
    matches: Boolean;
    onchange: TEventHandler;
    procedure addListener(listener: JEventListener);
    procedure removeListener(listener: JEventListener);
  end;

  JMediaQueryListEventInit = class external 'MediaQueryListEventInit' (JEventInit)
  public
    media: String;
    matches: Boolean;
  end;

  JMediaQueryListEvent = class external 'MediaQueryListEvent' (JEvent)
  public
    media: String;
    matches: Boolean;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JMediaQueryListEventInit); overload;
  end;

  JCaretPosition = class external 'CaretPosition'
  public
    offsetNode: JNode;
    offset: Integer;
    function getClientRect: JDOMRect; { NewObject }
  end;

  JDocument = partial class external 'Document'
  public
    scrollingElement: JElement;
    function elementFromPoint(x: Float; y: Float): JElement;
    function elementsFromPoint(x: Float; y: Float): array of JElement;
    function caretPositionFromPoint(x: Float; y: Float): JCaretPosition;
  end;

  JScrollLogicalPosition = String;
  JScrollLogicalPositionHelper = strict helper for JScrollLogicalPosition 
     const Start = 'start';
     const Center = 'center';
     const &End = 'end';
     const Nearest = 'nearest';
  end;

  JScrollIntoViewOptions = class external 'ScrollIntoViewOptions'
  public
    block: JScrollLogicalPosition;
    &inline: JScrollLogicalPosition;
  end;

  JElement = partial class external 'Element'
  public
    scrollTop: Float;
    scrollLeft: Float;
    scrollWidth: Integer;
    scrollHeight: Integer;
    clientTop: Integer;
    clientLeft: Integer;
    clientWidth: Integer;
    clientHeight: Integer;
    function getClientRects: array of JDOMRect;
    function getBoundingClientRect: JDOMRect; { NewObject }
    procedure scrollIntoView; overload;
    procedure scrollIntoView(arg: Variant {TODO}); overload;
    procedure scroll; overload;
    procedure scroll(options: JScrollToOptions); overload;
    procedure scroll(x, y: Float); overload;
    procedure scrollTo; overload;
    procedure scrollTo(options: JScrollToOptions); overload;
    procedure scrollTo(x, y: Float); overload;
    procedure scrollBy; overload;
    procedure scrollBy(options: JScrollToOptions); overload;
    procedure scrollBy(x, y: Float); overload;
  end;

  JHTMLElement = partial class external 'HTMLElement'
  public
    offsetParent: JElement;
    offsetTop: Integer;
    offsetLeft: Integer;
    offsetWidth: Integer;
    offsetHeight: Integer;
  end;

  JHTMLImageElement = partial class external 'HTMLImageElement'
  public
    x: Integer;
    y: Integer;
  end;

  JRange = partial class external 'Range'
  public
    function getClientRects: array of JDOMRect;
    function getBoundingClientRect: JDOMRect; { NewObject }
  end;

  JMouseEvent = partial class external 'MouseEvent'
  public
    pageX: Float;
    pageY: Float;
    x: Float;
    y: Float;
    offsetX: Float;
    offsetY: Float;
  end;

  JMouseEventInit = class external 'MouseEventInit'
  public
    screenX: Float;
    screenY: Float;
    clientX: Float;
    clientY: Float;
  end;

  JCSSBoxType = String;
  JCSSBoxTypeHelper = strict helper for JCSSBoxType
    const Margin = 'margin';
    const Border = 'border';
    const Padding = 'padding';
    const Content = 'content';
  end;

  TGeometryNode = Variant; // TODO

  JBoxQuadOptions = class external 'BoxQuadOptions'
  public
    box: JCSSBoxType;
    relativeTo: TGeometryNode;
  end;

  JConvertCoordinateOptions = class external 'ConvertCoordinateOptions'
  public
    fromBox: JCSSBoxType;
    toBox: JCSSBoxType;
  end;

  // NoInterfaceObject
  JGeometryUtils = class external 'GeometryUtils'
  public
    function getBoxQuads: array of JDOMQuad; overload;
    function getBoxQuads(options: JBoxQuadOptions): array of JDOMQuad; overload;
    function convertQuadFromNode(quad: JDOMQuadInit; from: TGeometryNode): JDOMQuad; overload;
    function convertQuadFromNode(quad: JDOMQuadInit; from: TGeometryNode; options: JConvertCoordinateOptions): JDOMQuad; overload;
    function convertRectFromNode(rect: JDOMRectReadOnly; from: TGeometryNode): JDOMQuad; overload;
    function convertRectFromNode(rect: JDOMRectReadOnly; from: TGeometryNode; options: JConvertCoordinateOptions): JDOMQuad; overload;
    function convertPointFromNode(point: JDOMPointInit; from: TGeometryNode): JDOMPoint; overload;
    function convertPointFromNode(point: JDOMPointInit; from: TGeometryNode; options: JConvertCoordinateOptions): JDOMPoint; overload;
  end;

  JWindow = partial class external 'Window'
  public
    screen: JScreen; { SameObject,Replaceable }
    innerWidth: Integer; { Replaceable }
    innerHeight: Integer; { Replaceable }
    scrollX: Float; { Replaceable }
    pageXOffset: Float; { Replaceable }
    scrollY: Float; { Replaceable }
    pageYOffset: Float; { Replaceable }
    screenX: Integer; { Replaceable }
    screenY: Integer; { Replaceable }
    outerWidth: Integer; { Replaceable }
    outerHeight: Integer; { Replaceable }
    devicePixelRatio: Float; { Replaceable }
    function matchMedia(query: String): JMediaQueryList; { NewObject }
    procedure moveTo(x: Integer; y: Integer);
    procedure moveBy(x: Integer; y: Integer);
    procedure resizeTo(x: Integer; y: Integer);
    procedure resizeBy(x: Integer; y: Integer);
    procedure scroll; overload;
    procedure scroll(options: JScrollToOptions); overload;
    procedure scroll(x, y: Float); overload;
    procedure scrollTo; overload;
    procedure scrollTo(options: JScrollToOptions); overload;
    procedure scrollTo(x, y: Float); overload;
    procedure scrollBy; overload;
    procedure scrollBy(options: JScrollToOptions); overload;
    procedure scrollBy(x, y: Float); overload;
  end;