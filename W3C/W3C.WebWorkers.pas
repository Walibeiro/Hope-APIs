unit W3C.WebWorkers;

interface

uses
  W3C.DOM4, W3C.Html5, W3C.WebMessaging;

type
  // Exposed = Worker
  JWorkerNavigator = partial class external 'WorkerNavigator';

  // Exposed = Worker
  JWorkerLocation = class external 'WorkerLocation';

  // Exposed = Worker
  JWorkerGlobalScope = partial class external 'WorkerGlobalScope' (JEventTarget)
  public
    self: JWorkerGlobalScope;
    location: JWorkerLocation;
    onerror: TOnErrorEventHandler;
    onlanguagechange: TEventHandler;
    onoffline: TEventHandler;
    ononline: TEventHandler;
    navigator: JWorkerNavigator;
    procedure close;
    procedure importScripts(urls: String);
  end;

  // Global = (Worker, DedicatedWorker), Exposed = DedicatedWorker
  JDedicatedWorkerGlobalScope = class external 'DedicatedWorkerGlobalScope' (JWorkerGlobalScope)
  public
    onmessage: TEventHandler;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of JWindowProxy); overload;
    procedure postMessage(message: Variant; transfer: array of JMessagePort); overload;
  end;

  JApplicationCache = partial class external 'ApplicationCache' (JEventTarget)
  const
    UNCACHED: Integer = 0;
    IDLE: Integer = 1;
    CHECKING: Integer = 2;
    DOWNLOADING: Integer = 3;
    UPDATEREADY: Integer = 4;
    OBSOLETE: Integer = 5;
  public
    status: Integer;
    onchecking: TEventHandler;
    onerror: TEventHandler;
    onnoupdate: TEventHandler;
    ondownloading: TEventHandler;
    onprogress: TEventHandler;
    onupdateready: TEventHandler;
    oncached: TEventHandler;
    onobsolete: TEventHandler;
    procedure update;
    procedure abort;
    procedure swapCache;
  end;

  // Global = (Worker, SharedWorker), Exposed = SharedWorker
  JSharedWorkerGlobalScope = class external 'SharedWorkerGlobalScope' (JWorkerGlobalScope)
  public
    name: String;
    applicationCache: JApplicationCache;
    onconnect: TEventHandler;
  end;

  // NoInterfaceObject, Exposed = (Window, Worker)
  JAbstractWorker = class external 'AbstractWorker'
  public
    onerror: TEventHandler;
  end;

  // Exposed = (Window, Worker)
  JWorker = class external 'Worker' (JEventTarget)
  public
    onmessage: TEventHandler;
    constructor Create(scriptURL: String);
    procedure terminate;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of JWindowProxy); overload;
    procedure postMessage(message: Variant; transfer: array of JMessagePort); overload;
  end;

  // Exposed = (Window, Worker)
  JSharedWorker = class external 'SharedWorker' (JEventTarget)
  public
    port: JMessagePort;
    constructor Create(scriptURL: String); overload;
    constructor Create(scriptURL, Name: String); overload;
  end;