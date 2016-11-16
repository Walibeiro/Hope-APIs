unit W3C.HTML5;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.FileAPI, W3C.UIEvents, W3C.HighResolutionTime;

type
  // OverrideBuiltins
  JDOMStringMap = class external 'DOMStringMap'
  private
    function GetNamedItem(name: String): String; external array;
    procedure SetNamedItem(name: String; value: String);
  public
    property Items[Name: String]: String read GetNamedItem write SetNamedItem; default;
  end;

  JDOMElementMap = class external 'DOMElementMap'
  private
    function GetNamedItem(name: String): JElement; external array;
    procedure SetNamedItem(name: String; value: JElement);
  public
    property Items[Name: String]: JElement read GetNamedItem write SetNamedItem; default;
  end;

  JHTMLElement = partial class external 'HTMLElement' (JElement)
  public
    title: String;
    lang: String;
    translate: Boolean;
    dir: String;
    dataset: JDOMStringMap; { SameObject }
    hidden: Boolean;
    tabIndex: Integer;
    accessKey: String;
    draggable: Boolean;
    dropzone: JDOMTokenList; { SameObject,PutForwards=value }
    spellcheck: Boolean;
    procedure click;
    procedure focus;
    procedure blur;
    procedure forceSpellCheck;
  end;

  // LegacyUnenumerableNamedProperties
  JHTMLAllCollection = class external 'HTMLAllCollection'
  private
    function GetNamedItem(name: String): JElement; external array;
  public
    length: Integer;
    function namedItem(name: String): JElement;
    function namedItemAsCollection(name: String): JHTMLCollection;
    function item: JElement; overload;
    function item(nameOrItem: String): JElement; overload;
    function itemAsCollection: JHTMLCollection; overload; external 'item';
    function itemAsCollection(nameOrItem: String): JHTMLCollection; overload; external 'item';

    property Items[Name: String]: JElement read GetNamedItem; default;
  end;

  JRadioNodeList = class external 'RadioNodeList' (JNodeList)
  public
    value: String;
  end;

  JHTMLFormControlsCollection = class external 'HTMLFormControlsCollection' (JHTMLCollection)
  public
    function namedItem(name: String): JElement; overload;
    function namedItemAsRadioNodeList(name: String): JRadioNodeList; overload; external 'namedItem';
  end;

  JHTMLOptGroupElement = partial class external 'HTMLOptGroupElement' (JHTMLElement);
  JHTMLOptionElement = partial class external 'HTMLOptionElement' (JHTMLElement);

  JHTMLOptionsCollection = class external 'HTMLOptionsCollection' (JHTMLCollection)
  private
    procedure SetItem(index: Integer; option: JHTMLOptionElement);
    function GetItem(index: Integer): JHTMLOptionElement; external array;
  public
    length: Integer;
    selectedIndex: Integer;
    procedure add(element: JHTMLOptionElement); overload;
    procedure add(element: JHTMLOptionElement; before: Integer); overload;
    procedure add(element: JHTMLOptionElement; before: JHTMLElement); overload;
    procedure add(element: JHTMLOptGroupElement); overload;
    procedure add(element: JHTMLOptGroupElement; before: Integer); overload;
    procedure add(element: JHTMLOptGroupElement; before: JHTMLElement); overload;
    procedure remove(&index: Integer);

    property Item[index: Integer]: JHTMLOptionElement read GetItem write SetItem; default;
  end;

  JDocumentReadyState = (drsLoading, drsInteractive, drsComplete);

  JHTMLScriptElement = class external 'HTMLScriptElement' (JHTMLElement)
  public
    src: String;
    &type: String;
    charset: String;
    async: Boolean;
    defer: Boolean;
    crossOrigin: String;
    text: String;
    nonce: String;
    event: String;
    htmlFor: String;
  end;

  JLocation = class external 'Location'
  public
    origin: String; { Unforgeable }
    protocol: String; { Unforgeable }
    host: String; { Unforgeable }
    hostname: String; { Unforgeable }
    port: String; { Unforgeable }
    pathname: String; { Unforgeable }
    search: String; { Unforgeable }
    hash: String; { Unforgeable }
    ancestorOrigins: array of String; { Unforgeable,SameObject }
    procedure assign(url: String); { Unforgeable }
    procedure replace(url: String); { Unforgeable }
    procedure reload; { Unforgeable }
  end;

  JXMLDocument = partial class external 'XMLDocument'
  public
    function load(url: String): Boolean;
  end;

  JHTMLUnknownElement = class external 'HTMLUnknownElement' (JHTMLElement)
  end;

  JHTMLHtmlElement = class external 'HTMLHtmlElement' (JHTMLElement)
  public
    version: String;
  end;

  JHTMLHeadElement = class external 'HTMLHeadElement' (JHTMLElement)
  end;

  JHTMLTitleElement = class external 'HTMLTitleElement' (JHTMLElement)
  public
    text: String;
  end;

  JHTMLBaseElement = class external 'HTMLBaseElement' (JHTMLElement)
  public
    href: String;
    target: String;
  end;

  JHTMLLinkElement = class external 'HTMLLinkElement' (JHTMLElement)
  public
    href: String;
    crossOrigin: String;
    rel: String;
    rev: String;
    relList: JDOMTokenList; { SameObject,PutForwards=value }
    media: String;
    hreflang: String;
    &type: String;
    sizes: JDOMTokenList; { SameObject,PutForwards=value }
    charset: String;
    target: String;
  end;

  JHTMLMetaElement = class external 'HTMLMetaElement' (JHTMLElement)
  public
    name: String;
    httpEquiv: String;
    content: String;
    scheme: String;
  end;

  JHTMLStyleElement = class external 'HTMLStyleElement' (JHTMLElement)
  public
    media: String;
    nonce: String;
    &type: String;
  end;

  JHTMLBodyElement = class external 'HTMLBodyElement' (JHTMLElement)
  public
    text: String; { TreatNullAs=EmptyString }
    link: String; { TreatNullAs=EmptyString }
    vLink: String; { TreatNullAs=EmptyString }
    aLink: String; { TreatNullAs=EmptyString }
    bgColor: String; { TreatNullAs=EmptyString }
    background: String;
  end;

  JHTMLHeadingElement = class external 'HTMLHeadingElement' (JHTMLElement)
  public
    align: String;
  end;

  JHTMLParagraphElement = class external 'HTMLParagraphElement' (JHTMLElement)
  public
    align: String;
  end;

  JHTMLHRElement = class external 'HTMLHRElement' (JHTMLElement)
  public
    align: String;
    color: String;
    noShade: Boolean;
    size: String;
    width: String;
  end;

  JHTMLPreElement = class external 'HTMLPreElement' (JHTMLElement)
  public
    width: Integer;
  end;

  JHTMLQuoteElement = class external 'HTMLQuoteElement' (JHTMLElement)
  public
    cite: String;
  end;

  JHTMLOListElement = class external 'HTMLOListElement' (JHTMLElement)
  public
    reversed: Boolean;
    start: Integer;
    &type: String;
    compact: Boolean;
  end;

  JHTMLUListElement = class external 'HTMLUListElement' (JHTMLElement)
  public
    compact: Boolean;
    &type: String;
  end;

  JHTMLLIElement = class external 'HTMLLIElement' (JHTMLElement)
  public
    value: Integer;
    &type: String;
  end;

  JHTMLDListElement = class external 'HTMLDListElement' (JHTMLElement)
  public
    compact: Boolean;
  end;

  JHTMLDivElement = class external 'HTMLDivElement' (JHTMLElement)
  public
    align: String;
  end;

  JHTMLAnchorElement = class external 'HTMLAnchorElement' (JHTMLElement)
  public
    target: String;
    download: String;
    rel: String;
    rev: String;
    relList: JDOMTokenList; { SameObject,PutForwards=value }
    hreflang: String;
    &type: String;
    text: String;
    coords: String;
    charset: String;
    name: String;
    shape: String;
  end;

  JHTMLDataElement = class external 'HTMLDataElement' (JHTMLElement)
  public
    value: String;
  end;

  JHTMLTimeElement = class external 'HTMLTimeElement' (JHTMLElement)
  public
    dateTime: String;
  end;

  JHTMLSpanElement = class external 'HTMLSpanElement' (JHTMLElement)
  end;

  JHTMLBRElement = class external 'HTMLBRElement' (JHTMLElement)
  public
    clear: String;
  end;

  JHTMLModElement = class external 'HTMLModElement' (JHTMLElement)
  public
    cite: String;
    dateTime: String;
  end;

  JHTMLPictureElement = class external 'HTMLPictureElement' (JHTMLElement)
  end;

  JHTMLSourceElement = partial class external 'HTMLSourceElement' (JHTMLElement)
  public
    srcset: String;
    sizes: String;
    media: String;
  end;

  // NamedConstructor=Image( optional unsigned long width , optional unsigned long height)
  JHTMLImageElement = class external 'HTMLImageElement' (JHTMLElement)
  public
    alt: String;
    src: String;
    srcset: String;
    sizes: String;
    crossOrigin: String;
    useMap: String;
    longDesc: String;
    isMap: Boolean;
    width: Integer;
    height: Integer;
    naturalWidth: Integer;
    naturalHeight: Integer;
    complete: Boolean;
    currentSrc: String;
    name: String;
    lowsrc: String;
    align: String;
    hspace: Integer;
    vspace: Integer;
    border: String; { TreatNullAs=EmptyString }
  end;

  JWindowProxy = JWindow;

  JHTMLIFrameElement = class external 'HTMLIFrameElement' (JHTMLElement)
  public
    src: String;
    srcdoc: String;
    name: String;
    sandbox: JDOMTokenList; { SameObject,PutForwards=value }
    allowFullscreen: Boolean;
    width: String;
    height: String;
    contentDocument: JDocument;
    contentWindow: JWindowProxy;
    align: String;
    scrolling: String;
    frameBorder: String;
    longDesc: String;
    marginHeight: String; { TreatNullAs=EmptyString }
    marginWidth: String; { TreatNullAs=EmptyString }
  end;

  JHTMLEmbedElement = class external 'HTMLEmbedElement' (JHTMLElement)
  public
    src: String;
    &type: String;
    width: String;
    height: String;
    align: String;
    name: String;
    // function (arguments: Variant): Variant;
  end;

  JHTMLFormElement = partial class external 'HTMLFormElement' (JHTMLElement);

  JValidityState = class external 'ValidityState'
  public
    valueMissing: Boolean;
    typeMismatch: Boolean;
    patternMismatch: Boolean;
    tooLong: Boolean;
    tooShort: Boolean;
    rangeUnderflow: Boolean;
    rangeOverflow: Boolean;
    stepMismatch: Boolean;
    badInput: Boolean;
    customError: Boolean;
    valid: Boolean;
  end;

  JHTMLObjectElement = class external 'HTMLObjectElement' (JHTMLElement)
  public
    data: String;
    &type: String;
    typeMustMatch: Boolean;
    name: String;
    form: JHTMLFormElement;
    width: String;
    height: String;
    contentDocument: JDocument;
    contentWindow: JWindowProxy;
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    align: String;
    archive: String;
    code: String;
    declare: Boolean;
    hspace: Integer;
    standby: String;
    vspace: Integer;
    codeBase: String;
    codeType: String;
    useMap: String;
    border: String; { TreatNullAs=EmptyString }
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
    // function (arguments: Variant): Variant;
  end;

  JMediaError = class external 'MediaError'
  const
    MEDIA_ERR_ABORTED: Integer = 1;
    MEDIA_ERR_NETWORK: Integer = 2;
    MEDIA_ERR_DECODE: Integer = 3;
    MEDIA_ERR_SRC_NOT_SUPPORTED: Integer = 4;
  public
    code: Integer;
  end;

  TMediaProvider = Variant; // TODO

  JTimeRanges = class external 'TimeRanges'
  public
    length: Integer;
    function start(&index: Integer): Float;
    function &end(&index: Integer): Float;
  end;

  JCanPlayTypeResult = String;
  JCanPlayTypeResultHelper = strict helper for JCanPlayTypeResult
    const Maybe = 'maybe';
    const Probably = 'probably';
  end;

  JTextTrackMode = String;
  JTextTrackModeHelper = strict helper for JTextTrackMode
    const Disabled = 'disaled';
    const Hidden = 'hidden';
    const Showing = 'showing';
  end;

  JTextTrackKind = String;
  JTextTrackKindHelper = strict helper for JTextTrackMode
    const Subtitles = 'subtitles';
    const Captions = 'captions';
    const Descriptions = 'descriptions';
    const Chapters = 'chapters';
    const Metadata = 'metadata';
  end;

  JHTMLMediaElement = partial class external 'HTMLMediaElement' (JHTMLElement)
  const
    NETWORK_EMPTY: Integer = 0;
    NETWORK_IDLE: Integer = 1;
    NETWORK_LOADING: Integer = 2;
    NETWORK_NO_SOURCE: Integer = 3;
    HAVE_NOTHING: Integer = 0;
    HAVE_METADATA: Integer = 1;
    HAVE_CURRENT_DATA: Integer = 2;
    HAVE_FUTURE_DATA: Integer = 3;
    HAVE_ENOUGH_DATA: Integer = 4;
  public
    error: JMediaError;
    src: String;
    srcObject: TMediaProvider;
    currentSrc: String;
    crossOrigin: String;
    networkState: Integer;
    preload: String;
    buffered: JTimeRanges;
    readyState: Integer;
    seeking: Boolean;
    currentTime: Float;
    duration: Float;
    paused: Boolean;
    defaultPlaybackRate: Float;
    playbackRate: Float;
    played: JTimeRanges;
    seekable: JTimeRanges;
    ended: Boolean;
    autoplay: Boolean;
    loop: Boolean;
    controls: Boolean;
    volume: Float;
    muted: Boolean;
    defaultMuted: Boolean;
    procedure load;
    function canPlayType(&type: String): JCanPlayTypeResult;
    procedure fastSeek(time: Float);
    function getStartDate: Variant;
    procedure play;
    procedure pause;
  end;

  JHTMLParamElement = class external 'HTMLParamElement' (JHTMLElement)
  public
    name: String;
    value: String;
    &type: String;
    valueType: String;
  end;

  JHTMLVideoElement = class external 'HTMLVideoElement' (JHTMLMediaElement)
  public
    width: Integer;
    height: Integer;
    videoWidth: Integer;
    videoHeight: Integer;
    poster: String;
  end;

  // NamedConstructor=Audio( optional DOMString src)
  JHTMLAudioElement = class external 'HTMLAudioElement' (JHTMLMediaElement);

  JHTMLSourceElement = partial class external 'HTMLSourceElement' (JHTMLElement)
  public
    src: String;
    &type: String;
  end;

  JHTMLTrackElement = partial class external 'HTMLTrackElement' (JHTMLElement)
  const
    NONE: Integer = 0;
    LOADING: Integer = 1;
    LOADED: Integer = 2;
    ERROR: Integer = 3;
  public
    kind: String;
    src: String;
    srclang: String;
    label: String;
    default: Boolean;
    readyState: Integer;
  end;

  JAudioTrack = partial class external 'AudioTrack'
  public
    id: String;
    kind: String;
    label: String;
    language: String;
    enabled: Boolean;
  end;

  JAudioTrackList = class external 'AudioTrackList' (JEventTarget)
  private
    function GetItem(Index: Integer): JAudioTrack; external array;
  public
    length: Integer;
    onchange: TEventHandler;
    onaddtrack: TEventHandler;
    onremovetrack: TEventHandler;
    function getTrackById(id: String): JAudioTrack;

    property Items[Index: Integer]: JAudioTrack read GetItem; default;
  end;

  JVideoTrack = partial class external 'VideoTrack'
  public
    id: String;
    kind: String;
    label: String;
    language: String;
    selected: Boolean;
  end;

  JVideoTrackList = class external 'VideoTrackList' (JEventTarget)
  private
    function GetItem(Index: Integer): JVideoTrack; external array;
  public
    length: Integer;
    selectedIndex: Integer;
    onchange: TEventHandler;
    onaddtrack: TEventHandler;
    onremovetrack: TEventHandler;
    function getTrackById(id: String): JVideoTrack;

    property Items[Index: Integer]: JVideoTrack read GetItem; default;
  end;

  JTextTrackList = partial class external 'TextTrackList' (JEventTarget)
  private
    function GetItem(Index: Integer): JVideoTrack; external array;
  public
    length: Integer;
    onchange: TEventHandler;
    onaddtrack: TEventHandler;
    onremovetrack: TEventHandler;
    property Items[Index: Integer]: JVideoTrack read GetItem; default;
  end;

  JTextTrackCue = partial class external 'TextTrackCue' (JEventTarget)
  public
    id: String;
    startTime: Float;
    endTime: Float;
    pauseOnExit: Boolean;
    onenter: TEventHandler;
    onexit: TEventHandler;
  end;

  JTextTrackCueList = class external 'TextTrackCueList'
  private
    function GetItem(Index: Integer): JTextTrackCue; external array;
  public
    length: Integer;
    function getCueById(id: String): JTextTrackCue;

    property Item[Index: Integer]: JTextTrackCue read GetItem;
  end;

  JTextTrack = partial class external 'TextTrack' (JEventTarget)
  public
    kind: JTextTrackKind;
    label: String;
    language: String;
    id: String;
    inBandMetadataTrackDispatchType: String;
    mode: JTextTrackMode;
    cues: JTextTrackCueList;
    activeCues: JTextTrackCueList;
    oncuechange: TEventHandler;
    procedure addCue(cue: JTextTrackCue);
    procedure removeCue(cue: JTextTrackCue);
  end;

  JTextTrackList = partial class external 'TextTrackList' (JEventTarget)
  public
    function getTrackById(id: String): JTextTrack;
  end;

  JTextTrackCue = partial class external 'TextTrackCue' (JEventTarget)
  public
    track: JTextTrack;
  end;

  JHTMLTrackElement = partial class external 'HTMLTrackElement' (JHTMLElement)
  public
    track: JTextTrack;
  end;

  JHTMLMediaElement = partial class external 'HTMLMediaElement' (JHTMLElement)
  public
    audioTracks: JAudioTrackList; { SameObject }
    videoTracks: JVideoTrackList; { SameObject }
    textTracks: JTextTrackList; { SameObject }
    function addTextTrack(kind: JTextTrackKind): JTextTrack; overload;
    function addTextTrack(kind: JTextTrackKind; label: String): JTextTrack; overload;
    function addTextTrack(kind: JTextTrackKind; label: String; language: String): JTextTrack; overload;
  end;

  // Constructor( double startTime , double endTime , ArrayBuffer data)
  JDataCue = class external 'DataCue' (JTextTrackCue)
  public
    data: JArrayBuffer;
  end;

  // Constructor( DOMString type , optional TrackEventInit eventInitDict)
  JTrackEvent = class external 'TrackEvent' (JEvent)
  public
    track: Variant;
    trackAsAudioTrack: JAudioTrack; external 'track';
    trackAsVideoTrack: JVideoTrack; external 'track';
    trackAsTextTrack: JTextTrack; external 'track';
  end;

  JTrackEventInit = class external 'TrackEventInit' (JEventInit)
  public
    track: Variant;
    trackAsAudioTrack: JAudioTrack; external 'track';
    trackAsVideoTrack: JVideoTrack; external 'track';
    trackAsTextTrack: JTextTrack; external 'track';
  end;

  JHTMLMapElement = class external 'HTMLMapElement' (JHTMLElement)
  public
    name: String;
    areas: JHTMLCollection; { SameObject }
    images: JHTMLCollection; { SameObject }
  end;

  JHTMLAreaElement = class external 'HTMLAreaElement' (JHTMLElement)
  public
    alt: String;
    coords: String;
    shape: String;
    target: String;
    download: String;
    rel: String;
    relList: JDOMTokenList; { SameObject,PutForwards=value }
    hreflang: String;
    &type: String;
    noHref: Boolean;
  end;

  // NoInterfaceObject
  JHTMLHyperlinkElementUtils = class external 'HTMLHyperlinkElementUtils'
  public
    origin: String;
    protocol: String;
    username: String;
    password: String;
    host: String;
    hostname: String;
    port: String;
    pathname: String;
    search: String;
    hash: String;
  end;

  JHTMLTableCaptionElement = class external 'HTMLTableCaptionElement' (JHTMLElement)
  public
    align: String;
  end;

  JHTMLTableColElement = class external 'HTMLTableColElement' (JHTMLElement)
  public
    span: Integer;
    align: String;
    ch: String;
    chOff: String;
    vAlign: String;
    width: String;
  end;

  JHTMLTableSectionElement = class external 'HTMLTableSectionElement' (JHTMLElement)
  public
    rows: JHTMLCollection; { SameObject }
    align: String;
    ch: String;
    chOff: String;
    vAlign: String;
    function insertRow(&index: Integer = -1): JHTMLElement;
    procedure deleteRow(&index: Integer);
  end;

  JHTMLTableRowElement = class external 'HTMLTableRowElement' (JHTMLElement)
  public
    rowIndex: Integer;
    sectionRowIndex: Integer;
    cells: JHTMLCollection; { SameObject }
    align: String;
    ch: String;
    chOff: String;
    vAlign: String;
    bgColor: String; { TreatNullAs=EmptyString }
    function insertCell(&index: Integer = -1): JHTMLElement;
    procedure deleteCell(&index: Integer);
  end;

  JHTMLTableElement = class external 'HTMLTableElement' (JHTMLElement)
  public
    caption: JHTMLTableCaptionElement;
    tHead: JHTMLTableSectionElement;
    tFoot: JHTMLTableSectionElement;
    tBodies: JHTMLCollection; { SameObject }
    rows: JHTMLCollection; { SameObject }
    align: String;
    border: String;
    frame: String;
    rules: String;
    summary: String;
    width: String;
    bgColor: String; { TreatNullAs=EmptyString }
    cellPadding: String; { TreatNullAs=EmptyString }
    cellSpacing: String; { TreatNullAs=EmptyString }
    function createCaption: JHTMLTableCaptionElement;
    procedure deleteCaption;
    function createTHead: JHTMLTableSectionElement;
    procedure deleteTHead;
    function createTFoot: JHTMLTableSectionElement;
    procedure deleteTFoot;
    function createTBody: JHTMLTableSectionElement;
    function insertRow(&index: Integer = -1): JHTMLTableRowElement;
    procedure deleteRow(&index: Integer);
  end;

  JHTMLTableCellElement = class external 'HTMLTableCellElement' (JHTMLElement)
  public
    colSpan: Integer;
    rowSpan: Integer;
    headers: JDOMTokenList; { SameObject,PutForwards=value }
    cellIndex: Integer;
    align: String;
    axis: String;
    height: String;
    width: String;
    ch: String;
    chOff: String;
    noWrap: Boolean;
    vAlign: String;
    bgColor: String; { TreatNullAs=EmptyString }
  end;

  JHTMLTableDataCellElement = class external 'HTMLTableDataCellElement' (JHTMLTableCellElement)
  public
    abbr: String;
  end;

  JHTMLTableHeaderCellElement = class external 'HTMLTableHeaderCellElement' (JHTMLTableCellElement)
  public
    scope: String;
    abbr: String;
  end;

  // OverrideBuiltins
  JHTMLFormElement = partial class external 'HTMLFormElement' (JHTMLElement)
  private
    function GetElement(Index: Integer): JElement; external array;
// TODO    function GetNamedElement(name: String): Union; external array;
  public
    acceptCharset: String;
    action: String;
    autocomplete: String;
    enctype: String;
    encoding: String;
    &method: String;
    name: String;
    noValidate: Boolean;
    target: String;
    elements: JHTMLFormControlsCollection; { SameObject }
    length: Integer;
    procedure submit;
    procedure reset;
    function checkValidity: Boolean;
    function reportValidity: Boolean;

    property Element[index : Integer] : JElement read GetElement; default;
  end;

  JHTMLLabelElement = class external 'HTMLLabelElement' (JHTMLElement)
  public
    form: JHTMLFormElement;
    htmlFor: String;
    control: JHTMLElement;
  end;

  JSelectionMode = String;
  JSelectionModeHelper = strict helper for JSelectionMode
    const Select = 'select';
    const Start = 'start';
    const &End = 'end';
    const Preserve = 'preserve';
  end;

  JHTMLInputElement = class external 'HTMLInputElement' (JHTMLElement)
  public
    accept: String;
    alt: String;
    autocomplete: String;
    autofocus: Boolean;
    defaultChecked: Boolean;
    checked: Boolean;
    dirName: String;
    disabled: Boolean;
    form: JHTMLFormElement;
    files: JFileList;
    formAction: String;
    formEnctype: String;
    formMethod: String;
    formNoValidate: Boolean;
    formTarget: String;
    height: Integer;
    indeterminate: Boolean;
    inputMode: String;
    list: JHTMLElement;
    max: String;
    maxLength: Integer;
    min: String;
    minLength: Integer;
    multiple: Boolean;
    name: String;
    pattern: String;
    placeholder: String;
    readOnly: Boolean;
    required: Boolean;
    size: Integer;
    src: String;
    step: String;
    &type: String;
    defaultValue: String;
    value: String; { TreatNullAs=EmptyString }
    valueAsDate: Variant;
    valueAsNumber: Float;
    width: Integer;
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    labels: JNodeList; { SameObject }
    selectionStart: Integer;
    selectionEnd: Integer;
    selectionDirection: String;
    align: String;
    useMap: String;
    procedure stepUp(n: Integer = 1);
    procedure stepDown(n: Integer = 1);
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
    procedure select;
    procedure setRangeText(replacement: String); overload;
    procedure setRangeText(replacement: String; start: Integer; &end: Integer); overload;
    procedure setRangeText(replacement: String; start: Integer; &end: Integer; selectionMode: JSelectionMode); overload;
    procedure setSelectionRange(start: Integer; &end: Integer); overload;
    procedure setSelectionRange(start: Integer; &end: Integer; direction: String); overload;
  end;

  JHTMLMenuElement = class external 'HTMLMenuElement' (JHTMLElement)
  public
    &type: String;
    label: String;
    compact: Boolean;
  end;

  JHTMLMenuItemElement = class external 'HTMLMenuItemElement' (JHTMLElement)
  public
    &type: String;
    label: String;
    icon: String;
    disabled: Boolean;
    checked: Boolean;
    radiogroup: String;
    default: Boolean;
  end;

  JHTMLElement = partial class external 'HTMLElement' (JElement)
  public
    contextMenu: JHTMLMenuElement;
  end;

  JHTMLButtonElement = class external 'HTMLButtonElement' (JHTMLElement)
  public
    autofocus: Boolean;
    disabled: Boolean;
    form: JHTMLFormElement;
    formAction: String;
    formEnctype: String;
    formMethod: String;
    formNoValidate: Boolean;
    formTarget: String;
    name: String;
    &type: String;
    value: String;
    menu: JHTMLMenuElement;
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    labels: JNodeList; { SameObject }
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
  end;

  JHTMLSelectElement = class external 'HTMLSelectElement' (JHTMLElement)
  private
    procedure SetItem(Index: Integer; option: JHTMLOptionElement);
  public
    autocomplete: String;
    autofocus: Boolean;
    disabled: Boolean;
    form: JHTMLFormElement;
    multiple: Boolean;
    name: String;
    required: Boolean;
    size: Integer;
    &type: String;
    options: JHTMLOptionsCollection; { SameObject }
    length: Integer;
    selectedOptions: JHTMLCollection; { SameObject }
    selectedIndex: Integer;
    value: String;
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    labels: JNodeList; { SameObject }
    function item(&index: Integer): JElement;
    function namedItem(name: String): JHTMLOptionElement;
    procedure add(element: JHTMLObjectElement); overload;
    procedure add(element: JHTMLObjectElement; before: JHTMLElement); overload;
    procedure add(element: JHTMLObjectElement; before: Integer); overload;
    procedure add(element: JHTMLOptGroupElement); overload;
    procedure add(element: JHTMLOptGroupElement; before: JHTMLElement); overload;
    procedure add(element: JHTMLOptGroupElement; before: Integer); overload;
    procedure remove; overload;
    procedure remove(&index: Integer); overload;
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);

    property Items[Index: Integer]: JHTMLOptionElement write SetItem; default;
  end;

  JHTMLDataListElement = class external 'HTMLDataListElement' (JHTMLElement)
  public
    options: JHTMLCollection; { SameObject }
  end;

  JHTMLOptGroupElement = partial class external 'HTMLOptGroupElement' (JHTMLElement)
  public
    disabled: Boolean;
    label: String;
  end;

  // NamedConstructor=Option( optional DOMString text , optional DOMString value , optional boolean defaultSelected = false , optional boolean selected = false)
  JHTMLOptionElement = partial class external 'HTMLOptionElement' (JHTMLElement)
  public
    disabled: Boolean;
    form: JHTMLFormElement;
    label: String;
    defaultSelected: Boolean;
    selected: Boolean;
    value: String;
    text: String;
    index: Integer;
  end;

  JHTMLTextAreaElement = class external 'HTMLTextAreaElement' (JHTMLElement)
  public
    autocomplete: String;
    autofocus: Boolean;
    cols: Integer;
    dirName: String;
    disabled: Boolean;
    form: JHTMLFormElement;
    inputMode: String;
    maxLength: Integer;
    minLength: Integer;
    name: String;
    placeholder: String;
    readOnly: Boolean;
    required: Boolean;
    rows: Integer;
    wrap: String;
    &type: String;
    defaultValue: String;
    value: String; { TreatNullAs=EmptyString }
    textLength: Integer;
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    labels: JNodeList; { SameObject }
    selectionStart: Integer;
    selectionEnd: Integer;
    selectionDirection: String;
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
    procedure select;
    procedure setRangeText(replacement: String); overload;
    procedure setRangeText(replacement: String; start: Integer; &end: Integer); overload;
    procedure setRangeText(replacement: String; start: Integer; &end: Integer; selectionMode: JSelectionMode); overload;
    procedure setSelectionRange(start: Integer; &end: Integer); overload;
    procedure setSelectionRange(start: Integer; &end: Integer; direction: String); overload;
  end;

  JHTMLOutputElement = class external 'HTMLOutputElement' (JHTMLElement)
  public
    htmlFor: JDOMTokenList; { SameObject,PutForwards=value }
    form: JHTMLFormElement;
    name: String;
    &type: String;
    defaultValue: String;
    value: String;
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    labels: JNodeList; { SameObject }
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
  end;

  JHTMLProgressElement = class external 'HTMLProgressElement' (JHTMLElement)
  public
    value: Float;
    max: Float;
    position: Float;
    labels: JNodeList; { SameObject }
  end;

  JHTMLMeterElement = class external 'HTMLMeterElement' (JHTMLElement)
  public
    value: Float;
    min: Float;
    max: Float;
    low: Float;
    high: Float;
    optimum: Float;
    labels: JNodeList; { SameObject }
  end;

  JHTMLFieldSetElement = class external 'HTMLFieldSetElement' (JHTMLElement)
  public
    disabled: Boolean;
    form: JHTMLFormElement;
    name: String;
    &type: String;
    elements: JHTMLCollection; { SameObject }
    willValidate: Boolean;
    validity: JValidityState; { SameObject }
    validationMessage: String;
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
  end;

  JHTMLLegendElement = class external 'HTMLLegendElement' (JHTMLElement)
  public
    form: JHTMLFormElement;
    align: String;
  end;

  JHTMLDetailsElement = class external 'HTMLDetailsElement' (JHTMLElement)
  public
    open: Boolean;
  end;

  // Constructor( DOMString type , optional RelatedEventInit eventInitDict)
  JRelatedEvent = class external 'RelatedEvent' (JEvent)
  public
    relatedTarget: JEventTarget;
  end;

  JRelatedEventInit = class external 'RelatedEventInit' (JEventInit)
  public
    relatedTarget: JEventTarget;
  end;

  JHTMLDialogElement = class external 'HTMLDialogElement' (JHTMLElement)
  public
    open: Boolean;
    returnValue: String;
    procedure show; overload;
    procedure show(anchor: JElement); overload;
    procedure show(anchor: JMouseEvent); overload;
    procedure showModal; overload;
    procedure showModal(anchor: JElement); overload;
    procedure showModal(anchor: JMouseEvent); overload;
    procedure close; overload;
    procedure close(returnValue: String); overload;
  end;

  JHTMLTemplateElement = class external 'HTMLTemplateElement' (JHTMLElement)
  public
    content: JDocumentFragment;
  end;

  TBlobCallback = procedure(blob: JBlob);

  JRenderingContext = class external;

  JHTMLCanvasElement = class external 'HTMLCanvasElement' (JHTMLElement)
  public
    width: Integer;
    height: Integer;
    function getContext(contextId: String; arguments: Variant): JRenderingContext;
    function probablySupportsContext(contextId: String; arguments: Variant): Boolean;
    function toDataURL(arguments: Variant): String; overload;
    function toDataURL(&type: String; arguments: Variant): String; overload;
    procedure toBlob(_callback: TBlobCallback; arguments: Variant); overload;
    procedure toBlob(_callback: TBlobCallback; &type: String; arguments: Variant); overload;
  end;

  // NoInterfaceObject
  JElementContentEditable = class external 'ElementContentEditable'
  public
    contentEditable: String;
    isContentEditable: Boolean;
  end;

  TFunctionStringCallback = procedure(data: String);

  JDataTransferItem = class external 'DataTransferItem'
  public
    kind: String;
    &type: String;
    procedure getAsString(_callback: TFunctionStringCallback);
    function getAsFile: JFile;
  end;

  JDataTransferItemList = class external 'DataTransferItemList'
  private
    function GetItem(Index: Integer): JDataTransferItem;
  public
    length: Integer;
    function add(data: String; &type: String): JDataTransferItem; overload;
    function add(data: JFile): JDataTransferItem; overload;
    procedure remove(&index: Integer);
    procedure clear;

    property Items[Index: Integer]: JDataTransferItem read GetItem;
  end;

  JDataTransfer = class external 'DataTransfer'
  public
    dropEffect: String;
    effectAllowed: String;
    items: JDataTransferItemList; { SameObject }
    types: array of String; { SameObject }
    files: JFileList; { SameObject }
    procedure setDragImage(image: JElement; x: Integer; y: Integer);
    function getData(format: String): String;
    procedure setData(format: String; data: String);
    procedure clearData; overload;
    procedure clearData(format: String); overload;
  end;

  JDragEventInit = class external 'DragEventInit' (JMouseEventInit)
  public
    dataTransfer: JDataTransfer;
  end;

  JDragEvent = class external 'DragEvent' (JMouseEvent)
  public
    dataTransfer: JDataTransfer;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JDragEventInit); overload;
  end;

  JFrameRequestCallback = procedure(time: TDOMHighResTimeStamp);

  JBarProp = class external 'BarProp'
  public
    visible: Boolean;
  end;

  JScrollRestoration = (srAuto, srManual);

  JHistory = class external 'History'
  public
    length: Integer;
    scrollRestoration: JScrollRestoration;
    state: Variant;
    procedure go(delta: Integer = 0);
    procedure back;
    procedure forward;
    procedure pushState(data: Variant; title: String); overload;
    procedure pushState(data: Variant; title: String; url: String); overload;
    procedure replaceState(data: Variant; title: String); overload;
    procedure replaceState(data: Variant; title: String; url: String); overload;
  end;

  JPopStateEventInit = class external 'PopStateEventInit' (JEventInit)
  public
    state: Variant;
  end;

  // Exposed = (Window, Worker)
  JPopStateEvent = class external 'PopStateEvent' (JEvent)
  public
    state: Variant;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JPopStateEventInit); overload;
  end;

  JHashChangeEventInit = class external 'HashChangeEventInit' (JEventInit)
  public
    oldURL: String;
    newURL: String;
  end;

  // Exposed = (Window, Worker)
  JHashChangeEvent = class external 'HashChangeEvent' (JEvent)
  public
    oldURL: String;
    newURL: String;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JHashChangeEventInit); overload;
  end;

  JPageTransitionEventInit = class external 'PageTransitionEventInit' (JEventInit)
  public
    persisted: Boolean;
  end;

  // Exposed = (Window, Worker)
  JPageTransitionEvent = class external 'PageTransitionEvent' (JEvent)
  public
    persisted: Boolean;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JPageTransitionEventInit); overload;
  end;

  JBeforeUnloadEvent = class external 'BeforeUnloadEvent' (JEvent)
  public
    returnValue: String;
  end;

  // NoInterfaceObject,Exposed=( Window , Worker)
  JNavigatorOnLine = class external 'NavigatorOnLine'
  public
    onLine: Boolean;
  end;

  // Constructor( DOMString type , optional ErrorEventInit eventInitDict),Exposed=( Window , Worker)
  JErrorEvent = class external 'ErrorEvent' (JEvent)
  public
    message: String;
    filename: String;
    lineno: Integer;
    colno: Integer;
    error: Variant;
  end;

  JErrorEventInit = class external 'ErrorEventInit' (JEventInit)
  public
    message: String;
    filename: String;
    lineno: Integer;
    colno: Integer;
    error: Variant;
  end;

  JPromiseRejectionEventInit = class external 'PromiseRejectionEventInit' (JEventInit)
  public
    promise: Variant;
    reason: Variant;
  end;

  // Exposed = (Window, Worker)
  JPromiseRejectionEvent = class external 'PromiseRejectionEvent' (JEvent)
  public
    promise: Variant;
    reason: Variant;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JPromiseRejectionEventInit); overload;
  end;

  // NoInterfaceObject
  JGlobalEventHandlers = class external 'GlobalEventHandlers'
  public
    onabort: TEventHandler;
    onblur: TEventHandler;
    oncancel: TEventHandler;
    oncanplay: TEventHandler;
    oncanplaythrough: TEventHandler;
    onchange: TEventHandler;
    onclick: TEventHandler;
    onclose: TEventHandler;
    oncontextmenu: TEventHandler;
    oncuechange: TEventHandler;
    ondblclick: TEventHandler;
    ondrag: TEventHandler;
    ondragend: TEventHandler;
    ondragenter: TEventHandler;
    ondragexit: TEventHandler;
    ondragleave: TEventHandler;
    ondragover: TEventHandler;
    ondragstart: TEventHandler;
    ondrop: TEventHandler;
    ondurationchange: TEventHandler;
    onemptied: TEventHandler;
    onended: TEventHandler;
    onerror: TOnErrorEventHandler;
    onfocus: TEventHandler;
    oninput: TEventHandler;
    oninvalid: TEventHandler;
    onkeydown: TEventHandler;
    onkeypress: TEventHandler;
    onkeyup: TEventHandler;
    onload: TEventHandler;
    onloadeddata: TEventHandler;
    onloadedmetadata: TEventHandler;
    onloadstart: TEventHandler;
    onmousedown: TEventHandler;
    onmouseenter: TEventHandler; { LenientThis }
    onmouseleave: TEventHandler; { LenientThis }
    onmousemove: TEventHandler;
    onmouseout: TEventHandler;
    onmouseover: TEventHandler;
    onmouseup: TEventHandler;
    onwheel: TEventHandler;
    onpause: TEventHandler;
    onplay: TEventHandler;
    onplaying: TEventHandler;
    onprogress: TEventHandler;
    onratechange: TEventHandler;
    onreset: TEventHandler;
    onresize: TEventHandler;
    onscroll: TEventHandler;
    onseeked: TEventHandler;
    onseeking: TEventHandler;
    onselect: TEventHandler;
    onshow: TEventHandler;
    onstalled: TEventHandler;
    onsubmit: TEventHandler;
    onsuspend: TEventHandler;
    ontimeupdate: TEventHandler;
    ontoggle: TEventHandler;
    onvolumechange: TEventHandler;
    onwaiting: TEventHandler;
  end;

  // NoInterfaceObject
  JWindowEventHandlers = class external 'WindowEventHandlers'
  public
    onafterprint: TEventHandler;
    onbeforeprint: TEventHandler;
    onbeforeunload: TOnBeforeUnloadEventHandler;
    onhashchange: TEventHandler;
    onlanguagechange: TEventHandler;
    onmessage: TEventHandler;
    onoffline: TEventHandler;
    ononline: TEventHandler;
    onpagehide: TEventHandler;
    onpageshow: TEventHandler;
    onrejectionhandled: TEventHandler;
    onpopstate: TEventHandler;
    onstorage: TEventHandler;
    onunhandledrejection: TEventHandler;
    onunload: TEventHandler;
  end;

  // NoInterfaceObject
  JDocumentAndElementEventHandlers = class external 'DocumentAndElementEventHandlers'
  public
    oncopy: TEventHandler;
    oncut: TEventHandler;
    onpaste: TEventHandler;
  end;

  TTimerHandler = Variant;

  TImageBitmapSource = Variant; //ToDo

  // Exposed = (Window, Worker)
  JImageBitmap = class external 'ImageBitmap'
  public
    width: Integer;
    height: Integer;
  end;

  // NoInterfaceObject, Exposed = (Window, Worker)
  JWindowOrWorkerGlobalScope = class external 'WindowOrWorkerGlobalScope'
  public
    origin: String; { Replaceable }
    function btoa(btoa: String): String;
    function atob(atob: String): String;
    function setTimeout(handler: TTimerHandler): Integer; overload;
    function setTimeout(handler: TTimerHandler; timeout: Integer): Integer; overload;
    function setTimeout(handler: TTimerHandler; timeout: Integer; arguments: Variant): Integer; overload;
    procedure clearTimeout(handle: Integer = 0);
    function setInterval(handler: TTimerHandler): Integer; overload;
    function setInterval(handler: TTimerHandler; timeout: Integer): Integer; overload;
    function setInterval(handler: TTimerHandler; timeout: Integer; arguments: Variant): Integer; overload;
    procedure clearInterval(handle: Integer = 0);
    function createImageBitmap(image: TImageBitmapSource): JImageBitmap; overload;
    function createImageBitmap(image: TImageBitmapSource; sx: Integer; sy: Integer; sw: Integer; sh: Integer): JImageBitmap; overload;
  end;

  // NoInterfaceObject
  JWindowModal = class external 'WindowModal'
  public
    dialogArguments: Variant;
    returnValue: Variant;
  end;

  JNavigator = class external 'Navigator'
  end;

  // NoInterfaceObject,Exposed = (Window, Worker)
  JNavigatorID = class external 'NavigatorID'
  public
    appCodeName: String; { Exposed=Window }
    appName: String;
    appVersion: String;
    platform: String;
    product: String; { Exposed=Window }
    userAgent: String;
  end;

  // NoInterfaceObject, Exposed = (Window, Worker)
  JNavigatorLanguage = class external 'NavigatorLanguage'
  public
    language: String;
    languages: array of String;
  end;

  // NoInterfaceObject
  JNavigatorContentUtils = class external 'NavigatorContentUtils'
  public
    procedure registerProtocolHandler(scheme: String; url: String; title: String);
    procedure registerContentHandler(mimeType: String; url: String; title: String);
    function isProtocolHandlerRegistered(scheme: String; url: String): String;
    function isContentHandlerRegistered(mimeType: String; url: String): String;
    procedure unregisterProtocolHandler(scheme: String; url: String);
    procedure unregisterContentHandler(mimeType: String; url: String);
  end;

  JMimeType = partial class external 'MimeType';

  JMimeTypeArray = class external 'MimeTypeArray'
  public
    length: Integer;
    function item(&index: Integer): JMimeType;
    function namedItem(name: String): JMimeType;
  end;

  JPlugin = class external 'Plugin'
  public
    name: String;
    description: String;
    filename: String;
    length: Integer;
    function item(&index: Integer): JMimeType;
    function namedItem(name: String): JMimeType;
  end;

  JMimeType = partial class external 'MimeType'
  public
    &type: String;
    description: String;
    suffixes: String;
    enabledPlugin: JPlugin;
  end;

  // NoInterfaceObject
  JNavigatorCookies = class external 'NavigatorCookies'
  public
    cookieEnabled: Boolean;
  end;

  JPluginArray = class external 'PluginArray'
  public
    length: Integer;
    procedure refresh(reload: Boolean = False);
    function item(&index: Integer): JPlugin;
    function namedItem(name: String): JPlugin;
  end;

  // NoInterfaceObject
  JNavigatorPlugins = class external 'NavigatorPlugins'
  public
    plugins: JPluginArray; { SameObject }
    mimeTypes: JMimeTypeArray; { SameObject }
    function javaEnabled: Boolean;
  end;

  JHTMLAppletElement = class external 'HTMLAppletElement' (JHTMLElement)
  public
    align: String;
    alt: String;
    archive: String;
    code: String;
    codeBase: String;
    height: String;
    hspace: Integer;
    name: String;
    _object: String;
    vspace: Integer;
    width: String;
  end;

  JHTMLMarqueeElement = class external 'HTMLMarqueeElement' (JHTMLElement)
  public
    behavior: String;
    bgColor: String;
    direction: String;
    height: String;
    hspace: Integer;
    loop: Integer;
    scrollAmount: Integer;
    scrollDelay: Integer;
    trueSpeed: Boolean;
    vspace: Integer;
    width: String;
    onbounce: TEventHandler;
    onfinish: TEventHandler;
    onstart: TEventHandler;
    procedure start;
    procedure stop;
  end;

  JHTMLFrameSetElement = class external 'HTMLFrameSetElement' (JHTMLElement)
  public
    cols: String;
    rows: String;
  end;

  JHTMLFrameElement = class external 'HTMLFrameElement' (JHTMLElement)
  public
    name: String;
    scrolling: String;
    src: String;
    frameBorder: String;
    longDesc: String;
    noResize: Boolean;
    contentDocument: JDocument;
    contentWindow: JWindowProxy;
    marginHeight: String; { TreatNullAs=EmptyString }
    marginWidth: String; { TreatNullAs=EmptyString }
  end;

  JHTMLDirectoryElement = class external 'HTMLDirectoryElement' (JHTMLElement)
  public
    compact: Boolean;
  end;

  JHTMLFontElement = class external 'HTMLFontElement' (JHTMLElement)
  public
    color: String; { TreatNullAs=EmptyString }
    face: String;
    size: String;
  end;

  // NoInterfaceObject
  JExternal = class external 'External'
  public
    procedure AddSearchProvider;
    procedure IsSearchProviderInstalled;
  end;

  // OverrideBuiltins
  JDocument = partial class external 'Document'
  private
    function GetNamedItem(name: String): JObject; external array;
  public
    location: JLocation; { PutForwards=href,Unforgeable }
    domain: String;
    referrer: String;
    cookie: String;
    lastModified: String;
    readyState: JDocumentReadyState;
    title: String;
    dir: String;
    body: JHTMLElement;
    head: JHTMLHeadElement;
    images: JHTMLCollection; { SameObject }
    embeds: JHTMLCollection; { SameObject }
    plugins: JHTMLCollection; { SameObject }
    links: JHTMLCollection; { SameObject }
    forms: JHTMLCollection; { SameObject }
    scripts: JHTMLCollection; { SameObject }
    currentScript: JHTMLScriptElement;
    defaultView: JWindowProxy;
    activeElement: JElement;
    designMode: String;
    onreadystatechange: TEventHandler; { LenientThis }
    fgColor: String; { TreatNullAs=EmptyString }
    linkColor: String; { TreatNullAs=EmptyString }
    vlinkColor: String; { TreatNullAs=EmptyString }
    alinkColor: String; { TreatNullAs=EmptyString }
    bgColor: String; { TreatNullAs=EmptyString }
    anchors: JHTMLCollection; { SameObject }
    applets: JHTMLCollection; { SameObject }
    all: JHTMLAllCollection; { SameObject }
    function getElementsByName(elementName: String): JNodeList;
    function open: JDocument; overload;
    function open(&type: String): JDocument; overload;
    function open(&type: String; replace: String): JDocument; overload;
    function open(url: String; &name: String; features: String; replace: Boolean = False): JWindowProxy; overload;
    procedure close;
    procedure write(text: String);
    procedure writeln(text: String);
    function hasFocus: Boolean;
    function execCommand(commandId: String): Boolean; overload;
    function execCommand(commandId: String; showUI: Boolean): Boolean; overload;
    function execCommand(commandId: String; showUI: Boolean; value: String): Boolean; overload;
    function queryCommandEnabled(commandId: String): Boolean;
    function queryCommandIndeterm(commandId: String): Boolean;
    function queryCommandState(commandId: String): Boolean;
    function queryCommandSupported(commandId: String): Boolean;
    function queryCommandValue(commandId: String): String;
    procedure clear;
    procedure captureEvents;
    procedure releaseEvents;

    property Items[Name: String]: JObject read GetNamedItem; default;
  end;

  // PrimaryGlobal, LegacyUnenumerableNamedProperties
  JWindow = class external 'Window' (JEventTarget)
  private
    function GetIndexedItem(index: Integer): JWindowProxy; external array;
    function GetNamedItem(name: String): JObject; external array;
  public
    window: JWindowProxy; { Unforgeable }
    self: JWindowProxy; { Replaceable }
    document: JDocument; { Unforgeable }
    name: String;
    location: JLocation; { PutForwards=href,Unforgeable }
    history: JHistory;
    locationbar: JBarProp; { Replaceable }
    menubar: JBarProp; { Replaceable }
    personalbar: JBarProp; { Replaceable }
    scrollbars: JBarProp; { Replaceable }
    statusbar: JBarProp; { Replaceable }
    toolbar: JBarProp; { Replaceable }
    status: String;
    closed: Boolean;
    frames: JWindowProxy; { Replaceable }
    length: Integer; { Replaceable }
    top: JWindowProxy; { Unforgeable }
    opener: Variant;
    parent: JWindowProxy; { Replaceable }
    frameElement: JElement;
    navigator: JNavigator;
    &external: JExternal; { Replaceable,SameObject }
    procedure close;
    procedure stop;
    procedure focus;
    procedure blur;
    function open(url: String = 'about:blank'; target: String = '_blank'; features: String = ''; replace: Boolean = False): JWindowProxy;
    procedure alert; overload;
    procedure alert(message: String); overload;
    function confirm: Boolean; overload;
    function confirm(message: String): Boolean; overload;
    function prompt: String; overload;
    function prompt(message: String): String; overload;
    function prompt(message: String; &default: String): String; overload;
    procedure print;
    function showModalDialog(url: String): Variant; overload;
    function showModalDialog(url: String; argument: Variant): Variant; overload;
    function requestAnimationFrame(Callback: JFrameRequestCallback): Integer;
    procedure cancelAnimationFrame(handle: Integer);
    procedure captureEvents;
    procedure releaseEvents;

    property NamedItems[Name: String]: JObject read GetNamedItem; default;
    property IndexedItems[Index: Integer]: JWindowProxy read GetIndexedItem;
  end;