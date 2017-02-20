unit W3C.CSSFontLoading;

interface

uses
  ECMA.Promise, ECMA.TypedArray, W3C.DOM4, W3C.CSSOM;

type
  JFontFaceDescriptors = class external 'FontFaceDescriptors'
  public
    style: String;
    weight: String;
    stretch: String;
    unicodeRange: String;
    variant: String;
    featureSettings: String;
  end;

  JFontFaceLoadStatus = String;
  JFontFaceLoadStatusHelper = strict helper for JFontFaceLoadStatus
    const Unloaded = 'unloaded';
    const Loading = 'loading';
    const Loaded = 'loaded';
    const error = 'error';
  end;

  JFontFace = partial class external 'FontFace'
  public
    family: String;
    style: String;
    weight: String;
    stretch: String;
    unicodeRange: String;
    variant: String;
    featureSettings: String;
    status: JFontFaceLoadStatus;
    loaded: boolean;
    constructor Create(family: String; source: String; descriptors: JFontFaceDescriptors); overload;
    constructor Create(family: String; source: JArrayBuffer; descriptors: JFontFaceDescriptors); overload;
    constructor Create(family: String; source: JArrayBufferView; descriptors: JFontFaceDescriptors); overload;
  end;

  TOnFulFilledFontFace = procedure(response: JFontFace);
  JPromiseFontFace = class external 'Promise' (JPromise)
  public
    class function resolve(value: JFontFace): JPromiseFontFace;

    function &then(onFulfilled: TOnFulFilledFontFace): JPromiseFontFace; overload;
    function &then(onFulfilled: TOnFulFilledFontFace; onRejected: TOnRejected): JPromiseFontFace; overload;
  end;

  JFontFace = partial class external 'FontFace'
  public
    function load: JPromiseFontFace;
  end;

  JCSSFontFaceLoadEventInit = class external 'CSSFontFaceLoadEventInit' (JEventInit)
  public
    fontfaces: array of JCSSFontFaceRule;
  end;

  JCSSFontFaceLoadEvent = class external 'CSSFontFaceLoadEvent' (JEvent)
  public
    fontfaces: array of JCSSFontFaceRule;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JCSSFontFaceLoadEventInit); overload;
  end;

  // SetClass(FontFace)
  JFontFaceSet = class external 'FontFaceSet'
  public
    onloading: TEventHandler;
    onloadingdone: TEventHandler;
    onloadingerror: TEventHandler;
    status: JFontFaceLoadStatus;
    ready: JPromiseFontFace;
    function load(font: String): array of JFontFace; overload;
    function load(font: String; text: String): array of JFontFace; overload;
    function check(font: String): Boolean; overload;
    function check(font: String; text: String): Boolean; overload;
  end;

  // NoInterfaceObject
  JFontFaceSource = class external 'FontFaceSource'
  public
    fonts: JFontFaceSet;
  end;

  JDocument = partial class external 'Document' (JNode)
  public
    fonts: JFontFaceSet;
  end;