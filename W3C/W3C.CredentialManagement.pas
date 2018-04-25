unit W3C.CredentialManagement;

interface

uses
  W3C.DOM4, W3C.Html5;

type
  // Exposed=Window,SecureContext
  JCredential = class external 'Credential'
  public
    id: String;
    &type: String;
  end;

  // NoInterfaceObject,SecureContext
  JCredentialUserData = class external 'CredentialUserData'
  public
    name: String;
    iconURL: String;
  end;

  JCredentialMediationRequirement = String;
  JCredentialMediationRequirementHelper = strict helper for JCredentialMediationRequirement
    const Silent = 'silent';
    const Optional = 'optional';
    const Required = 'required';
  end;

  JFederatedCredentialRequestOptions = class external 'FederatedCredentialRequestOptions'
  public
    providers: array of String;
    protocols: array of String;
  end;

  JCredentialRequestOptions = class external 'CredentialRequestOptions'
  public
    mediation: JCredentialMediationRequirement;
    password: Boolean;
    federated: JFederatedCredentialRequestOptions;
  end;

  JCredentialData = class external 'CredentialData'
  public
    id: String; // required
  end;

  // TCredentialBodyType = Union;
  JPasswordCredentialData = class external 'PasswordCredentialData' (JCredentialData)
  public
    &name: String;
    iconURL: String;
    password: String; // required
  end;

  JPasswordCredentialInit = JPasswordCredentialData;

  // Exposed=Window, SecureContext
  JPasswordCredential = class external 'PasswordCredential' (JCredential)
  public
    password: String;
    constructor Create(form: JHTMLFormElement); overload;
    constructor Create(data: JPasswordCredentialData); overload;
  end;

  JFederatedCredentialInit = class external 'FederatedCredentialInit' (JCredentialData)
  public
    &name: String;
    iconURL: String;
    provider: String; // required
    protocol: String;
  end;

  // Exposed=Window, SecureContext
  JFederatedCredential = class external 'FederatedCredential' (JCredential)
  public
    provider: String;
    protocol: String;
    constructor Create(data: JFederatedCredentialInit);
  end;

  JCredentialCreationOptions = class external 'CredentialCreationOptions'
  public
    password: JPasswordCredentialInit;
    federated: JFederatedCredentialInit;
  end;

  // Exposed=Window, SecureContext
  JCredentialsContainer = class external 'CredentialsContainer'
  public
    function get: JCredential; overload;
    function get(options: JCredentialRequestOptions): JCredential; overload;
    function store(credential: JCredential): JCredential;
    function create: JCredential; overload;
    function create(options: JCredentialCreationOptions): JCredential; overload;
    procedure preventSilentAccess;
  end;

  JNavigator = partial class external 'Navigator'
  public
    credentials: JCredentialsContainer; { SecureContext, SameObject }
  end;