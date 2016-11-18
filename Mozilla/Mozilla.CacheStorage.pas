unit Mozilla.CacheStorage;

interface

type
  // Exposed=( Window , Worker),ChromeConstructor( CacheStorageNamespace namespace , Principal principal),Func=mozilla::dom::cache::CacheStorage::PrefEnabled
  JCacheStorage = class external 'CacheStorage'
  public
    function match(request: JRequestInfo): Response; overload; { NewObject } 
    function match(request: JRequestInfo; options: JCacheQueryOptions): Response; overload; { NewObject } 
    function has(cacheName: String): boolean; { NewObject } 
    function open(cacheName: String): Cache; { NewObject } 
    function delete(cacheName: String): boolean; { NewObject } 
    function keys: array of DOMString; { NewObject } 
  end;

  JCacheStorageNamespace = (csnContent, csnChrome);

implementation

end.
