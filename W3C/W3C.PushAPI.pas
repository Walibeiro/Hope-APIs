unit W3C.PushAPI;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.FileAPI, W3C.ServiceWorkers;

type
  JPushPermissionState = String;
  JPushPermissionStateHelper = strict helper for JPushPermissionState
    const Granted = 'granted';
    const Denied = 'denied';
    const Prompt = 'prompt';
  end;

  JPushEncryptionKeyName = String;
  JPushEncryptionKeyNameHelper = strict helper for JPushEncryptionKeyName
    const P256dh = 'p256dh';
    const Auth = 'auth';
  end;

  JPushSubscriptionOptions = class external 'PushSubscriptionOptions'
  public
    userVisibleOnly: Boolean;
  end;

  JPushSubscription = class external 'PushSubscription'
  public
    endpoint: String;
    function getKey(&name: JPushEncryptionKeyName): JArrayBuffer;
    function unsubscribe: boolean;
  end;

  // Exposed = ServiceWorker
  JPushMessageData = class external 'PushMessageData'
  public
    function arrayBuffer: JArrayBuffer;
    function blob: JBlob;
    function json: JObject;
    function text: String;
  end;

  JServiceWorkerGlobalScope = partial class external 'ServiceWorkerGlobalScope'
  public
    onpush: TEventHandler;
    onpushsubscriptionchange: TEventHandler;
  end;

  JPushEventInit = class external 'PushEventInit' (JExtendableEventInit)
  public
    data: Variant;
    dataAsString: String; external 'data';
    dataAsArrayBuffer: JArrayBuffer; external 'data';
    dataAsArrayBufferView: JArrayBufferView; external 'data';
  end;

  // Exposed = ServiceWorker
  JPushEvent = class external 'PushEvent' (JExtendableEvent)
  public
    data: JPushMessageData;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JPushEventInit); overload;
  end;

  JPushManager = class external 'PushManager'
  public
    function subscribe: JPushSubscription; overload;
    function subscribe(options: JPushSubscriptionOptions): JPushSubscription; overload;
    function getSubscription: JPushSubscription;
    function permissionState: JPushPermissionState; overload;
    function permissionState(options: JPushSubscriptionOptions): JPushPermissionState; overload;
  end;

  JServiceWorkerRegistration = partial class external 'ServiceWorkerRegistration'
  public
    pushManager: JPushManager;
  end;