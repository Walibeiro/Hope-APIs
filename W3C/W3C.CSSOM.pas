unit W3C.CSSOM;

interface

uses
  W3C.DOM4, W3C.Geometry, W3C.Html5;

type
  // ArrayClass
  JMediaList = class external 'MediaList'
  public
    length: Integer;
    function item(&index: Integer): String;
    procedure appendMedium(medium: String);
    procedure deleteMedium(medium: String);
  end;

  JStyleSheet = class external 'StyleSheet'
  public
    &type: String;
    href: String;
    ownerNode: Variant;
    ownerNodeAsElement: JElement;
    ownerNodeAsInstructions: JProcessingInstruction; external 'ownerNode';
    parentStyleSheet: JStyleSheet;
    title: String;
    media: JMediaList; { SameObject,PutForwards=mediaText }
    disabled: Boolean;
  end;

  JCSSRule = partial class external 'CSSRule'
  const
    STYLE_RULE: Integer = 1;
    CHARSET_RULE: Integer = 2;
    IMPORT_RULE: Integer = 3;
    MEDIA_RULE: Integer = 4;
    FONT_FACE_RULE: Integer = 5;
    PAGE_RULE: Integer = 6;
    KEYFRAMES_RULE : Integer = 7;
    KEYFRAME_RULE : Integer = 8;
    MARGIN_RULE: Integer = 9;
    NAMESPACE_RULE: Integer = 10;
    VIEWPORT_RULE : Integer = 15;
  end;

  // ArrayClass
  JCSSRuleList = class external 'CSSRuleList'
  public
    length: Integer;
    function item(index: Integer): JCSSRule;

    property Items[index : Integer]: JCSSRule read item; default;
  end;

  JCSSStyleSheet = class external 'CSSStyleSheet' (JStyleSheet)
  public
    ownerRule: JCSSRule;
    cssRules: JCSSRuleList; { SameObject }
    function insertRule(rule: String; &index: Integer): Integer;
    procedure deleteRule(&index: Integer);
  end;

  // ArrayClass
  JStyleSheetList = class external 'StyleSheetList'
  public
    length: Integer;
    function item(index: Integer): JStyleSheet;

    property Items[index : Integer]: JStyleSheet read item; default;
  end;

  // NoInterfaceObject
  JLinkStyle = class external 'LinkStyle'
  public
    sheet: JStyleSheet;
  end;

  JCSSRule = partial class external 'CSSRule'
  public
    &type: Integer;
    cssText: String;
    parentRule: JCSSRule;
    parentStyleSheet: JCSSStyleSheet;
  end;

  JCSSStyleDeclaration = class external 'CSSStyleDeclaration'
  public
    cssText: String;
    length: Integer;
    parentRule: JCSSRule;
    cssFloat: String; { TreatNullAs=EmptyString }
    _dashed_attribute: String; { TreatNullAs=EmptyString }
    function item(index: Integer): String;
    function getPropertyValue(&property: String): String;
    function getPropertyPriority(&property: String): String;
    procedure setProperty(&property, value: String { TreatNullAs=EmptyString } ; priority: String = '' { TreatNullAs=EmptyString } );
    procedure setPropertyValue(&property, value: String { TreatNullAs=EmptyString } );
    procedure setPropertyPriority(&property, priority: String { TreatNullAs=EmptyString } );
    function removeProperty(&property: String): String;

    property Items[index : Integer]: String read item; default;
  end;

  JCSSStyleRule = class external 'CSSStyleRule' (JCSSRule)
  public
    selectorText: String;
    style: JCSSStyleDeclaration; { SameObject,PutForwards=cssText }
  end;

	JCSS2Properties = class external 'CSS2Properties' (JCSSStyleDeclaration)
	public
		alignContent: String;
		alignItems: String;
		alignSelf: String;
		all: String;
		animation: String;
		animationDelay: String;
		animationDirection: String;
		animationDuration: String;
		animationFillMode: String;
		animationIterationCount: String;
		animationName: String;
		animationPlayState: String;
		animationTimingFunction: String;
		backfaceVisibility: String;
		background: String;
		backgroundAttachment: String;
		backgroundBlendMode: String;
		backgroundClip: String;
		backgroundColor: String;
		backgroundImage: String;
		backgroundOrigin: String;
		backgroundPosition: String;
		backgroundRepeat: String;
		backgroundSize: String;
		blockSize: String;
		border: String;
		borderBlockEnd: String;
		borderBlockEndColor: String;
		borderBlockEndStyle: String;
		borderBlockEndWidth: String;
		borderBlockStart: String;
		borderBlockStartColor: String;
		borderBlockStartStyle: String;
		borderBlockStartWidth: String;
		borderBottom: String;
		borderBottomColor: String;
		borderBottomLeftRadius: String;
		borderBottomRightRadius: String;
		borderBottomStyle: String;
		borderBottomWidth: String;
		borderCollapse: String;
		borderColor: String;
		borderImage: String;
		borderImageOutset: String;
		borderImageRepeat: String;
		borderImageSlice: String;
		borderImageSource: String;
		borderImageWidth: String;
		borderInlineEnd: String;
		borderInlineEndColor: String;
		borderInlineEndStyle: String;
		borderInlineEndWidth: String;
		borderInlineStart: String;
		borderInlineStartColor: String;
		borderInlineStartStyle: String;
		borderInlineStartWidth: String;
		borderLeft: String;
		borderLeftColor: String;
		borderLeftStyle: String;
		borderLeftWidth: String;
		borderRadius: String;
		borderRight: String;
		borderRightColor: String;
		borderRightStyle: String;
		borderRightWidth: String;
		borderSpacing: String;
		borderStyle: String;
		borderTop: String;
		borderTopColor: String;
		borderTopLeftRadius: String;
		borderTopRightRadius: String;
		borderTopStyle: String;
		borderTopWidth: String;
		borderWidth: String;
		bottom: String;
		boxDecorationBreak: String;
		boxShadow: String;
		boxSizing: String;
		captionSide: String;
		clear: String;
		clip: String;
		clipPath: String;
		clipRule: String;
		color: String;
		colorInterpolation: String;
		colorInterpolationFilters: String;
		contain: String;
		content: String;
		counterIncrement: String;
		counterReset: String;
		cssFloat: String;
		cursor: String;
		direction: String;
		display: String;
		dominantBaseline: String;
		emptyCells: String;
		fill: String;
		fillOpacity: String;
		fillRule: String;
		filter: String;
		flex: String;
		flexBasis: String;
		flexDirection: String;
		flexFlow: String;
		flexGrow: String;
		flexShrink: String;
		flexWrap: String;
		floodColor: String;
		floodOpacity: String;
		font: String;
		fontFamily: String;
		fontFeatureSettings: String;
		fontKerning: String;
		fontLanguageOverride: String;
		fontSize: String;
		fontSizeAdjust: String;
		fontStretch: String;
		fontStyle: String;
		fontSynthesis: String;
		fontVariant: String;
		fontVariantAlternates: String;
		fontVariantCaps: String;
		fontVariantEastAsian: String;
		fontVariantLigatures: String;
		fontVariantNumeric: String;
		fontVariantPosition: String;
		fontWeight: String;
		grid: String;
		gridArea: String;
		gridAutoColumns: String;
		gridAutoFlow: String;
		gridAutoRows: String;
		gridColumn: String;
		gridColumnEnd: String;
		gridColumnGap: String;
		gridColumnStart: String;
		gridGap: String;
		gridRow: String;
		gridRowEnd: String;
		gridRowGap: String;
		gridRowStart: String;
		gridTemplate: String;
		gridTemplateAreas: String;
		gridTemplateColumns: String;
		gridTemplateRows: String;
		height: String;
		hyphens: String;
		imageOrientation: String;
		imageRendering: String;
		imeMode: String;
		inlineSize: String;
		isolation: String;
		justifyContent: String;
		justifyItems: String;
		justifySelf: String;
		left: String;
		letterSpacing: String;
		lightingColor: String;
		lineHeight: String;
		listStyle: String;
		listStyleImage: String;
		listStylePosition: String;
		listStyleType: String;
		margin: String;
		marginBlockEnd: String;
		marginBlockStart: String;
		marginBottom: String;
		marginInlineEnd: String;
		marginInlineStart: String;
		marginLeft: String;
		marginRight: String;
		marginTop: String;
		marker: String;
		markerEnd: String;
		markerMid: String;
		markerOffset: String;
		markerStart: String;
		mask: String;
		maskType: String;
		maxBlockSize: String;
		maxHeight: String;
		maxInlineSize: String;
		maxWidth: String;
		minBlockSize: String;
		minHeight: String;
		minInlineSize: String;
		minWidth: String;
		mixBlendMode: String;
		objectFit: String;
		objectPosition: String;
		offsetBlockEnd: String;
		offsetBlockStart: String;
		offsetInlineEnd: String;
		offsetInlineStart: String;
		opacity: String;
		order: String;
		outline: String;
		outlineColor: String;
		outlineOffset: String;
		outlineStyle: String;
		outlineWidth: String;
		overflow: String;
		overflowClipBox: String;
		overflowX: String;
		overflowY: String;
		padding: String;
		paddingBlockEnd: String;
		paddingBlockStart: String;
		paddingBottom: String;
		paddingInlineEnd: String;
		paddingInlineStart: String;
		paddingLeft: String;
		paddingRight: String;
		paddingTop: String;
		pageBreakAfter: String;
		pageBreakBefore: String;
		pageBreakInside: String;
		paintOrder: String;
		perspective: String;
		perspectiveOrigin: String;
		pointerEvents: String;
		position: String;
		quotes: String;
		resize: String;
		right: String;
		rubyAlign: String;
		rubyPosition: String;
		scrollBehavior: String;
		scrollSnapCoordinate: String;
		scrollSnapDestination: String;
		scrollSnapPointsX: String;
		scrollSnapPointsY: String;
		scrollSnapType: String;
		scrollSnapTypeX: String;
		scrollSnapTypeY: String;
		shapeRendering: String;
		stopColor: String;
		stopOpacity: String;
		stroke: String;
		strokeDasharray: String;
		strokeDashoffset: String;
		strokeLinecap: String;
		strokeLinejoin: String;
		strokeMiterlimit: String;
		strokeOpacity: String;
		strokeWidth: String;
		tableLayout: String;
		textAlign: String;
		textAnchor: String;
		textCombineUpright: String;
		textDecoration: String;
		textDecorationColor: String;
		textDecorationLine: String;
		textDecorationStyle: String;
		textEmphasis: String;
		textEmphasisColor: String;
		textEmphasisPosition: String;
		textEmphasisStyle: String;
		textIndent: String;
		textOrientation: String;
		textOverflow: String;
		textRendering: String;
		textShadow: String;
		textTransform: String;
		top: String;
		touchAction: String;
		transform: String;
		transformBox: String;
		transformOrigin: String;
		transformStyle: String;
		transition: String;
		transitionDelay: String;
		transitionDuration: String;
		transitionProperty: String;
		transitionTimingFunction: String;
		unicodeBidi: String;
		vectorEffect: String;
		verticalAlign: String;
		visibility: String;
		whiteSpace: String;
		width: String;
		willChange: String;
		wordBreak: String;
		wordSpacing: String;
		wordWrap: String;
		writingMode: String;
		zIndex: String;
		webkitAnimation: String;
		webkitAnimationDelay: String;
		webkitAnimationDirection: String;
		webkitAnimationDuration: String;
		webkitAnimationFillMode: String;
		webkitAnimationIterationCount: String;
		webkitAnimationName: String;
		webkitAnimationPlayState: String;
		webkitAnimationTimingFunction: String;
		webkitAppearance: String;
		webkitBackfaceVisibility: String;
		webkitBackgroundClip: String;
		webkitBackgroundOrigin: String;
		webkitBackgroundSize: String;
		webkitBorderBottomLeftRadius: String;
		webkitBorderBottomRightRadius: String;
		webkitBorderImage: String;
		webkitBorderRadius: String;
		webkitBorderTopLeftRadius: String;
		webkitBorderTopRightRadius: String;
		webkitBoxAlign: String;
		webkitBoxFlex: String;
		webkitBoxOrdinalGroup: String;
		webkitBoxOrient: String;
		webkitBoxPack: String;
		webkitBoxShadow: String;
		webkitBoxSizing: String;
		webkitPerspective: String;
		webkitPerspectiveOrigin: String;
		webkitTextSizeAdjust: String;
		webkitTransform: String;
		webkitTransformOrigin: String;
		webkitTransformStyle: String;
		webkitTransition: String;
		webkitTransitionDelay: String;
		webkitTransitionDuration: String;
		webkitTransitionProperty: String;
		webkitTransitionTimingFunction: String;
		webkitUserSelect: String;
	end;

  JElement = partial class external 'Element' (JNode)
  public
    Style: JCSS2Properties;
  end;

  JCSSImportRule = class external 'CSSImportRule' (JCSSRule)
  public
    href: String;
    media: JMediaList; { SameObject,PutForwards=mediaText }
    styleSheet: JCSSStyleSheet; { SameObject }
  end;

  JCSSGroupingRule = class external 'CSSGroupingRule' (JCSSRule)
  public
    cssRules: JCSSRuleList; { SameObject }
    function insertRule(rule: String; &index: Integer): Integer;
    procedure deleteRule(&index: Integer);
  end;

  JCSSMediaRule = class external 'CSSMediaRule' (JCSSGroupingRule)
  public
    media: JMediaList; { SameObject,PutForwards=mediaText }
  end;

  JCSSPageRule = class external 'CSSPageRule' (JCSSGroupingRule)
  public
    selectorText: String;
    style: JCSSStyleDeclaration; { SameObject,PutForwards=cssText }
  end;

  JCSSFontFaceRule = class external 'CSSPageRule' (JCSSRule)
  public
    style: JCSSStyleDeclaration;
  end;

  JCSSMarginRule = class external 'CSSMarginRule' (JCSSRule)
  public
    name: String;
    style: JCSSStyleDeclaration; { SameObject,PutForwards=cssText }
  end;

  JCSSNamespaceRule = class external 'CSSNamespaceRule' (JCSSRule)
  public
    namespaceURI: String;
    prefix: String;
  end;

  // NoInterfaceObject
  JElementCSSInlineStyle = class external 'ElementCSSInlineStyle'
  public
    style: JCSSStyleDeclaration; { SameObject, PutForwards=cssText }
  end;

  JCSS = class external 'CSS'
  public
    function escape(ident: String): String;
  end;

  JWindow = partial class external 'Window'
  public
    function getComputedStyle(elt: JElement): JCSSStyleDeclaration; overload; { NewObject }
    function getComputedStyle(elt: JElement; pseudoElt: String): JCSSStyleDeclaration; overload; { NewObject }
  end;

  JDocument = partial class external 'Document'
  public
    styleSheets: JStyleSheetList; { SameObject }
  end;