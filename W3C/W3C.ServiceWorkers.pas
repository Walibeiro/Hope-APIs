unit W3C.ServiceWorkers;

interface

uses
  ECMA.Promise, W3C.DOM4, W3C.Html5, W3C.PageVisibility, W3C.WebMessaging,
  W3C.WebWorkers, WHATWG.Fetch;

type
  JServiceWorkerState = String;
  JServiceWorkerStateHelper = strict helper for JServiceWorkerState
    const Installing = 'installing';
    const Installed = 'installed';
    const Activating = 'activating';
    const Activated = 'activated';
    const Redundant = 'redundant';
  end;

  JPostMessageOptions = class external
    transfer: array of Variant;
  end;

  // SecureContext,
	// Exposed = (Window, Worker)
  JServiceWorker = class external 'ServiceWorker' (JEventTarget)
  public
    onstatechange: TEventHandler;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; options: JPostMessageOptions); overload;
    procedure postMessage(message: Variant; transfer: array of Variant); overload;

    property scriptURL: String;           // read only
    property state: JServiceWorkerState;  // read only
  end;

	JServiceWorkerUpdateViaCache = String;
  JServiceWorkerUpdateViaCacheHelper = strict helper for JServiceWorkerUpdateViaCache
    const Imports = 'imports';
    const All = 'all';
    const None = 'none';
  end;

	JNavigationPreloadState = class external 'NavigationPreloadState'
	public
		enabled: Boolean;
		headerValue: String;
	end;

  TOnFulFilledNavigationPreloadState = procedure(response: JNavigationPreloadState);

  JPromiseNavigationPreloadState = class external 'Promise' (JPromise)
  public
    class function resolve(value: JNavigationPreloadState): JPromiseNavigationPreloadState;

    function &then(onFulfilled: TOnFulFilledNavigationPreloadState): JPromiseNavigationPreloadState; overload;
    function &then(onFulfilled: TOnFulFilledNavigationPreloadState; onRejected: TOnRejected): JPromiseNavigationPreloadState; overload;
  end;

	// SecureContext,Exposed=( Window , Worker)
	JNavigationPreloadManager = class external 'NavigationPreloadManager'
	public
		function enable: JPromiseVoid;
		function disable: JPromiseVoid;
		function setHeaderValue(value: String): JPromiseVoid;
		function getState: JPromiseNavigationPreloadState;
	end;

  // SecureContext
	// Exposed = (Window, Worker)
  JServiceWorkerRegistration = partial class external 'ServiceWorkerRegistration' (JEventTarget)
  public
    scope: String;
		updateViaCache: JServiceWorkerUpdateViaCache;
		onupdatefound: TEventHandler;
    function update: JPromiseVoid; { NewObject }
    function unregister: JPromiseBoolean; { NewObject }

    property installing: JServiceWorker; // read only
    property waiting: JServiceWorker;    // read only
    property active: JServiceWorker;     // read only
		class property navigationPreload: JNavigationPreloadManager;// read only
  end;

  JRegistrationOptions = class external 'RegistrationOptions'
  public
    scope: String;
		&type: JWorkerType;
		updateViaCache: JServiceWorkerUpdateViaCache;
  end;

  TOnFulFilledServiceWorkerRegistration = procedure(response: JServiceWorkerRegistration);

  JPromiseServiceWorkerRegistration = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFilledServiceWorkerRegistration; reject: TOnRejected));
    class function resolve(value: JServiceWorkerRegistration): JPromiseServiceWorkerRegistration;

    function &then(onFulfilled: TOnFulFilledServiceWorkerRegistration): JPromiseServiceWorkerRegistration; overload;
    function &then(onFulfilled: TOnFulFilledServiceWorkerRegistration; onRejected: TOnRejected): JPromiseServiceWorkerRegistration; overload;
  end;

  TOnFulFilledServiceWorkerRegistrations = procedure(response: array of JServiceWorkerRegistration);

  JPromiseServiceWorkerRegistrations = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFilledServiceWorkerRegistrations; reject: TOnRejected));
    class function resolve(value: array of JServiceWorkerRegistration): JPromiseServiceWorkerRegistrations;

    function &then(onFulfilled: TOnFulFilledServiceWorkerRegistrations): JPromiseServiceWorkerRegistrations; overload;
    function &then(onFulfilled: TOnFulFilledServiceWorkerRegistrations; onRejected: TOnRejected): JPromiseServiceWorkerRegistrations; overload;
  end;

  // SecureContext
	// Exposed = (Window, Worker)
  JServiceWorkerContainer = class external 'ServiceWorkerContainer' (JEventTarget)
  public
    oncontrollerchange: TEventHandler;
    onmessage: TEventHandler;
    onmessageerror: TEventHandler;

    function register(scriptURL: String): JPromiseServiceWorkerRegistration; overload; { NewObject }
    function register(scriptURL: String; options: JRegistrationOptions): JPromiseServiceWorkerRegistration; overload; { NewObject }

    function getRegistration: JPromise; overload; { NewObject }
    function getRegistration(clientURL: String): JPromise; overload; { NewObject }
    function getRegistrations: JPromiseServiceWorkerRegistrations; overload; { NewObject }

    procedure startMessages;

    property controller: JServiceWorker;
    class property ready: JServiceWorkerRegistration; // read only
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

  JClientType = String;
  JClientTypeHelper = strict helper for JClientType
    const Window = 'window';
    const Worker = 'worker';
    const SharedWorker = 'sharedworker';
    const All = 'all';
  end;

  // Exposed = ServiceWorker
  JClient = class external 'Client'
  public
    property url: String;
    property frameType: JFrameType;
    property id: String;
    property &type: JClientType;

    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of Variant); overload;
    procedure postMessage(message: Variant; options: JPostMessageOptions); overload;
  end;

  JClientQueryOptions = class external 'ClientQueryOptions'
  public
    includeUncontrolled: Boolean;
    &type: JClientType;
  end;

  JWindowClient = class external;

  TOnFulFilledWindowClient = procedure(response: array of JWindowClient);

  JPromiseWindowClient = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFilledWindowClient; reject: TOnRejected));
    class function resolve(value: array of JWindowClient): JPromiseWindowClient;

    function &then(onFulfilled: TOnFulFilledWindowClient): JPromiseWindowClient; overload;
    function &then(onFulfilled: TOnFulFilledWindowClient; onRejected: TOnRejected): JPromiseWindowClient; overload;
  end;

  // Exposed = ServiceWorker
  JWindowClient = class external 'WindowClient' (JClient)
  public
    function focus: JPromiseWindowClient; { NewObject }
    function navigate(url: String): JPromiseWindowClient; { NewObject }

    property visibilityState: JVisibilityState;
    property focused: Boolean;
  end;

  TOnFulFillClients = procedure(response: array of JClient);

  JPromiseClients = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFillClients; reject: TOnRejected));
    class function resolve(value: array of JClient): JPromiseClients;

    function &then(onFulfilled: TOnFulFillClients): JPromiseClients; overload;
    function &then(onFulfilled: TOnFulFillClients; onRejected: TOnRejected): JPromiseClients; overload;
  end;

  // Exposed = ServiceWorker
  JClients = class external 'Clients'
  public
    function get(id: String): JPromise; { NewObject }
    function matchAll: JPromiseClients; overload; { NewObject }
    function matchAll(options: JClientQueryOptions): JPromiseClients; overload; { NewObject }
    function openWindow(url: String): JPromiseWindowClient; { NewObject }
    function claim: JPromiseVoid; { NewObject }
  end;

  // Global = (Worker, ServiceWorker), Exposed = ServiceWorker
  JServiceWorkerGlobalScope = partial class external 'ServiceWorkerGlobalScope' (JWorkerGlobalScope)
  public
    oninstall: TEventHandler;
    onactivate: TEventHandler;
    onfetch: TEventHandler;
    onmessage: TEventHandler;
		onmessageerror: TEventHandler;

    function skipWaiting: JPromiseVoid; { NewObject }

    class property clients: JClients; { SameObject }
    class property registration: JServiceWorkerRegistration; { SameObject }
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
    preloadResponse: JPromise;
    clientId: String;
    resultingClientId: String;
    replacesClientId: String;
  end;

  TOnFulFillResponse = procedure(response: JResponse);

  JPromiseResponse = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFillResponse; reject: TOnRejected));
    class function resolve(value: JResponse): JPromiseResponse;

    function &then(onFulfilled: TOnFulFillResponse): JPromiseResponse; overload;
    function &then(onFulfilled: TOnFulFillResponse; onRejected: TOnRejected): JPromiseResponse; overload;
  end;

  // Exposed = ServiceWorker
  JFetchEvent = class external 'FetchEvent' (JExtendableEvent)
  public
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JFetchEventInit); overload;
    procedure respondWith(r: JPromiseResponse);

    class property request: JRequest; { SameObject }
    property preloadResponse: JPromise;
    property clientId: String;
    property resultingClientId: String;
    property replacesClientId: String;
  end;

  JExtendableMessageEventInit = class external 'ExtendableMessageEventInit' (JExtendableEventInit)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    source: Variant; { SameObject }
    sourceAsMessagePort: JMessagePort; external 'source';
    sourceAsServiceWorker: JServiceWorker; external 'source';
    sourceAsClient: JClient; external 'source';
    ports: array of JMessagePort;
  end;

  // Exposed=ServiceWorker
  JExtendableMessageEvent = class external 'ExtendableMessageEvent' (JExtendableEvent)
  public
    data: Variant;
    origin: String;
    lastEventId: String;
    sourceAsMessagePort: JMessagePort; external 'source';
    sourceAsServiceWorker: JServiceWorker; external 'source';
    sourceAsClient: JClient; external 'source';
    constructor Create(&type: String; eventInitDict: JExtendableMessageEventInit);

    property ports: array of JMessagePort; // read only
  end;

  JCacheQueryOptions = class external 'CacheQueryOptions'
  public
    ignoreSearch: Boolean;
    ignoreMethod: Boolean;
    ignoreVary: Boolean;
  end;

  TOnFulFillResponses = procedure(response: array of JResponse);

  JPromiseResponses = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFillResponses; reject: TOnRejected));
    class function resolve(value: array of JResponse): JPromiseResponses;

    function &then(onFulfilled: TOnFulFillResponses): JPromiseResponses; overload;
    function &then(onFulfilled: TOnFulFillResponses; onRejected: TOnRejected): JPromiseResponses; overload;
  end;

  // SecureContext, Exposed = (Window, Worker)
  JCache = class external 'Cache'
  public
    function match(request: JRequest): JPromise; overload; { NewObject }
    function match(request: String): JPromise; overload; { NewObject }
    function match(request: JRequest; options: JCacheQueryOptions): JPromise; overload; { NewObject }
    function match(request: String; options: JCacheQueryOptions): JPromise; overload; { NewObject }
    function matchAll: JPromiseResponses; overload; { NewObject }
    function matchAll(request: JRequest): JPromiseResponses; overload; { NewObject }
    function matchAll(request: String): JPromiseResponses; overload; { NewObject }
    function matchAll(request: JRequest; options: JCacheQueryOptions): JPromiseResponses; overload; { NewObject }
    function matchAll(request: String; options: JCacheQueryOptions): JPromiseResponses; overload; { NewObject }
    function add(request: JRequest): JPromiseVoid; overload; { NewObject }
    function add(request: String): JPromiseVoid; overload; { NewObject }
    function addAll(requests: array of JRequest): JPromiseVoid; overload; { NewObject }
    function addAll(requests: array of String): JPromiseVoid; overload; { NewObject }
    function put(request: JRequest; response: JResponse): JPromiseVoid; overload; { NewObject }
    function put(request: String; response: JResponse): JPromiseVoid; overload; { NewObject }
    function delete(request: JRequest): JPromiseBoolean; overload; { NewObject }
    function delete(request: String): JPromiseBoolean; overload; { NewObject }
    function delete(request: JRequest; options: JCacheQueryOptions): JPromiseBoolean; overload; { NewObject }
    function delete(request: String; options: JCacheQueryOptions): JPromiseBoolean; overload; { NewObject }
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

  TOnFulFillCache = procedure(response: JCache);

  JPromiseCache = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFillCache; reject: TOnRejected));
    class function resolve(value: JCache): JPromiseCache;

    function &then(onFulfilled: TOnFulFillCache): JPromiseCache; overload;
    function &then(onFulfilled: TOnFulFillCache; onRejected: TOnRejected): JPromiseCache; overload;
  end;

  JMultiCacheQueryOptions = class external 'MultiCacheQueryOptions' (JCacheQueryOptions)
  public
    cacheName: String;
  end;

  // SecureContext, Exposed = (Window, Worker)
  JCacheStorage = class external 'CacheStorage'
  public
    function match(request: JRequest): JPromise; overload; { NewObject }
    function match(request: String): JPromise; overload; { NewObject }
    function match(request: JRequest; options: JMultiCacheQueryOptions): JPromise; overload; { NewObject }
    function match(request: String; options: JMultiCacheQueryOptions): JPromise; overload; { NewObject }
    function has(cacheName: String): JPromiseBoolean; { NewObject }
    function open(cacheName: String): JPromiseCache; { NewObject }
    function delete(cacheName: String): JPromiseBoolean; { NewObject }
    function keys: JPromiseStrings; { NewObject }
  end;

  JWorkerNavigator = partial class external 'WorkerNavigator'
  public
    class property serviceWorker: JServiceWorkerContainer; { SecureContext,SameObject }
  end;

  JNavigator = partial class external 'Navigator'
  public
    class property serviceWorker: JServiceWorkerContainer; { SecureContext,SameObject }
  end;

  JWindowOrWorkerGlobalScope = partial class external 'WindowOrWorkerGlobalScope'
  public
    caches: JCacheStorage; { SecureContext,SameObject }
  end;