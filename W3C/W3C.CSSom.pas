unit W3C.CSSOM;

interface

uses
  W3C.DOM4, W3C.Geometry;

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
    MARGIN_RULE: Integer = 9;
    NAMESPACE_RULE: Integer = 10;
  end;

  // ArrayClass
  JCSSRuleList = class external 'CSSRuleList'
  public
    length: Integer;
    function item(&index: Integer): JCSSRule;
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
    function item(&index: Integer): JStyleSheet;
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
    function item(&index: Integer): String;
    function getPropertyValue(&property: String): String;
    function getPropertyPriority(&property: String): String;
    procedure setProperty(&property, value: String { TreatNullAs=EmptyString } ; priority: String = '' { TreatNullAs=EmptyString } );
    procedure setPropertyValue(&property, value: String { TreatNullAs=EmptyString } );
    procedure setPropertyPriority(&property, priority: String { TreatNullAs=EmptyString } );
    function removeProperty(&property: String): String;
  end;

  JCSSStyleRule = class external 'CSSStyleRule' (JCSSRule)
  public
    selectorText: String;
    style: JCSSStyleDeclaration; { SameObject,PutForwards=cssText }
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

  JWindow = partial class external 'Window'
  public
    function getComputedStyle(elt: JElement): JCSSStyleDeclaration; overload; { NewObject }
    function getComputedStyle(elt: JElement; pseudoElt: String): JCSSStyleDeclaration; overload; { NewObject }
  end;

  JCSS = class external 'CSS'
  public
    function escape(ident: String): String;
  end;

  JDocument = partial class external 'Document'
  public
    styleSheets: JStyleSheetList; { SameObject }
  end;