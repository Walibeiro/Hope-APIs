unit Mozilla.Cache;

interface

type
  // Exposed=( Window , Worker),Func=mozilla::dom::cache::Cache::PrefEnabled
  JCache = class external 'Cache'
  public
    function match(request: JRequestInfo): Response; overload; { NewObject } 
    function match(request: JRequestInfo; options: JCacheQueryOptions): Response; overload; { NewObject } 
    function matchAll: array of Response; overload; { NewObject } 
    function matchAll(request: JRequestInfo): array of Response; overload; { NewObject } 
    function matchAll(request: JRequestInfo; options: JCacheQueryOptions): array of Response; overload; { NewObject } 
    function add(request: JRequestInfo): void; { NewObject } 
    function addAll(requests: array of JRequestInfo): void; { NewObject } 
    function put(request: JRequestInfo; response: JResponse): void; { NewObject } 
    function delete(request: JRequestInfo): boolean; overload; { NewObject } 
    function delete(request: JRequestInfo; options: JCacheQueryOptions): boolean; overload; { NewObject } 
    function keys: array of Request; overload; { NewObject } 
    function keys(request: JRequestInfo): array of Request; overload; { NewObject } 
    function keys(request: JRequestInfo; options: JCacheQueryOptions): array of Request; overload; { NewObject } 
  end;

  JCacheQueryOptions = class external 'CacheQueryOptions'
  public
    ignoreSearch: Boolean;
    ignoreMethod: Boolean;
    ignoreVary: Boolean;
    cacheName: String;
  end;

  JCacheBatchOperation = class external 'CacheBatchOperation'
  public
    &type: String;
    request: JRequest;
    response: JResponse;
    options: JCacheQueryOptions;
  end;

implementation

end.
