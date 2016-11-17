unit W3C.ServiceWorkers;

interface

uses
  W3C.DOM4, W3C.PageVisibility, W3C.WebMessaging, W3C.WebWorkers,
  WHATWG.Fetch;

type
  JServiceWorkerState = String;
  JServiceWorkerStateHelper = strict helper for JServiceWorkerState
    const Installing = 'installing';
    const Installed = 'installed';
    const Activating = 'activating';
    const Activated = 'activated';
    const Redundant = 'redundant';
  end;

  // SecureContext,
	// Exposed = (Window, Worker)
  JServiceWorker = class external 'ServiceWorker' (JEventTarget)
  public
    scriptURL: String;
    state: JServiceWorkerState;
    onstatechange: TEventHandler;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of Variant); overload;
  end;

  // SecureContext
	// Exposed = (Window, Worker)
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

  // SecureContext
	// Exposed = (Window, Worker)
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

  // Exposed = (Window, Worker)
  JServiceWorkerMessageEvent = class external 'ServiceWorkerMessageEvent' (JEvent)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Variant; { SameObject }
    sourceAsServiceWorker: JServiceWorker; external 'source'; { SameObject }
    sourceAsMessagePort: JMessagePort; external 'source'; { SameObject }
//  readonly attribute FrozenArray<MessagePort>? ports;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JServiceWorkerMessageEventInit); overload;
  end;

  JFrameType = String;
  JFrameTypeHelper = strict helper for JFrameType
    const Auxiliary = 'auxiliary';
    const TopLevel = 'top-level';
    const Nested = 'nested';
    const None = 'none';
  end;

  // Exposed = ServiceWorker
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

  JExtendableEventInit = class external 'ExtendableEventInit' (JEventInit)
  public
  end;

  // Exposed = ServiceWorker
  JExtendableEvent = class external 'ExtendableEvent' (JEvent)
  public
    procedure waitUntil(f: Variant);
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JExtendableEventInit); overload;
  end;

  JFetchEventInit = class external 'FetchEventInit' (JExtendableEventInit)
  public
    request: JRequest;
    clientId: String;
    isReload: Boolean;
  end;

  // Exposed = ServiceWorker
  JFetchEvent = class external 'FetchEvent' (JExtendableEvent)
  public
    request: JRequest; { SameObject } 
    clientId: String;
    isReload: Boolean;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JFetchEventInit); overload;
    procedure respondWith(r: JResponse);
  end;

  JExtendableMessageEventInit = class external 'ExtendableMessageEventInit' (JExtendableEventInit)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
// TODO    source: Variant; { SameObject }
    ports: array of JMessagePort;
  end;

  // Exposed=ServiceWorker
  JExtendableMessageEvent = class external 'ExtendableMessageEvent' (JExtendableEvent)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
// TODO    source: Variant; { SameObject }
//  readonly attribute FrozenArray<MessagePort>? ports;
    constructor Create(&type: String; eventInitDict: JExtendableMessageEventInit);
  end;

  JCacheQueryOptions = class external 'CacheQueryOptions'
  public
    ignoreSearch: Boolean;
    ignoreMethod: Boolean;
    ignoreVary: Boolean;
    cacheName: String;
  end;

  // SecureContext, Exposed = (Window, Worker)
  JCache = class external 'Cache'
  public
    function match(request: JRequest): Variant; overload; { NewObject }
    function match(request: String): Variant; overload; { NewObject }
    function match(request: JRequest; options: JCacheQueryOptions): Variant; overload; { NewObject }
    function match(request: String; options: JCacheQueryOptions): Variant; overload; { NewObject }
    function matchAll: array of JResponse; overload; { NewObject }
    function matchAll(request: JRequest): array of JResponse; overload; { NewObject }
    function matchAll(request: String): array of JResponse; overload; { NewObject }
    function matchAll(request: JRequest; options: JCacheQueryOptions): array of JResponse; overload; { NewObject }
    function matchAll(request: String; options: JCacheQueryOptions): array of JResponse; overload; { NewObject }
    procedure add(request: JRequest); overload; { NewObject }
    procedure add(request: String); overload; { NewObject }
    procedure addAll(requests: array of JRequest); overload; { NewObject }
    procedure addAll(requests: array of String); overload; { NewObject }
    procedure put(request: JRequest; response: JResponse); overload; { NewObject }
    procedure put(request: String; response: JResponse); overload; { NewObject }
    function delete(request: JRequest): boolean; overload; { NewObject }
    function delete(request: String): boolean; overload; { NewObject }
    function delete(request: JRequest; options: JCacheQueryOptions): boolean; overload; { NewObject }
    function delete(request: String; options: JCacheQueryOptions): boolean; overload; { NewObject }
    function keys: array of JRequest; overload; { NewObject }
    function keys(request: JRequest): array of JRequest; overload; { NewObject }
    function keys(request: String): array of JRequest; overload; { NewObject }
    function keys(request: JRequest; options: JCacheQueryOptions): array of JRequest; overload; { NewObject }
    function keys(request: String; options: JCacheQueryOptions): array of JRequest; overload; { NewObject }
  end;

  JCacheBatchOperation = class external 'CacheBatchOperation'
  public
    &type: String;
    request: JRequest;
    response: JResponse;
    options: JCacheQueryOptions;
  end;

  // SecureContext, Exposed = (Window, Worker)
  JCacheStorage = class external 'CacheStorage'
  public
    function match(request: JRequest): Variant; overload; { NewObject }
    function match(request: String): Variant; overload; { NewObject }
    function match(request: JRequest; options: JCacheQueryOptions): Variant; overload; { NewObject }
    function match(request: String; options: JCacheQueryOptions): Variant; overload; { NewObject }
    function has(cacheName: String): boolean; { NewObject } 
    function open(cacheName: String): JCache; { NewObject }
    function delete(cacheName: String): boolean; { NewObject } 
    function keys: array of String; { NewObject }
  end;

(*
  // TODO
  JWorkerNavigator = partial class external 'WorkerNavigator'
  public
    serviceWorker: JServiceWorkerContainer; { SecureContext,SameObject }
  end;
*)

  JNavigator = partial class external 'Navigator'
  public
    serviceWorker: JServiceWorkerContainer; { SecureContext,SameObject }
  end;

  JWindowOrWorkerGlobalScope = partial class external 'WindowOrWorkerGlobalScope'
  public
    caches: JCacheStorage; { SecureContext,SameObject }
  end;