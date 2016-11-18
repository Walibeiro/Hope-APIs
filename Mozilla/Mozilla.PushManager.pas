unit Mozilla.PushManager;

interface

type
  JPushSubscriptionOptionsInit = class external 'PushSubscriptionOptionsInit'
  public
    applicationServerKey: JBufferSource;
  end;

  // JSImplementation=@mozilla.org/push/PushManager;1,ChromeOnly,Constructor( DOMString scope)
  JPushManagerImpl = class external 'PushManagerImpl'
  public
    function subscribe: PushSubscription; overload;
    function subscribe(options: JPushSubscriptionOptionsInit): PushSubscription; overload;
    function getSubscription: PushSubscription;
    function permissionState: PushPermissionState; overload;
    function permissionState(options: JPushSubscriptionOptionsInit): PushPermissionState; overload;
  end;

  // Exposed=( Window , Worker),Func=nsContentUtils::PushEnabled,ChromeConstructor( DOMString scope)
  JPushManager = class external 'PushManager'
  public
    function subscribe: PushSubscription; overload; { Throws,UseCounter } 
    function subscribe(options: JPushSubscriptionOptionsInit): PushSubscription; overload; { Throws,UseCounter } 
    function getSubscription: PushSubscription; { Throws } 
    function permissionState: PushPermissionState; overload; { Throws } 
    function permissionState(options: JPushSubscriptionOptionsInit): PushPermissionState; overload; { Throws } 
  end;

  JPushPermissionState = (ppsGranted, ppsDenied, ppsPrompt);

implementation

end.
