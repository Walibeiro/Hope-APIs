unit Mozilla.Clients;

interface

type
  // Exposed=ServiceWorker
  JClients = class external 'Clients'
  public
    function get(id: String): any; { NewObject } 
    function matchAll: array of Client; overload; { NewObject } 
    function matchAll(options: JClientQueryOptions): array of Client; overload; { NewObject } 
    function openWindow(url: JUSVString): WindowClient; { NewObject,Func=mozilla::dom::ServiceWorkerGlobalScope::OpenWindowEnabled } 
    function claim: void; { NewObject } 
  end;

  JClientQueryOptions = class external 'ClientQueryOptions'
  public
    includeUncontrolled: Boolean;
    &type: JClientType;
  end;

  JClientType = (ctWindow, ctWorker, ctSharedworker, ctAll);

implementation

end.
