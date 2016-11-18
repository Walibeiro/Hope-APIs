unit Mozilla.CanvasRenderingContext2D;

interface

type
  JCanvasWindingRule = (cwrNonzero, cwrEvenodd);

  JContextAttributes2D = class external 'ContextAttributes2D'
  public
    willReadFrequently: Boolean;
    alpha: Boolean;
  end;

  JHitRegionOptions = class external 'HitRegionOptions'
  public
    path: JPath2D;
    id: String;
    control: JElement;
  end;

  TCanvasImageSource = Union;
  JCanvasRenderingContext2D = class external 'CanvasRenderingContext2D'
  const 
    DRAWWINDOW_DRAW_CARET: Integer = 1;
    DRAWWINDOW_DO_NOT_FLUSH: Integer = 2;
    DRAWWINDOW_DRAW_VIEW: Integer = 4;
    DRAWWINDOW_USE_WIDGET_LAYERS: Integer = 8;
    DRAWWINDOW_ASYNC_DECODE_IMAGES: Integer = 16;
  public
    canvas: JHTMLCanvasElement;
    globalAlpha: Float;
    globalCompositeOperation: String; { Throws } 
    strokeStyle: Union;
    fillStyle: Union;
    shadowOffsetX: Float; { LenientFloat } 
    shadowOffsetY: Float; { LenientFloat } 
    shadowBlur: Float; { LenientFloat } 
    shadowColor: String;
    filter: String; { Pref=canvas.filters.enabled,SetterThrows } 
    imageSmoothingEnabled: Boolean;
    mozCurrentTransform: Variant; { Throws } 
    mozCurrentTransformInverse: Variant; { Throws } 
    mozTextStyle: String; { SetterThrows } 
    mozImageSmoothingEnabled: Boolean; { Deprecated=PrefixedImageSmoothingEnabled } 
    procedure save;
    procedure restore;
    procedure scale(x: Float; y: Float); { Throws,LenientFloat } 
    procedure rotate(angle: Float); { Throws,LenientFloat } 
    procedure translate(x: Float; y: Float); { Throws,LenientFloat } 
    procedure transform(a: Float; b: Float; c: Float; d: Float; e: Float; f: Float); { Throws,LenientFloat } 
    procedure setTransform(a: Float; b: Float; c: Float; d: Float; e: Float; f: Float); { Throws,LenientFloat } 
    procedure resetTransform; { Throws } 
    function createLinearGradient(x0: Float; y0: Float; x1: Float; y1: Float): JCanvasGradient; { NewObject } 
    function createRadialGradient(x0: Float; y0: Float; r0: Float; x1: Float; y1: Float; r1: Float): JCanvasGradient; { NewObject,Throws } 
    function createPattern(image: TCanvasImageSource; repetition: String { TreatNullAs=EmptyString } ): JCanvasPattern; { NewObject,Throws } 
    procedure clearRect(x: Float; y: Float; w: Float; h: Float); { LenientFloat } 
    procedure fillRect(x: Float; y: Float; w: Float; h: Float); { LenientFloat } 
    procedure strokeRect(x: Float; y: Float; w: Float; h: Float); { LenientFloat } 
    procedure beginPath;
    procedure fill(winding: JCanvasWindingRule = nonzero);
    procedure fill(path: JPath2D; winding: JCanvasWindingRule = nonzero);
    procedure stroke;
    procedure stroke(path: JPath2D);
    procedure drawFocusIfNeeded(element: JElement); { Pref=canvas.focusring.enabled,Throws } 
    function drawCustomFocusRing(element: JElement): Boolean; { Pref=canvas.customfocusring.enabled } 
    procedure clip(winding: JCanvasWindingRule = nonzero);
    procedure clip(path: JPath2D; winding: JCanvasWindingRule = nonzero);
    function isPointInPath(x: Float; y: Float; winding: JCanvasWindingRule = nonzero): Boolean;
    function isPointInPath(path: JPath2D; x: Float; y: Float; winding: JCanvasWindingRule = nonzero): Boolean;
    function isPointInStroke(x: Float; y: Float): Boolean;
    function isPointInStroke(path: JPath2D; x: Float; y: Float): Boolean;
    procedure fillText(text: String; x: Float; y: Float); overload; { Throws,LenientFloat } 
    procedure fillText(text: String; x: Float; y: Float; maxWidth: Float); overload; { Throws,LenientFloat } 
    procedure strokeText(text: String; x: Float; y: Float); overload; { Throws,LenientFloat } 
    procedure strokeText(text: String; x: Float; y: Float; maxWidth: Float); overload; { Throws,LenientFloat } 
    function measureText(text: String): JTextMetrics; { NewObject,Throws } 
    procedure drawImage(image: TCanvasImageSource; dx: Float; dy: Float); { Throws,LenientFloat } 
    procedure drawImage(image: TCanvasImageSource; dx: Float; dy: Float; dw: Float; dh: Float); { Throws,LenientFloat } 
    procedure drawImage(image: TCanvasImageSource; sx: Float; sy: Float; sw: Float; sh: Float; dx: Float; dy: Float; dw: Float; dh: Float); { Throws,LenientFloat } 
    procedure addHitRegion; overload; { Pref=canvas.hitregions.enabled,Throws } 
    procedure addHitRegion(options: JHitRegionOptions); overload; { Pref=canvas.hitregions.enabled,Throws } 
    procedure removeHitRegion(id: String); { Pref=canvas.hitregions.enabled } 
    procedure clearHitRegions; { Pref=canvas.hitregions.enabled } 
    function createImageData(sw: Float; sh: Float): JImageData; { NewObject,Throws } 
    function createImageData(imagedata: JImageData): JImageData; { NewObject,Throws } 
    function getImageData(sx: Float; sy: Float; sw: Float; sh: Float): JImageData; { NewObject,Throws } 
    procedure putImageData(imagedata: JImageData; dx: Float; dy: Float); { Throws } 
    procedure putImageData(imagedata: JImageData; dx: Float; dy: Float; dirtyX: Float; dirtyY: Float; dirtyWidth: Float; dirtyHeight: Float); { Throws } 
    procedure drawWindow(window: JWindow; x: Float; y: Float; w: Float; h: Float; bgColor: String; &flags: Integer = 0); { Throws,ChromeOnly } 
    procedure asyncDrawXULElement(elem: JXULElement; x: Float; y: Float; w: Float; h: Float; bgColor: String; &flags: Integer = 0); { Throws,ChromeOnly } 
    procedure demote; { ChromeOnly } 
  end;

  // NoInterfaceObject
  JCanvasDrawingStyles = class external 'CanvasDrawingStyles'
  public
    lineWidth: Float; { LenientFloat } 
    lineCap: String;
    lineJoin: String; { GetterThrows } 
    miterLimit: Float; { LenientFloat } 
    lineDashOffset: Float; { LenientFloat } 
    font: String; { SetterThrows } 
    textAlign: String;
    textBaseline: String;
    procedure setLineDash(segments: array of Float); { LenientFloat,Throws } 
    function getLineDash: array of Float;
  end;

  // NoInterfaceObject
  JCanvasPathMethods = class external 'CanvasPathMethods'
  public
    procedure closePath;
    procedure moveTo(x: Float; y: Float); { LenientFloat } 
    procedure lineTo(x: Float; y: Float); { LenientFloat } 
    procedure quadraticCurveTo(cpx: Float; cpy: Float; x: Float; y: Float); { LenientFloat } 
    procedure bezierCurveTo(cp1x: Float; cp1y: Float; cp2x: Float; cp2y: Float; x: Float; y: Float); { LenientFloat } 
    procedure arcTo(x1: Float; y1: Float; x2: Float; y2: Float; radius: Float); { Throws,LenientFloat } 
    procedure rect(x: Float; y: Float; w: Float; h: Float); { LenientFloat } 
    procedure arc(x: Float; y: Float; radius: Float; startAngle: Float; endAngle: Float; anticlockwise: Boolean = False); { Throws,LenientFloat } 
    procedure ellipse(x: Float; y: Float; radiusX: Float; radiusY: Float; rotation: Float; startAngle: Float; endAngle: Float; anticlockwise: Boolean = False); { Throws,LenientFloat } 
  end;

  JCanvasGradient = class external 'CanvasGradient'
  public
    procedure addColorStop(offset: Float; color: String); { Throws } 
  end;

  JCanvasPattern = class external 'CanvasPattern'
  public
    procedure setTransform(matrix: JSVGMatrix);
  end;

  JTextMetrics = class external 'TextMetrics'
  public
    width: Float;
  end;

  // Pref=canvas.path.enabled,Constructor,Constructor( Path2D other),Constructor( DOMString pathString)
  JPath2D = class external 'Path2D'
  public
    procedure addPath(path: JPath2D); overload;
    procedure addPath(path: JPath2D; transformation: JSVGMatrix); overload;
  end;

implementation

end.
