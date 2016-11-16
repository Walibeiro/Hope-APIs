unit W3C.Canvas2DContext;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.HTML5;

type
  TCanvasImageSource = Variant;  //TODO

  // NoInterfaceObject
  JCanvasDrawingStyles = class external 'CanvasDrawingStyles'
  public
    lineWidth: Float;
    lineCap: String;
    lineJoin: String;
    miterLimit: Float;
    lineDashOffset: Float;
    font: String;
    textAlign: String;
    textBaseline: String;
    procedure setLineDash(segments: array of Float);
    function getLineDash: array of Float;
  end;

  // NoInterfaceObject
  JCanvasPathMethods = class external 'CanvasPathMethods'
  public
    procedure closePath;
    procedure moveTo(x, y: Float);
    procedure lineTo(x, y: Float);
    procedure quadraticCurveTo(cpx, cpy, x, y: Float);
    procedure bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y: Float);
    procedure arcTo(x1, y1, x2, y2, radius: Float);
    procedure rect(x, y, w, h: Float);
    procedure arc(x, y, radius, startAngle, endAngle: Float; counterclockwise: Boolean = False);
  end;

  JCanvasGradient = class external 'CanvasGradient'
  public
    procedure addColorStop(offset: Float; color: String);
  end;

  JCanvasPattern = class external 'CanvasPattern'
  end;

  JTextMetrics = class external 'TextMetrics'
  public
    width: Float;
  end;

  JHitRegionOptions = class external 'HitRegionOptions'
  public
    id: String;
    control: JElement;
  end;

  JImageData = class external 'ImageData'
  public
    width: Integer;
    height: Integer;
    data: JUint8ClampedArray;
  end;

  JMouseEvent = partial class external 'MouseEvent'
  public
    region: String;
  end;

  JMouseEventInit = class external 'MouseEventInit'
  public
    region: String;
  end;

  JCanvasRenderingContext2D = class external 'CanvasRenderingContext2D'
  public
    canvas: JHTMLCanvasElement;
    globalAlpha: Float;
    globalCompositeOperation: String;
    strokeStyle: Variant;
    fillStyle: Variant;
    shadowOffsetX: Float;
    shadowOffsetY: Float;
    shadowBlur: Float;
    shadowColor: String;
    procedure save;
    procedure restore;
    procedure scale(x, y: Float);
    procedure rotate(angle: Float);
    procedure translate(x, y: Float);
    procedure transform(a, b, c, d, e, f: Float);
    procedure setTransform(a, b, c, d, e, f: Float);
    function createLinearGradient(x0, y0, x1, y1: Float): JCanvasGradient;
    function createRadialGradient(x0, y0, r0, x1, y1, r1: Float): JCanvasGradient;
    function createPattern(image: TCanvasImageSource; repetition: String { TreatNullAs=EmptyString } ): JCanvasPattern;
    procedure clearRect(x, y, w, h: Float);
    procedure fillRect(x, y, w, h: Float);
    procedure strokeRect(x, y, w, h: Float);
    procedure beginPath;
    procedure fill;
    procedure stroke;
    procedure drawFocusIfNeeded(element: JElement);
    procedure clip;
    function isPointInPath(x, y: Float): Boolean;
    procedure fillText(text: String; x, y: Float); overload;
    procedure fillText(text: String; x, y, maxWidth: Float); overload;
    procedure strokeText(text: String; x, y: Float); overload;
    procedure strokeText(text: String; x, y, maxWidth: Float); overload;
    function measureText(text: String): JTextMetrics;
    procedure drawImage(image: TCanvasImageSource; dx, dy: Float); overload;
    procedure drawImage(image: TCanvasImageSource; dx, dy, dw, dh: Float); overload;
    procedure drawImage(image: TCanvasImageSource; sx, sy, sw, sh, dx, dy, dw, dh: Float); overload;
    procedure addHitRegion(options: JHitRegionOptions);
    procedure removeHitRegion(id: String);
    procedure clearHitRegions;
    function createImageData(sw, sh: Float): JImageData; overload;
    function createImageData(imagedata: JImageData): JImageData; overload;
    function getImageData(sx, sy, sw, sh: Float): JImageData;
    procedure putImageData(imagedata: JImageData; dx, dy: Float); overload;
    procedure putImageData(imagedata: JImageData; dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight: Float); overload;
  end;