unit Mozilla.U2F;

interface

type
  // NoInterfaceObject
  JGlobalU2F = class external 'GlobalU2F'
  public
    u2f: JU2F; { Throws,Pref=security.webauth.u2f } 
  end;

  TErrorCode = Integer;
  TTransports = array of JTransport;
  JTransport = (tBt, tBle, tNfc, tUsb);

  JClientData = class external 'ClientData'
  public
    typ: String;
    challenge: String;
    origin: String;
  end;

  JRegisterRequest = class external 'RegisterRequest'
  public
    version: String;
    challenge: String;
  end;

  JRegisterResponse = class external 'RegisterResponse'
  public
    version: String;
    registrationData: String;
    clientData: String;
    errorCode: TErrorCode;
    errorMessage: String;
  end;

  JRegisteredKey = class external 'RegisteredKey'
  public
    version: String;
    keyHandle: String;
    transports: TTransports;
    appId: String;
  end;

  JSignResponse = class external 'SignResponse'
  public
    keyHandle: String;
    signatureData: String;
    clientData: String;
    errorCode: TErrorCode;
    errorMessage: String;
  end;

  JU2FRegisterCallback = procedure(response: JRegisterResponse);

  JU2FSignCallback = procedure(response: JSignResponse);

  // Pref=security.webauth.u2f
  JU2F = class external 'U2F'
  const 
    OK: Integer = 0;
    OTHER_ERROR: Integer = 1;
    BAD_REQUEST: Integer = 2;
    CONFIGURATION_UNSUPPORTED: Integer = 3;
    DEVICE_INELIGIBLE: Integer = 4;
    TIMEOUT: Integer = 5;
  public
    procedure register(appId: String; registerRequests: array of JRegisterRequest; registeredKeys: array of JRegisteredKey; Callback: JU2FRegisterCallback); overload; { Throws } 
    procedure register(appId: String; registerRequests: array of JRegisterRequest; registeredKeys: array of JRegisteredKey; Callback: JU2FRegisterCallback; opt_timeoutSeconds: Integer); overload; { Throws } 
    procedure sign(appId: String; challenge: String; registeredKeys: array of JRegisteredKey; Callback: JU2FSignCallback); overload; { Throws } 
    procedure sign(appId: String; challenge: String; registeredKeys: array of JRegisteredKey; Callback: JU2FSignCallback; opt_timeoutSeconds: Integer); overload; { Throws } 
  end;

implementation

end.
