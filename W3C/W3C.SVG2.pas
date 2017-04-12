unit W3C.SVG2;

interface

uses
  W3C.DOM4, W3C.HTML5, W3C.CSSOM, W3C.Geometry, W3C.ShadowDOM,
  W3C.WebAnimations;

type
  JSVGAnimatedString = class external 'SVGAnimatedString'
  public
    baseVal: String;
    animVal: String;
  end;

  JSVGBoundingBoxOptions = class external 'SVGBoundingBoxOptions'
  public
    fill: Boolean;
    stroke: Boolean;
    markers: Boolean;
    clipped: Boolean;
  end;

  JSVGNumber = class external 'SVGNumber'
  public
    value: Float;
  end;

  JSVGLength = class external 'SVGLength'
  const
    SVG_LENGTHTYPE_UNKNOWN: Integer = 0;
    SVG_LENGTHTYPE_NUMBER: Integer = 1;
    SVG_LENGTHTYPE_PERCENTAGE: Integer = 2;
    SVG_LENGTHTYPE_EMS: Integer = 3;
    SVG_LENGTHTYPE_EXS: Integer = 4;
    SVG_LENGTHTYPE_PX: Integer = 5;
    SVG_LENGTHTYPE_CM: Integer = 6;
    SVG_LENGTHTYPE_MM: Integer = 7;
    SVG_LENGTHTYPE_IN: Integer = 8;
    SVG_LENGTHTYPE_PT: Integer = 9;
    SVG_LENGTHTYPE_PC: Integer = 10;
  public
    unitType: Integer;
    value: Float;
    valueInSpecifiedUnits: Float;
    valueAsString: String;
    procedure newValueSpecifiedUnits(unitType: Integer; valueInSpecifiedUnits: Float);
    procedure convertToSpecifiedUnits(unitType: Integer);
  end;

  JSVGAngle = class external 'SVGAngle'
  const
    SVG_ANGLETYPE_UNKNOWN: Integer = 0;
    SVG_ANGLETYPE_UNSPECIFIED: Integer = 1;
    SVG_ANGLETYPE_DEG: Integer = 2;
    SVG_ANGLETYPE_RAD: Integer = 3;
    SVG_ANGLETYPE_GRAD: Integer = 4;
  public
    unitType: Integer;
    value: Float;
    valueInSpecifiedUnits: Float;
    valueAsString: String;
    procedure newValueSpecifiedUnits(unitType: Integer; valueInSpecifiedUnits: Float);
    procedure convertToSpecifiedUnits(unitType: Integer);
  end;

  JSVGNumberList = class external 'SVGNumberList'
  private
    function getItem(Index: Integer): JSVGNumber; external array;
    procedure setItem(Index: Integer; newItem: JSVGNumber);
  public
    length: Integer;
    numberOfItems: Integer;
    procedure clear;
    function initialize(newItem: JSVGNumber): JSVGNumber;
    function insertItemBefore(newItem: JSVGNumber; &index: Integer): JSVGNumber;
    function replaceItem(newItem: JSVGNumber; &index: Integer): JSVGNumber;
    function removeItem(&index: Integer): JSVGNumber;
    function appendItem(newItem: JSVGNumber): JSVGNumber;

    property Item[Index: Integer]: JSVGNumber read getItem write setItem; default;
  end;

  JSVGLengthList = class external 'SVGLengthList'
  private
    function getItem(Index: Integer): JSVGLength; external array;
    procedure setItem(Index: Integer; newItem: JSVGLength);
  public
    length: Integer;
    numberOfItems: Integer;
    procedure clear;
    function initialize(newItem: JSVGLength): JSVGLength;
    function insertItemBefore(newItem: JSVGLength; &index: Integer): JSVGLength;
    function replaceItem(newItem: JSVGLength; &index: Integer): JSVGLength;
    function removeItem(&index: Integer): JSVGLength;
    function appendItem(newItem: JSVGLength): JSVGLength;

    property Item[Index: Integer]: JSVGLength read getItem write setItem; default;
  end;

  JSVGAnimatedBoolean = class external 'SVGAnimatedBoolean'
  public
    baseVal: Boolean;
    animVal: Boolean;
  end;

  JSVGAnimatedEnumeration = class external 'SVGAnimatedEnumeration'
  public
    baseVal: Integer;
    animVal: Integer;
  end;

  JSVGAnimatedInteger = class external 'SVGAnimatedInteger'
  public
    baseVal: Integer;
    animVal: Integer;
  end;

  JSVGAnimatedNumber = class external 'SVGAnimatedNumber'
  public
    baseVal: Float;
    animVal: Float;
  end;

  JSVGAnimatedLength = class external 'SVGAnimatedLength'
  public
    baseVal: JSVGLength; { SameObject }
    animVal: JSVGLength; { SameObject }
  end;

  JSVGAnimatedAngle = class external 'SVGAnimatedAngle'
  public
    baseVal: JSVGAngle; { SameObject }
    animVal: JSVGAngle; { SameObject }
  end;

  JSVGAnimatedRect = class external 'SVGAnimatedRect'
  public
    baseVal: JDOMRect; { SameObject }
    animVal: JDOMRectReadOnly; { SameObject }
  end;

  JSVGAnimatedNumberList = class external 'SVGAnimatedNumberList'
  public
    baseVal: JSVGNumberList; { SameObject }
    animVal: JSVGNumberList; { SameObject }
  end;

  JSVGAnimatedLengthList = class external 'SVGAnimatedLengthList'
  public
    baseVal: JSVGLengthList; { SameObject }
    animVal: JSVGLengthList; { SameObject }
  end;

  JSVGStringList = class external 'SVGStringList'
  private
    function getItem(Index: Integer): String; external array;
    procedure setItem(Index: Integer; newItem: String);
  public
    length: Integer;
    numberOfItems: Integer;
    procedure clear;
    function initialize(newItem: String): String;
    function insertItemBefore(newItem: String; &index: Integer): String;
    function replaceItem(newItem: String; &index: Integer): String;
    function removeItem(&index: Integer): String;
    function appendItem(newItem: String): String;

    property Item[Index: Integer]: String read getItem write setItem; default;
  end;

  JSVGUnitTypes = class external 'SVGUnitTypes'
  const
    SVG_UNIT_TYPE_UNKNOWN: Integer = 0;
    SVG_UNIT_TYPE_USERSPACEONUSE: Integer = 1;
    SVG_UNIT_TYPE_OBJECTBOUNDINGBOX: Integer = 2;
  end;

  // NoInterfaceObject
  JSVGZoomAndPan = class external 'SVGZoomAndPan'
  const
    SVG_ZOOMANDPAN_UNKNOWN: Integer = 0;
    SVG_ZOOMANDPAN_DISABLE: Integer = 1;
    SVG_ZOOMANDPAN_MAGNIFY: Integer = 2;
  public
    zoomAndPan: Integer;
  end;

  // NoInterfaceObject
  JSVGURIReference = class external 'SVGURIReference'
  public
    href: JSVGAnimatedString; { SameObject }
  end;

  // NoInterfaceObject
  JSVGTests = class external 'SVGTests'
  public
    requiredExtensions: JSVGStringList; { SameObject }
    systemLanguage: JSVGStringList; { SameObject }
  end;

  JSVGTransform = class external 'SVGTransform'
  const
    SVG_TRANSFORM_UNKNOWN: Integer = 0;
    SVG_TRANSFORM_MATRIX: Integer = 1;
    SVG_TRANSFORM_TRANSLATE: Integer = 2;
    SVG_TRANSFORM_SCALE: Integer = 3;
    SVG_TRANSFORM_ROTATE: Integer = 4;
    SVG_TRANSFORM_SKEWX: Integer = 5;
    SVG_TRANSFORM_SKEWY: Integer = 6;
  public
    &type: Integer;
    matrix: JDOMMatrix; { SameObject }
    angle: Float;
    procedure setMatrix(matrix: JDOMMatrixReadOnly);
    procedure setTranslate(tx: Float; ty: Float);
    procedure setScale(sx: Float; sy: Float);
    procedure setRotate(angle: Float; cx: Float; cy: Float);
    procedure setSkewX(angle: Float);
    procedure setSkewY(angle: Float);
  end;

  JSVGTransformList = class external 'SVGTransformList'
  private
    function getItem(Index: Integer): JSVGTransform; external array;
    procedure setItem(&index: Integer; newItem: JSVGTransform);
  public
    length: Integer;
    numberOfItems: Integer;
    procedure clear;
    function initialize(newItem: JSVGTransform): JSVGTransform;
    function insertItemBefore(newItem: JSVGTransform; &index: Integer): JSVGTransform;
    function replaceItem(newItem: JSVGTransform; &index: Integer): JSVGTransform;
    function removeItem(&index: Integer): JSVGTransform;
    function appendItem(newItem: JSVGTransform): JSVGTransform;
    function createSVGTransformFromMatrix(matrix: JDOMMatrixReadOnly): JSVGTransform;
    function consolidate: JSVGTransform;

    property Item[Index: Integer]: JSVGTransform read getItem write setItem; default;
  end;

  JSVGAnimatedTransformList = class external 'SVGAnimatedTransformList'
  public
    baseVal: JSVGTransformList; { SameObject }
    animVal: JSVGTransformList; { SameObject }
  end;

  JSVGPreserveAspectRatio = class external 'SVGPreserveAspectRatio'
  const
    SVG_PRESERVEASPECTRATIO_UNKNOWN: Integer = 0;
    SVG_PRESERVEASPECTRATIO_NONE: Integer = 1;
    SVG_PRESERVEASPECTRATIO_XMINYMIN: Integer = 2;
    SVG_PRESERVEASPECTRATIO_XMIDYMIN: Integer = 3;
    SVG_PRESERVEASPECTRATIO_XMAXYMIN: Integer = 4;
    SVG_PRESERVEASPECTRATIO_XMINYMID: Integer = 5;
    SVG_PRESERVEASPECTRATIO_XMIDYMID: Integer = 6;
    SVG_PRESERVEASPECTRATIO_XMAXYMID: Integer = 7;
    SVG_PRESERVEASPECTRATIO_XMINYMAX: Integer = 8;
    SVG_PRESERVEASPECTRATIO_XMIDYMAX: Integer = 9;
    SVG_PRESERVEASPECTRATIO_XMAXYMAX: Integer = 10;
    SVG_MEETORSLICE_UNKNOWN: Integer = 0;
    SVG_MEETORSLICE_MEET: Integer = 1;
    SVG_MEETORSLICE_SLICE: Integer = 2;
  public
    align: Integer;
    meetOrSlice: Integer;
  end;

  JSVGAnimatedPreserveAspectRatio = class external 'SVGAnimatedPreserveAspectRatio'
  public
    baseVal: JSVGPreserveAspectRatio; { SameObject }
    animVal: JSVGPreserveAspectRatio; { SameObject }
  end;

  JSVGElement = partial class external 'SVGElement' (JElement)
  public
    className: JSVGAnimatedString; { SameObject }
    dataset: array of String; { SameObject }
    viewportElement: JSVGElement;
    tabIndex: Integer;
    procedure focus;
    procedure blur;
  end;

  JSVGGraphicsElement = class external 'SVGGraphicsElement' (JSVGElement)
  public
    transform: JSVGAnimatedTransformList; { SameObject }
    function getBBox: JDOMRect; overload;
    function getBBox(options: JSVGBoundingBoxOptions): JDOMRect; overload;
    function getCTM: JDOMMatrix;
    function getScreenCTM: JDOMMatrix;
  end;

  JSVGGeometryElement = class external 'SVGGeometryElement' (JSVGGraphicsElement)
  public
    pathLength: JSVGAnimatedNumber; { SameObject }
    function isPointInFill(point: JDOMPoint): Boolean;
    function isPointInStroke(point: JDOMPoint): Boolean;
    function getTotalLength: Float;
    function getPointAtLength(distance: Float): JDOMPoint;
  end;

  // NoInterfaceObject
  JSVGFitToViewBox = class external 'SVGFitToViewBox'
  public
    viewBox: JSVGAnimatedRect; { SameObject }
    preserveAspectRatio: JSVGAnimatedPreserveAspectRatio; { SameObject }
  end;

  JSVGSVGElement = class external 'SVGSVGElement' (JSVGGraphicsElement)
  public
    x: JSVGAnimatedLength; { SameObject }
    y: JSVGAnimatedLength; { SameObject }
    width: JSVGAnimatedLength; { SameObject }
    height: JSVGAnimatedLength; { SameObject }
    currentScale: Float;
    currentTranslate: JDOMPointReadOnly; { SameObject }
    function getIntersectionList(rect: JDOMRectReadOnly; referenceElement: JSVGElement): JNodeList;
    function getEnclosureList(rect: JDOMRectReadOnly; referenceElement: JSVGElement): JNodeList;
    function checkIntersection(element: JSVGElement; rect: JDOMRectReadOnly): Boolean;
    function checkEnclosure(element: JSVGElement; rect: JDOMRectReadOnly): Boolean;
    procedure deselectAll;
    function createSVGNumber: JSVGNumber;
    function createSVGLength: JSVGLength;
    function createSVGAngle: JSVGAngle;
    function createSVGPoint: JDOMPoint;
    function createSVGMatrix: JDOMMatrix;
    function createSVGRect: JDOMRect;
    function createSVGTransform: JSVGTransform;
    function createSVGTransformFromMatrix(matrix: JDOMMatrixReadOnly): JSVGTransform;
    function getElementById(elementId: String): JElement;
    function suspendRedraw(maxWaitMilliseconds: Integer): Integer;
    procedure unsuspendRedraw(suspendHandleID: Integer);
    procedure unsuspendRedrawAll;
    procedure forceRedraw;
  end;

  JSVGElement = partial class external 'SVGElement' (JElement)
  public
    ownerSVGElement: JSVGSVGElement;
  end;

  JSVGGElement = class external 'SVGGElement' (JSVGGraphicsElement)
  end;

  JSVGUnknownElement = class external 'SVGUnknownElement' (JSVGGraphicsElement)
  end;

  JSVGDefsElement = class external 'SVGDefsElement' (JSVGGraphicsElement)
  end;

  JSVGDescElement = class external 'SVGDescElement' (JSVGElement)
  end;

  JSVGMetadataElement = class external 'SVGMetadataElement' (JSVGElement)
  end;

  JSVGTitleElement = class external 'SVGTitleElement' (JSVGElement)
  end;

  JSVGSymbolElement = class external 'SVGSymbolElement' (JSVGGraphicsElement)
  end;

  JSVGUseElement = class external 'SVGUseElement' (JSVGGraphicsElement)
  public
    x: JSVGAnimatedLength; { SameObject }
    y: JSVGAnimatedLength; { SameObject }
    width: JSVGAnimatedLength; { SameObject }
    height: JSVGAnimatedLength; { SameObject }
    instanceRoot: JSVGElement; { SameObject }
    animatedInstanceRoot: JSVGElement; { SameObject }
  end;

  // NoInterfaceObject
  JSVGElementInstance = class external 'SVGElementInstance'
  public
    correspondingElement: JSVGElement; { SameObject }
    correspondingUseElement: JSVGUseElement; { SameObject }
  end;

  JSVGSwitchElement = class external 'SVGSwitchElement' (JSVGGraphicsElement)
  end;

  JSVGStyleElement = class external 'SVGStyleElement' (JSVGElement)
  public
    &type: String;
    media: String;
    title: String;
  end;

  // NoInterfaceObject
  JGetSVGDocument = class external 'GetSVGDocument'
  public
    function getSVGDocument: JDocument;
  end;

  JSVGPathElement = class external 'SVGPathElement' (JSVGGeometryElement)
  end;

  JSVGRectElement = class external 'SVGRectElement' (JSVGGeometryElement)
  public
    x: JSVGAnimatedLength; { SameObject }
    y: JSVGAnimatedLength; { SameObject }
    width: JSVGAnimatedLength; { SameObject }
    height: JSVGAnimatedLength; { SameObject }
    rx: JSVGAnimatedLength; { SameObject }
    ry: JSVGAnimatedLength; { SameObject }
  end;

  JSVGCircleElement = class external 'SVGCircleElement' (JSVGGeometryElement)
  public
    cx: JSVGAnimatedLength; { SameObject }
    cy: JSVGAnimatedLength; { SameObject }
    r: JSVGAnimatedLength; { SameObject }
  end;

  JSVGEllipseElement = class external 'SVGEllipseElement' (JSVGGeometryElement)
  public
    cx: JSVGAnimatedLength; { SameObject }
    cy: JSVGAnimatedLength; { SameObject }
    rx: JSVGAnimatedLength; { SameObject }
    ry: JSVGAnimatedLength; { SameObject }
  end;

  JSVGLineElement = class external 'SVGLineElement' (JSVGGeometryElement)
  public
    x1: JSVGAnimatedLength; { SameObject }
    y1: JSVGAnimatedLength; { SameObject }
    x2: JSVGAnimatedLength; { SameObject }
    y2: JSVGAnimatedLength; { SameObject }
  end;

  JSVGMeshElement = class external 'SVGMeshElement' (JSVGGeometryElement)
  end;

  JSVGPointList = class external 'SVGPointList'
  private
    procedure setItem(&index: Integer; newItem: JDOMPoint);
    function getItem(&index: Integer): JDOMPoint; external array;
  public
    length: Integer;
    numberOfItems: Integer;
    procedure clear;
    function initialize(newItem: JDOMPoint): JDOMPoint;
    function insertItemBefore(newItem: JDOMPoint; &index: Integer): JDOMPoint;
    function replaceItem(newItem: JDOMPoint; &index: Integer): JDOMPoint;
    function removeItem(&index: Integer): JDOMPoint;
    function appendItem(newItem: JDOMPoint): JDOMPoint;

    property Item[Index: Integer]: JDOMPoint read getItem write setItem; default;
  end;

  // NoInterfaceObject
  JSVGAnimatedPoints = class external 'SVGAnimatedPoints'
  public
    points: JSVGPointList; { SameObject }
    animatedPoints: JSVGPointList; { SameObject }
  end;

  JSVGPolylineElement = class external 'SVGPolylineElement' (JSVGGeometryElement)
  end;

  JSVGPolygonElement = class external 'SVGPolygonElement' (JSVGGeometryElement)
  end;

  JSVGTextContentElement = class external 'SVGTextContentElement' (JSVGGraphicsElement)
  const
    LENGTHADJUST_UNKNOWN: Integer = 0;
    LENGTHADJUST_SPACING: Integer = 1;
    LENGTHADJUST_SPACINGANDGLYPHS: Integer = 2;
  public
    textLength: JSVGAnimatedLength; { SameObject }
    lengthAdjust: JSVGAnimatedEnumeration; { SameObject }
    function getNumberOfChars: Integer;
    function getComputedTextLength: Float;
    function getSubStringLength(charnum: Integer; nchars: Integer): Float;
    function getStartPositionOfChar(charnum: Integer): JDOMPoint;
    function getEndPositionOfChar(charnum: Integer): JDOMPoint;
    function getExtentOfChar(charnum: Integer): JDOMRect;
    function getRotationOfChar(charnum: Integer): Float;
    function getCharNumAtPosition(point: JDOMPoint): Integer;
    procedure selectSubString(charnum: Integer; nchars: Integer);
  end;

  JSVGTextPositioningElement = class external 'SVGTextPositioningElement' (JSVGTextContentElement)
  public
    x: JSVGAnimatedLengthList; { SameObject }
    y: JSVGAnimatedLengthList; { SameObject }
    dx: JSVGAnimatedLengthList; { SameObject }
    dy: JSVGAnimatedLengthList; { SameObject }
    rotate: JSVGAnimatedNumberList; { SameObject }
  end;

  JSVGTextElement = class external 'SVGTextElement' (JSVGTextPositioningElement)
  end;

  JSVGTSpanElement = class external 'SVGTSpanElement' (JSVGTextPositioningElement)
  end;

  JSVGTextPathElement = class external 'SVGTextPathElement' (JSVGTextContentElement)
  const
    TEXTPATH_METHODTYPE_UNKNOWN: Integer = 0;
    TEXTPATH_METHODTYPE_ALIGN: Integer = 1;
    TEXTPATH_METHODTYPE_STRETCH: Integer = 2;
    TEXTPATH_SPACINGTYPE_UNKNOWN: Integer = 0;
    TEXTPATH_SPACINGTYPE_AUTO: Integer = 1;
    TEXTPATH_SPACINGTYPE_EXACT: Integer = 2;
  public
    startOffset: JSVGAnimatedLength; { SameObject }
    &method: JSVGAnimatedEnumeration; { SameObject }
    spacing: JSVGAnimatedEnumeration; { SameObject }
  end;

  JSVGImageElement = class external 'SVGImageElement' (JSVGGraphicsElement)
  public
    x: JSVGAnimatedLength; { SameObject }
    y: JSVGAnimatedLength; { SameObject }
    width: JSVGAnimatedLength; { SameObject }
    height: JSVGAnimatedLength; { SameObject }
    preserveAspectRatio: JSVGAnimatedPreserveAspectRatio; { SameObject }
    crossOrigin: String;
  end;

  JSVGForeignObjectElement = class external 'SVGForeignObjectElement' (JSVGGraphicsElement)
  public
    x: JSVGAnimatedLength; { SameObject }
    y: JSVGAnimatedLength; { SameObject }
    width: JSVGAnimatedLength; { SameObject }
    height: JSVGAnimatedLength; { SameObject }
  end;

  JSVGMarkerElement = class external 'SVGMarkerElement' (JSVGElement)
  const
    SVG_MARKERUNITS_UNKNOWN: Integer = 0;
    SVG_MARKERUNITS_USERSPACEONUSE: Integer = 1;
    SVG_MARKERUNITS_STROKEWIDTH: Integer = 2;
    SVG_MARKER_ORIENT_UNKNOWN: Integer = 0;
    SVG_MARKER_ORIENT_AUTO: Integer = 1;
    SVG_MARKER_ORIENT_ANGLE: Integer = 2;
  public
    refX: JSVGAnimatedLength; { SameObject }
    refY: JSVGAnimatedLength; { SameObject }
    markerUnits: JSVGAnimatedEnumeration; { SameObject }
    markerWidth: JSVGAnimatedLength; { SameObject }
    markerHeight: JSVGAnimatedLength; { SameObject }
    orientType: JSVGAnimatedEnumeration; { SameObject }
    orientAngle: JSVGAnimatedAngle; { SameObject }
    orient: String;
    procedure setOrientToAuto;
    procedure setOrientToAngle(angle: JSVGAngle);
  end;

  JSVGSolidcolorElement = class external 'SVGSolidcolorElement' (JSVGElement)
  end;

  JSVGGradientElement = class external 'SVGGradientElement' (JSVGElement)
  const
    SVG_SPREADMETHOD_UNKNOWN: Integer = 0;
    SVG_SPREADMETHOD_PAD: Integer = 1;
    SVG_SPREADMETHOD_REFLECT: Integer = 2;
    SVG_SPREADMETHOD_REPEAT: Integer = 3;
  public
    gradientUnits: JSVGAnimatedEnumeration; { SameObject }
    gradientTransform: JSVGAnimatedTransformList; { SameObject }
    spreadMethod: JSVGAnimatedEnumeration; { SameObject }
  end;

  JSVGLinearGradientElement = class external 'SVGLinearGradientElement' (JSVGGradientElement)
  public
    x1: JSVGAnimatedLength; { SameObject }
    y1: JSVGAnimatedLength; { SameObject }
    x2: JSVGAnimatedLength; { SameObject }
    y2: JSVGAnimatedLength; { SameObject }
  end;

  JSVGRadialGradientElement = class external 'SVGRadialGradientElement' (JSVGGradientElement)
  public
    cx: JSVGAnimatedLength; { SameObject }
    cy: JSVGAnimatedLength; { SameObject }
    r: JSVGAnimatedLength; { SameObject }
    fx: JSVGAnimatedLength; { SameObject }
    fy: JSVGAnimatedLength; { SameObject }
    fr: JSVGAnimatedLength; { SameObject }
  end;

  JSVGMeshGradientElement = class external 'SVGMeshGradientElement' (JSVGGradientElement)
  end;

  JSVGMeshrowElement = class external 'SVGMeshrowElement' (JSVGElement)
  end;

  JSVGMeshpatchElement = class external 'SVGMeshpatchElement' (JSVGElement)
  end;

  JSVGStopElement = class external 'SVGStopElement' (JSVGElement)
  public
    offset: JSVGAnimatedNumber; { SameObject }
  end;

  JSVGPatternElement = class external 'SVGPatternElement' (JSVGElement)
  public
    patternUnits: JSVGAnimatedEnumeration; { SameObject }
    patternContentUnits: JSVGAnimatedEnumeration; { SameObject }
    patternTransform: JSVGAnimatedTransformList; { SameObject }
    x: JSVGAnimatedLength; { SameObject }
    y: JSVGAnimatedLength; { SameObject }
    width: JSVGAnimatedLength; { SameObject }
    height: JSVGAnimatedLength; { SameObject }
  end;

  JSVGHatchElement = class external 'SVGHatchElement' (JSVGElement)
  end;

  JSVGHatchpathElement = class external 'SVGHatchpathElement' (JSVGElement)
  end;

  JSVGCursorElement = class external 'SVGCursorElement' (JSVGElement)
  public
    x: JSVGAnimatedLength; { SameObject }
    y: JSVGAnimatedLength; { SameObject }
  end;

  JSVGScriptElement = class external 'SVGScriptElement' (JSVGElement)
  public
    &type: String;
    crossOrigin: String;
  end;

  JSVGAElement = class external 'SVGAElement' (JSVGGraphicsElement)
  public
    target: JSVGAnimatedString; { SameObject }
    download: JSVGAnimatedString; { SameObject }
    rel: JSVGAnimatedString; { SameObject }
    relList: JSVGAnimatedString; { SameObject }
    hreflang: JSVGAnimatedString; { SameObject }
    &type: JSVGAnimatedString; { SameObject }
  end;

  JSVGViewElement = class external 'SVGViewElement' (JSVGElement)
  end;

  JSVGUseElementShadowRoot = class external 'SVGUseElementShadowRoot' (JShadowRoot)
  end;

  // Constructor( Animation source , Animatable newTarget)
  JShadowAnimation = class external 'ShadowAnimation' (JAnimation)
  public
    sourceAnimation: JAnimation; { SameObject }
  end;

  JDocument = partial class external 'Document'
  public
    rootElement: JSVGSVGElement;
  end;

