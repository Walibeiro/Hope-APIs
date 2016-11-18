unit Mozilla.ChromeUtils;

interface

type
  // ChromeOnly,Exposed=( Window , System)
  JChromeUtils = class external 'ChromeUtils' (JThreadSafeChromeUtils)
  public
    function originAttributesToSuffix: JByteString; overload;
    function originAttributesToSuffix(originAttrs: JOriginAttributesDictionary): JByteString; overload;
    function originAttributesMatchPattern: Boolean; overload;
    function originAttributesMatchPattern(originAttrs: JOriginAttributesDictionary): Boolean; overload;
    function originAttributesMatchPattern(originAttrs: JOriginAttributesDictionary; pattern: JOriginAttributesPatternDictionary): Boolean; overload;
    function createOriginAttributesFromOrigin(origin: String): JOriginAttributesDictionary; { Throws } 
    function fillNonDefaultOriginAttributes: JOriginAttributesDictionary; overload;
    function fillNonDefaultOriginAttributes(originAttrs: JOriginAttributesDictionary): JOriginAttributesDictionary; overload;
    function isOriginAttributesEqual: Boolean; overload;
    function isOriginAttributesEqual(aA: JOriginAttributesDictionary): Boolean; overload;
    function isOriginAttributesEqual(aA: JOriginAttributesDictionary; aB: JOriginAttributesDictionary): Boolean; overload;
  end;

  JOriginAttributesDictionary = class external 'OriginAttributesDictionary'
  public
    appId: Integer;
    userContextId: Integer;
    inIsolatedMozBrowser: Boolean;
    addonId: String;
    privateBrowsingId: Integer;
    firstPartyDomain: String;
  end;

  JOriginAttributesPatternDictionary = class external 'OriginAttributesPatternDictionary'
  public
    appId: Integer;
    userContextId: Integer;
    inIsolatedMozBrowser: Boolean;
    addonId: String;
    privateBrowsingId: Integer;
    firstPartyDomain: String;
  end;

implementation

end.
