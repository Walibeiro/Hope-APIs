unit W3C.CssFontLoading;

interface

uses
  W3C.DOM4;

type
  TBinaryData = Variant; // TODO
  JFontFaceDescriptors = class external 'FontFaceDescriptors'
  public
    style: String;
    weight: String;
    stretch: String;
    unicodeRange: String;
    variant: String;
    featureSettings: String;
  end;

  JFontFaceLoadStatus = (fflsUnloaded, fflsLoading, fflsLoaded, fflsError);

  // Constructor( DOMString family ,( DOMString or BinaryData)source,FontFaceDescriptorsdescriptors)
  JFontFace = class external 'FontFace'
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
    function load: JFontFace;
  end;

  JCSSFontFaceLoadEventInit = class external 'CSSFontFaceLoadEventInit' (JEventInit)
  public
// TODO    fontfaces: array of JCSSFontFaceRule;
  end;

  // Constructor( DOMString type , optional CSSFontFaceLoadEventInit eventInitDict)
  JCSSFontFaceLoadEvent = class external 'CSSFontFaceLoadEvent' (JEvent)
  public
// TODO    fontfaces: array of JCSSFontFaceRule;
  end;

  JFontFaceSetLoadStatus = (ffslsLoading, ffslsLoaded);

  // SetClass( FontFace)
  JFontFaceSet = class external 'FontFaceSet'
  public
    onloading: TEventHandler;
    onloadingdone: TEventHandler;
    onloadingerror: TEventHandler;
    status: JFontFaceLoadStatus;
    function load(font: String): array of JFontFace; overload;
    function load(font: String; text: String): array of JFontFace; overload;
    function check(font: String): Boolean; overload;
    function check(font: String; text: String): Boolean; overload;
    function ready: JFontFaceSet;
  end;

  // NoInterfaceObject
  JFontFaceSource = class external 'FontFaceSource'
  public
    fonts: JFontFaceSet;
  end;

