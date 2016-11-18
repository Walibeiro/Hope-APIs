unit W3C.FindTextAPI;

interface

uses
  W3C.DOM4;

type
  JCaseFoldingType = String;
  JCaseFoldingTypeHelper = strict helper for JcaseFoldingType
    const None = 'none';
    const Ascii = 'ascii';
    const Unicode = 'unicode';
    const LanguageSensitive = 'language-sensitive';
  end;

  JUnicodeEquivalenceType = String;
  JUnicodeEquivalenceTypeHelper = strict helper for JUnicodeEquivalenceType
    const None = 'none';
    const Canonical = 'canonical';
    const Compatibility = 'compatibility';
    const All = 'all';
  end;

  JFindTextArgs = class external 'FindTextArgs'
  public
    text: String;
    textDistance: Integer;
    prefix: String;
    prefixDistance: Integer;
    suffix: String;
    suffixDistance: Integer;
    scope: JRange;
    startRange: JRange;
    caseFolding: JcaseFoldingType;
    unicodeNormalization: JUnicodeEquivalenceType;
    wholeWord: Boolean;
    wrap: Boolean;
  end;

  JResultMatch = class external 'ResultMatch'
  public
    result: JRange;
    FindTextArgs: JFindTextArgs;
  end;

  JResultMatchAll = class external 'ResultMatchAll'
  public
    result: array of JRange;
    FindTextArgs: JFindTextArgs;
  end;

  JFindText = class external 'FindText' (JEventTarget)
  public
    text: String;
    textDistance: Integer;
    prefix: String;
    prefixDistance: Integer;
    suffix: String;
    suffixDistance: Integer;
    scope: JElement;
    startRange: JRange;
    caseFolding: JcaseFoldingType;
    unicodeNormalization: JUnicodeEquivalenceType;
    wholeWord: Boolean;
    wrap: Boolean;
    cursor: Integer;
    searchContent: String;
    sourceMap: String;
    constructor Create; overload;
    constructor Create(args: JFindTextArgs); overload;
    function search: JResultMatch; overload;
    function search(&forward: Boolean): JResultMatch; overload;
    function searchAll: JResultMatch; overload;
    function searchAll(&forward: Boolean): JResultMatch; overload;
  end;

  JEditDistance = class external 'EditDistance'
  public
    function findEditDistance(comparisonString, targetString: String): Integer;
  end;