unit Mozilla.MediaKeySystemAccess;

interface

type
  JMediaKeysRequirement = (mkrRequired, mkrOptional, mkrNot-allowed);

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

  // Pref=media.eme.apiVisible
  JMediaKeySystemAccess = class external 'MediaKeySystemAccess'
  public
    keySystem: String;
    function getConfiguration: JMediaKeySystemConfiguration; { NewObject } 
    function createMediaKeys: MediaKeys; { NewObject } 
  end;

implementation

end.
