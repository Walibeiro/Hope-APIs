unit W3C.ServiceWorkers;

interface

uses
  W3C.DOM4, W3C.PageVisibility, W3C.WebMessaging, W3C.WebWorkers,
  WHATWG.Fetch;

type
  JServiceWorkerState = (swsInstalling, swsInstalled, swsActivating, swsActivated, swsRedundant);

  // SecureContext,Exposed=( Window , Worker)
  JServiceWorker = class external 'ServiceWorker' (JEventTarget)
  public
    scriptURL: String;
    state: JServiceWorkerState;
    onstatechange: TEventHandler;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of Variant); overload;
  end;

  // SecureContext,Exposed=( Window , Worker)
  JServiceWorkerRegistration = class external 'ServiceWorkerRegistration' (JEventTarget)
  public
    installing: JServiceWorker;
    waiting: JServiceWorker;
    active: JServiceWorker;
    scope: String;
    onupdatefound: TEventHandler;
    procedure update; { NewObject }
    function unregister: boolean; { NewObject } 
  end;

  JRegistrationOptions = class external 'RegistrationOptions'
  public
    scope: String;
// TODO   &type: JWorkerType;
  end;

  // SecureContext,Exposed=( Window , Worker)
  JServiceWorkerContainer = class external 'ServiceWorkerContainer' (JEventTarget)
  public
    controller: JServiceWorker;
    ready: JServiceWorkerRegistration; { SameObject }
    oncontrollerchange: TEventHandler;
    onmessage: TEventHandler;
    function register(scriptURL: String): JServiceWorkerRegistration; overload; { NewObject }
    function register(scriptURL: String; options: JRegistrationOptions): JServiceWorkerRegistration; overload; { NewObject }
    function getRegistration: Variant; overload; { NewObject }
    function getRegistration(clientURL: String): Variant; overload; { NewObject }
    function getRegistrations: array of JServiceWorkerRegistration; overload; { NewObject }
    procedure startMessages;
  end;

  // Constructor( DOMString type , optional ServiceWorkerMessageEventInit eventInitDict),Exposed=( Window , Worker)
  JServiceWorkerMessageEvent = class external 'ServiceWorkerMessageEvent' (JEvent)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Variant; { SameObject }
    sourceAsServiceWorker: JServiceWorker; external 'source'; { SameObject }
    sourceAsMessagePort: JMessagePort; external 'source'; { SameObject }
//  readonly attribute FrozenArray<MessagePort>? ports;
  end;

  JServiceWorkerMessageEventInit = class external 'ServiceWorkerMessageEventInit' (JEventInit)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Variant;
    sourceAsServiceWorker: JServiceWorker; external 'source';
    sourceAsMessagePort: JMessagePort; external 'source';
    ports: array of JMessagePort;
  end;

  JFrameType = String;
  JFrameTypeHelper = strict helper for JFrameType
    const Auxiliary = 'auxiliary';
    const TopLevel = 'top-level';
    const Nested = 'nested';
    const None = 'none';
  end;

  // Exposed=ServiceWorker
  JClient = class external 'Client'
  public
    url: String;
    frameType: JFrameType;
    id: String;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of Variant); overload;
  end;

  JClientType = String;
  JClientTypeHelper = strict helper for JClientType
    const Window = 'window';
    const Worker = 'worker';
    const SharedWorker = 'sharedworker';
    const All = 'all';
  end;

  JClientQueryOptions = class external 'ClientQueryOptions'
  public
    includeUncontrolled: Boolean;
    &type: JClientType;
  end;

  // Exposed=ServiceWorker
  JWindowClient = class external 'WindowClient' (JClient)
  public
    visibilityState: JVisibilityState;
    focused: Boolean;
    function focus: JWindowClient; { NewObject }
    function navigate(url: String): JWindowClient; { NewObject }
  end;

  // Exposed=ServiceWorker
  JClients = class external 'Clients'
  public
    function get(id: String): Variant; { NewObject }
    function matchAll: array of JClient; overload; { NewObject }
    function matchAll(options: JClientQueryOptions): array of JClient; overload; { NewObject }
    function openWindow(url: String): JWindowClient; { NewObject }
    procedure claim; { NewObject }
  end;

  // Global=( Worker , ServiceWorker),Exposed=ServiceWorker
  JServiceWorkerGlobalScope = class external 'ServiceWorkerGlobalScope' (JWorkerGlobalScope)
  public
    clients: JClients; { SameObject } 
    registration: JServiceWorkerRegistration; { SameObject } 
    oninstall: TEventHandler;
    onactivate: TEventHandler;
    onfetch: TEventHandler;
    onmessage: TEventHandler;
    procedure skipWaiting; { NewObject }
  end;

  // Constructor( DOMString type , optional ExtendableEventInit eventInitDict),Exposed=ServiceWorker
  JExtendableEvent = class external 'ExtendableEvent' (JEvent)
  public
    procedure waitUntil(f: Variant);
  end;

  JExtendableEventInit = class external 'ExtendableEventInit' (JEventInit)
  public
  end;

  // Constructor( DOMString type , FetchEventInit eventInitDict),Exposed=ServiceWorker
  JFetchEvent = class external 'FetchEvent' (JExtendableEvent)
  public
    request: JRequest; { SameObject } 
    clientId: String;
    isReload: Boolean;
    procedure respondWith(r: Response);
  end;

  JFetchEventInit = class external 'FetchEventInit' (JExtendableEventInit)
  public
    request: JRequest;
    clientId: String;
    isReload: Boolean;
  end;

  // Constructor( DOMString type , optional ExtendableMessageEventInit eventInitDict),Exposed=ServiceWorker
  JExtendableMessageEvent = class external 'ExtendableMessageEvent' (JExtendableEvent)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Union; { SameObject } 
//  readonly attribute FrozenArray<MessagePort>? ports;
  end;

  JExtendableMessageEventInit = class external 'ExtendableMessageEventInit' (JExtendableEventInit)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Union;
    ports: array of JMessagePort;
  end;

  JWindowOrWorkerGlobalScope = partial class external 'WindowOrWorkerGlobalScope'
  public
    caches: JCacheStorage; { SecureContext,SameObject } 
  end;

  JCacheQueryOptions = class external 'CacheQueryOptions'
  public
    ignoreSearch: Boolean;
    ignoreMethod: Boolean;
    ignoreVary: Boolean;
    cacheName: String;
  end;

  // SecureContext,Exposed=( Window , Worker)
  JCache = class external 'Cache'
  public
    function match(request: JRequestInfo): Variant; overload; { NewObject }
    function match(request: JRequestInfo; options: JCacheQueryOptions): any; overload; { NewObject } 
    function matchAll: array of Response; overload; { NewObject } 
    function matchAll(request: JRequestInfo): array of Response; overload; { NewObject } 
    function matchAll(request: JRequestInfo; options: JCacheQueryOptions): array of Response; overload; { NewObject } 
    function add(request: JRequestInfo): void; { NewObject } 
    function addAll(requests: array of JRequestInfo): void; { NewObject } 
    function put(request: JRequestInfo; response: JResponse): void; { NewObject } 
    function delete(request: JRequestInfo): boolean; overload; { NewObject } 
    function delete(request: JRequestInfo; options: JCacheQueryOptions): boolean; overload; { NewObject } 
    function keys: array of JRequest; overload; { NewObject }
    function keys(request: JRequestInfo): array of JRequest; overload; { NewObject }
    function keys(request: JRequestInfo; options: JCacheQueryOptions): array of JRequest; overload; { NewObject }
  end;

  JCacheBatchOperation = class external 'CacheBatchOperation'
  public
    &type: String;
    request: JRequest;
    response: JResponse;
    options: JCacheQueryOptions;
  end;

  // SecureContext,Exposed=( Window , Worker)
  JCacheStorage = class external 'CacheStorage'
  public
    function match(request: JRequestInfo): any; overload; { NewObject } 
    function match(request: JRequestInfo; options: JCacheQueryOptions): any; overload; { NewObject } 
    function has(cacheName: String): boolean; { NewObject } 
    function open(cacheName: String): Cache; { NewObject } 
    function delete(cacheName: String): boolean; { NewObject } 
    function keys: array of DOMString; { NewObject } 
  end;

  JWorkerNavigator = partial class external 'WorkerNavigator'
  public
    serviceWorker: JServiceWorkerContainer; { SecureContext,SameObject }
  end;

  JNavigator = partial class external 'Navigator'
  public
    serviceWorker: JServiceWorkerContainer; { SecureContext,SameObject }
  end;