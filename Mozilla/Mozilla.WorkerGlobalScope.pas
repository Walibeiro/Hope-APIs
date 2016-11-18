unit Mozilla.WorkerGlobalScope;

interface

type
  // Exposed=( Worker)
  JWorkerGlobalScope = class external 'WorkerGlobalScope' (JEventTarget)
  public
    self: JWorkerGlobalScope; { Constant,Cached } 
    location: JWorkerLocation;
    onerror: JOnErrorEventHandler;
    onoffline: JEventHandler;
    ononline: JEventHandler;
    navigator: JWorkerNavigator;
    caches: JCacheStorage; { Throws,Func=mozilla::dom::cache::CacheStorage::PrefEnabled,SameObject } 
    performance: JPerformance; { Constant,Cached } 
    procedure close; { Throws } 
    procedure importScripts(urls: String); { Throws } 
    procedure dump; overload;
    procedure dump(str: String); overload;
  end;

implementation

end.
