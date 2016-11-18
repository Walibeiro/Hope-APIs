unit W3C.EncryptedMediaExtensions;

interface

uses
  ECMA.TypedArray, W3C.DOM4;

type
  JMediaKeysRequirement = String;
  JMediaKeysRequirementHelper = strict helper for JMediaKeysRequirement
    const Required = 'required';
    const Optional = 'optional';
    const NotAllowed = 'not-allowed';
  end;

  JMediaKeyStatus = String;
  JMediaKeyStatusHelper = strict helper for JMediaKeyStatus
    const Usable = 'usable';
    const Expired = 'expired';
    const Released = 'released';
    const OutputRestricted = 'output-restricted';
    const OutputDownscaled = 'output-downscaled';
    const StatusPending = 'status-pending';
    const InternalError = 'internal-error';
  end;

  JMediaKeyMessageType = String;
  JMediaKeyMessageTypeHelper = strict helper for JMediaKeyMessageType
    const LicenseRequest = 'license-request';
    const LicenseRenewal = 'license-renewal';
    const LicenseRelease = 'license-release';
    const IndividualizationRequest = 'individualization-request';
  end;

  JMediaKeySessionType = String;
  JMediaKeySessionTypeHelper = strict helper for JMediaKeySessionType
    const Temporary = 'temporary';
    const PersistentUsageRecord = 'persistent-usage-record';
    const PersistentLicense = 'persistent-license';
  end;

  JMediaKeySystemMediaCapability = class external 'MediaKeySystemMediaCapability'
  public
    contentType: String;
    robustness: String;
  end;

  JMediaKeySystemConfiguration = class external 'MediaKeySystemConfiguration'
  public
    label: String;
    initDataTypes: array of String;
    audioCapabilities: array of JMediaKeySystemMediaCapability;
    videoCapabilities: array of JMediaKeySystemMediaCapability;
    distinctiveIdentifier: JMediaKeysRequirement;
    persistentState: JMediaKeysRequirement;
    sessionTypes: array of String;
  end;

  JMediaKeySession = partial class external 'MediaKeySession' (JEventTarget)
  public
    sessionId: String;
    expiration: Float;
  end;

  JMediaKeys = class external 'MediaKeys'
  public
    function createSession: JMediaKeySession; overload;
    function createSession(sessionType: JMediaKeySessionType): JMediaKeySession; overload;
    function setServerCertificate(serverCertificate: JArrayBuffer): boolean; overload;
    function setServerCertificate(serverCertificate: JArrayBufferView): boolean; overload;
  end;

  JMediaKeySystemAccess = class external 'MediaKeySystemAccess'
  public
    keySystem: String;
    function getConfiguration: JMediaKeySystemConfiguration;
    function createMediaKeys: JMediaKeys;
  end;

  JMediaKeyStatusMap = class external 'MediaKeyStatusMap'
  public
    size: Integer;
    function has(keyId: JArrayBuffer): Boolean; overload;
    function has(keyId: JArrayBufferView): Boolean; overload;
    function get(keyId: JArrayBuffer): Variant; overload;
    function get(keyId: JArrayBufferView): Variant; overload;
  end;

  JMediaKeySession = partial class external 'MediaKeySession' (JEventTarget)
  public
    closed: procedure;
    keyStatuses: JMediaKeyStatusMap;
    onkeystatuseschange: TEventHandler;
    onmessage: TEventHandler;
    procedure generateRequest(initDataType: String; initData: JArrayBuffer); overload;
    procedure generateRequest(initDataType: String; initData: JArrayBufferView); overload;
    function load(sessionId: String): boolean;
    procedure update(response: JArrayBuffer); overload;
    procedure update(response: JArrayBufferView); overload;
    procedure close;
    procedure remove;
  end;

  JMediaKeyMessageEventInit = class external 'MediaKeyMessageEventInit' (JEventInit)
  public
    messageType: JMediaKeyMessageType;
    message: JArrayBuffer;
  end;

  JMediaKeyMessageEvent = class external 'MediaKeyMessageEvent' (JEvent)
  public
    messageType: JMediaKeyMessageType;
    message: JArrayBuffer;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JMediaKeyMessageEventInit); overload;
  end;

  JHTMLMediaElement = class external 'HTMLMediaElement' (JEventTarget)
  public
    mediaKeys: JMediaKeys;
    onencrypted: TEventHandler;
    onwaitingforkey: TEventHandler;
    procedure setMediaKeys(mediaKeys: JMediaKeys);
  end;

  JMediaEncryptedEventInit = class external 'MediaEncryptedEventInit' (JEventInit)
  public
    initDataType: String;
    initData: JArrayBuffer;
  end;

  JMediaEncryptedEvent = class external 'MediaEncryptedEvent' (JEvent)
  public
    initDataType: String;
    initData: JArrayBuffer;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JMediaEncryptedEventInit); overload;
  end;

  JNavigator = partial class external 'Navigator'
  public
    function requestMediaKeySystemAccess(keySystem: String;
      supportedConfigurations: array of JMediaKeySystemConfiguration): JMediaKeySystemAccess;
  end;
