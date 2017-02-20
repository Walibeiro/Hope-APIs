unit W3C.Canvas2DContext;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.HTML5, W3C.UIEvents;

type
  // NoInterfaceObject,Exposed=Window,Worker
  JCanvasPathMethods = class external 'CanvasPathMethods'
  public
    procedure closePath;
    procedure moveTo(x, y: Float);
    procedure lineTo(x, y: Float);
    procedure quadraticCurveTo(cpx, cpy, x, y: Float);
    procedure bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y: Float);
    procedure arcTo(x1, y1, x2, y2, radius: Float); overload;
    procedure arcTo(x1, y1, x2, y2, radiusX, radiusY, rotation: Float); overload;
    procedure rect(x, y, w, h: Float);
    procedure arc(x, y, radius, startAngle, endAngle: Float; anticlockwise: Boolean = False);
    procedure ellipse(x, y, radiusX, radiusY, rotation, startAngle, endAngle: Float; anticlockwise: Boolean = False);
  end;

  // Exposed=Window,Worker
  JCanvasGradient = class external 'CanvasGradient'
  public
    // opaque object
    procedure addColorStop(offset: Float; color: String);
  end;

  // Exposed=Window,Worker
  JCanvasPattern = class external 'CanvasPattern'
  public
    // opaque object
// TODO   procedure setTransform(transform: JSVGMatrix);
  end;

  // Exposed=Window,Worker
  JTextMetrics = class external 'TextMetrics'
  public
    // x-direction
    width: Float; // advance width
    actualBoundingBoxLeft: Float;
    actualBoundingBoxRight: Float;

    // y-direction
    fontBoundingBoxAscent: Float;
    fontBoundingBoxDescent: Float;
    actualBoundingBoxAscent: Float;
    actualBoundingBoxDescent: Float;
    emHeightAscent: Float;
    emHeightDescent: Float;
    hangingBaseline: Float;
    alphabeticBaseline: Float;
    ideographicBaseline: Float;
  end;

  TLineCap = String;
  TLineCapHelper = strict helper for TLineCap
    const Butt = 'butt';
    const Round = 'round';
    const Square = 'square';
  end;

  TLineJoin = String;
  TLineJoinHelper = strict helper for TLineJoin
    const Round = 'round';
    const Bevel = 'bevel';
    const Miter = 'miter';
  end;

  TTextAlign = String;
  TTextAlignHelper = strict helper for TTextAlign
    const Start = 'start';
    const &End = 'end';
    const Left = 'left';
    const Right = 'right';
    const Center = 'center';
  end;

  TTextBaseline = String;
  TTextBaselineHelper = strict helper for TTextBaseline
    const Top = 'top';
    const Hanging = 'hanging';
    const Middle = 'middle';
    const Alphabetic = 'alphabetic';
    const Ideographic = 'ideographic';
    const Bottom = 'bottom';
  end;

  TTextDirection = String;
  TTextDirectionHelper = strict helper for TTextDirection
    const LeftToRight = 'ltr';
    const RightToLeft = 'rtl';
    const Inherit = 'inherit';
  end;

  // NoInterfaceObject,Exposed=Window,Worker
  JCanvasDrawingStyles = class external 'CanvasDrawingStyles'
  public
    // line caps/joins
    lineWidth: Float; // (default 1)
    lineCap: TLineCap; // "butt", "round", "square" (default "butt")
    lineJoin: TLineJoin; // "round", "bevel", "miter" (default "miter")
    miterLimit: Float; // (default 10)

    // dashed lines
    procedure setLineDash(segments: array of Float); // default empty
    function getLineDash: array of Float;
    lineDashOffset: Float; // (default 0.0)

    // text
    font: String; // (default 10px sans-serif)
    textAlign: TTextAlign; // "start", "end", "left", "right", "center" (default: "start")
    textBaseline: TTextBaseline; // "top", "hanging", "middle", "alphabetic", "ideographic", "bottom" (default: "alphabetic")
    direction: TTextDirection; // "ltr", "rtl", "inherit" (default: "inherit")
  end;

  TCanvasFillRule = String;
  TCanvasFillRuleHelper = strict helper for TCanvasFillRule
    const NonZero = 'nonzero';
    const EvenOdd = 'evenodd';
  end;

  // Exposed=Window,Worker
  JPath2D = class external 'Path2D'
  public
    procedure addPath(path: JPath2D); overload;
// TODO    procedure addPath(path: JPath2D; transformation: JSVGMatrix); overload;
    procedure addPathByStrokingPath(path: JPath2D; styles: JCanvasDrawingStyles); overload;
// TODO    procedure addPathByStrokingPath(path: JPath2D; styles: JCanvasDrawingStyles; transformation: JSVGMatrix); overload;
// TODO    procedure addText(text: String; styles: JCanvasDrawingStyles; transformation: JSVGMatrix; x: Float; y: Float); overload;
// TODO    procedure addText(text: String; styles: JCanvasDrawingStyles; transformation: JSVGMatrix; x: Float; y: Float; maxWidth: Float); overload;
// TODO    procedure addPathByStrokingText(text: String; styles: JCanvasDrawingStyles; transformation: JSVGMatrix; x: Float; y: Float); overload;
// TODO    procedure addPathByStrokingText(text: String; styles: JCanvasDrawingStyles; transformation: JSVGMatrix; x: Float; y: Float; maxWidth: Float); overload;
// TODO    procedure addText(text: String; styles: JCanvasDrawingStyles; transformation: JSVGMatrix; path: JPath2D); overload;
// TODO    procedure addText(text: String; styles: JCanvasDrawingStyles; transformation: JSVGMatrix; path: JPath2D; maxWidth: Float); overload;
// TODO    procedure addPathByStrokingText(text: String; styles: JCanvasDrawingStyles; transformation: JSVGMatrix; path: JPath2D); overload;
// TODO    procedure addPathByStrokingText(text: String; styles: JCanvasDrawingStyles; transformation: JSVGMatrix; path: JPath2D; maxWidth: Float); overload;

    constructor Create; overload;
    constructor Create(path: JPath2D); overload;
    constructor Create(paths: array of JPath2D; FillRule: TCanvasFillRule = TCanvasFillRule.NonZero); overload;
    constructor Create(d: string); overload;
  end;

  JHitRegionOptions = class external 'HitRegionOptions'
  public
    path: JPath2D;
    fillRule: TCanvasFillRule;
    id: String;
    parentID: String;
    cursor: String;
    control: JElement;
    label: String;
    role: String;
  end;

  JImageData = class external 'ImageData'
  public
    width: Integer; // read only
    height: Integer; // read only
    data: JUint8ClampedArray; // read only
    constructor Create(sw, sh: Integer); overload;
    constructor Create(data: JUint8ClampedArray; sw: Integer); overload;
    constructor Create(data: JUint8ClampedArray; sw, sh: Integer); overload;
  end;

  // Exposed=Window,Worker
  JDrawingStyle = class external 'DrawingStyle'
    constructor Create(scope: JElement);
  end;

  JMouseEvent = partial class external 'MouseEvent'
  public
    region: String;
  end;

  JMouseEventInit = class external 'MouseEventInit'
  public
    region: String;
  end;

  JTouch = partial class external 'Touch'
  public
    region: String;
  end;

  JCanvasPatternRepetition = String;
  JCanvasPatternRepetitionHelper = strict helper for JCanvasPatternRepetition
    const Default = 'repeat';
    const RepeatX = 'repeat-x';
    const RepeatY = 'repeat-y';
    const NoRepeat = 'no-repeat';
  end;


  // Exposed=Window,Worker
  JCanvasRenderingContext2D = class external 'CanvasRenderingContext2D' (JRenderingContext)
  public
    // back-reference to the canvas
    canvas: JHTMLCanvasElement; // read only

    // for contexts that aren't directly fixed to a specific canvas
    procedure commit; // push the image to the output bitmap

    // state
    procedure save; // push state on state stack
    procedure restore; // pop state stack and restore state

    // transformations (default transform is the identity matrix)
// TODO    currentTransformation: JSVGMatrix;
    procedure scale(x, y: Float);
    procedure rotate(angle: Float);
    procedure translate(x, y: Float);
    procedure transform(a, b, c, d, e, f: Float);
    procedure setTransform(a, b, c, d, e, f: Float);
    procedure resetTransform;

    // compositing
    globalAlpha: Float; // (default 1.0)
    globalCompositeOperation: String; // (default source-over)

    // image smoothing
    imageSmoothingEnabled: Boolean; // (default true)

    // colors and styles (see also the CanvasLineStyles interface)
    strokeStyle: Variant; // (default black)
    fillStyle: Variant; // (default black)
    function createLinearGradient(x0, y0, x1, y1: Float): JCanvasGradient;
    function createRadialGradient(x0, y0, r0, x1, y1, r1: Float): JCanvasGradient;
    function createPattern(Image: JHTMLImageElement): JCanvasPattern; overload;
    function createPattern(Canvas: JHTMLCanvasElement): JCanvasPattern; overload;
    function createPattern(Video: JHTMLVideoElement): JCanvasPattern; overload;
    function createPattern(Image: JHTMLImageElement; repetition: JCanvasPatternRepetition): JCanvasPattern; overload;
    function createPattern(Canvas: JHTMLCanvasElement; repetition: JCanvasPatternRepetition): JCanvasPattern; overload;
    function createPattern(Video: JHTMLVideoElement; repetition: JCanvasPatternRepetition): JCanvasPattern; overload;

    // shadows
    shadowOffsetX: Float; // (default 0)
    shadowOffsetY: Float; // (default 0)
    shadowBlur: Float; // (default 0)
    shadowColor: String; // (default transparent black)
    procedure clearShadow; // webkit-specific

    // rects
    procedure clearRect(x, y, w, h: Float);
    procedure fillRect(x, y, w, h: Float);
    procedure strokeRect(x, y, w, h: Float);

    // path API (see also CanvasPathMethods)
    procedure beginPath;
    procedure fill; overload;
    procedure fill(fillRule: TCanvasFillRule); overload;
    procedure fill(fillRule: Variant); overload;
    procedure fill(path: JPath2D); overload;
    procedure stroke; overload;
    procedure stroke(path: JPath2D); overload;

    procedure drawFocusIfNeeded(element: JElement); overload;
    procedure drawFocusIfNeeded(path: JPath2D; element: JElement); overload;

    function drawCustomFocusRing(element: JElement): Boolean; overload;
    function drawCustomFocusRing(path: JPath2D; element: JElement): Boolean; overload;
    procedure scrollPathIntoView; overload;
    procedure scrollPathIntoView(path: JPath2D); overload;
    procedure clip; overload;
    procedure clip(fillRule: TCanvasFillRule); overload;
    procedure clip(path: JPath2D); overload;
    procedure clip(path: JPath2D; fillRule: TCanvasFillRule); overload;
    procedure resetClip;
    function isPointInPath(x, y: Float): Boolean; overload;
    function isPointInPath(x, y: Float; fillRule: TCanvasFillRule): Boolean; overload;
    function isPointInPath(path: JPath2D; x, y: Float): Boolean;  overload;
    function isPointInPath(path: JPath2D; x, y: Float; fillRule: TCanvasFillRule): Boolean;  overload;
    function isPointInStroke(x, y: Float): Boolean; overload;
    function isPointInStroke(path: JPath2D; x, y: Float): Boolean;  overload;

    // text (see also the CanvasDrawingStyles interface)
    procedure fillText(text: String; x: Float; y: Float); overload;
    procedure fillText(text: String; x: Float; y: Float; maxWidth: Float); overload;
    procedure strokeText(text: String; x: Float; y: Float); overload;
    procedure strokeText(text: String; x: Float; y: Float; maxWidth: Float); overload;
    function measureText(text: String): JTextMetrics;

    // drawing images
    procedure drawImage(image: JElement; dx, dy: Float); overload;
    procedure drawImage(image: JElement; dx, dy, dw, dh: Float); overload;
    procedure drawImage(image: JElement; sx, sy, sw, sh, dx, dy, dw, dh: Float); overload;

    // hit regions
    procedure addHitRegion; overload;
    procedure addHitRegion(options: JHitRegionOptions); overload;
    procedure removeHitRegion(id: String);
    procedure clearHitRegions;

    // pixel manipulation
    function createImageData(sw, sh: Float): JImageData; overload;
    function createImageData(imagedata: JImageData): JImageData; overload;
    function getImageData(sx: Float; sy: Float; sw: Float; sh: Float): JImageData;
    procedure putImageData(imagedata: JImageData; dx, dy: Float); overload;
    procedure putImageData(imagedata: JImageData; dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight: Float); overload;

    // line caps/joins
    lineWidth: Float; // (default 1)
    lineCap: TLineCap; // "butt", "round", "square" (default "butt")
    lineJoin: TLineJoin; // "round", "bevel", "miter" (default "miter")
    miterLimit: Float; // (default 10)

    // dashed lines
    procedure setLineDash(segments: array of Float); // default empty
    function getLineDash: array of Float;
    lineDashOffset: Float; // (default 0.0)

    // text
    font: String; // (default 10px sans-serif)
    textAlign: TTextAlign; // "start", "end", "left", "right", "center" (default: "start")
    textBaseline: TTextBaseline; // "top", "hanging", "middle", "alphabetic", "ideographic", "bottom" (default: "alphabetic")
    direction: TTextDirection; // "ltr", "rtl", "inherit" (default: "inherit")

    // CanvasPathMethods
    procedure closePath;
    procedure moveTo(x, y: Float);
    procedure lineTo(x, y: Float);
    procedure quadraticCurveTo(cpx, cpy, x, y: Float);
    procedure bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y: Float);
    procedure arcTo(x1, y1, x2, y2, radius: Float); overload;
    procedure arcTo(x1, y1, x2, y2, radiusX, radiusY, rotation: Float); overload;
    procedure rect(x, y, w, h: Float);
    procedure arc(x, y, radius, startAngle, endAngle: Float; anticlockwise: Boolean = False);
    procedure ellipse(x, y, radiusX, radiusY, rotation, startAngle, endAngle: Float; anticlockwise: Boolean = False);

    constructor Create; overload;
    constructor Create(width, height: Integer); overload;
  end;
