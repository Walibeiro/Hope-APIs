unit Mozilla.ServiceWorkerGlobalScope;

interface

type
  // Global=( Worker , ServiceWorker),Exposed=ServiceWorker
  JServiceWorkerGlobalScope = class external 'ServiceWorkerGlobalScope' (JWorkerGlobalScope)
  public
    clients: JClients; { SameObject } 
    registration: JServiceWorkerRegistration; { SameObject } 
    oninstall: JEventHandler;
    onactivate: JEventHandler;
    onfetch: JEventHandler;
    onmessage: JEventHandler;
    onpush: JEventHandler;
    onpushsubscriptionchange: JEventHandler;
    function skipWaiting: void; { Throws,NewObject } 
  end;

implementation

end.
